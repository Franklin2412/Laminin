package com.squareup.leakcanary;

import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.Serializable;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class ExcludedRefs implements Serializable {
    public final Map<String, Exclusion> classNames;
    public final Map<String, Map<String, Exclusion>> fieldNameByClassName;
    public final Map<String, Exclusion> rootClassNames;
    public final Map<String, Map<String, Exclusion>> staticFieldNameByClassName;
    public final Map<String, Exclusion> threadNames;

    public interface Builder {
        ExcludedRefs build();

        BuilderWithParams clazz(String str);

        BuilderWithParams instanceField(String str, String str2);

        BuilderWithParams rootClass(String str);

        BuilderWithParams staticField(String str, String str2);

        BuilderWithParams thread(String str);
    }

    public static final class BuilderWithParams implements Builder {
        private final Map<String, ParamsBuilder> classNames;
        private final Map<String, Map<String, ParamsBuilder>> fieldNameByClassName;
        private ParamsBuilder lastParams;
        private final Map<String, ParamsBuilder> rootClassNames;
        private final Map<String, Map<String, ParamsBuilder>> staticFieldNameByClassName;
        private final Map<String, ParamsBuilder> threadNames;

        BuilderWithParams() {
            this.fieldNameByClassName = new LinkedHashMap();
            this.staticFieldNameByClassName = new LinkedHashMap();
            this.threadNames = new LinkedHashMap();
            this.classNames = new LinkedHashMap();
            this.rootClassNames = new LinkedHashMap();
        }

        public BuilderWithParams alwaysExclude() {
            this.lastParams.alwaysExclude = true;
            return this;
        }

        public ExcludedRefs build() {
            return new ExcludedRefs(this);
        }

        public BuilderWithParams clazz(String str) {
            Preconditions.checkNotNull(str, "className");
            this.lastParams = new ParamsBuilder("any subclass of " + str);
            this.classNames.put(str, this.lastParams);
            return this;
        }

        public BuilderWithParams instanceField(String str, String str2) {
            Preconditions.checkNotNull(str, "className");
            Preconditions.checkNotNull(str2, "fieldName");
            Map map = (Map) this.fieldNameByClassName.get(str);
            if (map == null) {
                map = new LinkedHashMap();
                this.fieldNameByClassName.put(str, map);
            }
            this.lastParams = new ParamsBuilder("field " + str + "#" + str2);
            map.put(str2, this.lastParams);
            return this;
        }

        public BuilderWithParams named(String str) {
            this.lastParams.name = str;
            return this;
        }

        public BuilderWithParams reason(String str) {
            this.lastParams.reason = str;
            return this;
        }

        public BuilderWithParams rootClass(String str) {
            Preconditions.checkNotNull(str, "rootClassName");
            this.lastParams = new ParamsBuilder("any GC root subclass of " + str);
            this.rootClassNames.put(str, this.lastParams);
            return this;
        }

        public BuilderWithParams staticField(String str, String str2) {
            Preconditions.checkNotNull(str, "className");
            Preconditions.checkNotNull(str2, "fieldName");
            Map map = (Map) this.staticFieldNameByClassName.get(str);
            if (map == null) {
                map = new LinkedHashMap();
                this.staticFieldNameByClassName.put(str, map);
            }
            this.lastParams = new ParamsBuilder("static field " + str + "#" + str2);
            map.put(str2, this.lastParams);
            return this;
        }

        public BuilderWithParams thread(String str) {
            Preconditions.checkNotNull(str, "threadName");
            this.lastParams = new ParamsBuilder("any threads named " + str);
            this.threadNames.put(str, this.lastParams);
            return this;
        }
    }

    static final class ParamsBuilder {
        boolean alwaysExclude;
        final String matching;
        String name;
        String reason;

        ParamsBuilder(String str) {
            this.matching = str;
        }
    }

    ExcludedRefs(BuilderWithParams builderWithParams) {
        this.fieldNameByClassName = unmodifiableRefStringMap(builderWithParams.fieldNameByClassName);
        this.staticFieldNameByClassName = unmodifiableRefStringMap(builderWithParams.staticFieldNameByClassName);
        this.threadNames = unmodifiableRefMap(builderWithParams.threadNames);
        this.classNames = unmodifiableRefMap(builderWithParams.classNames);
        this.rootClassNames = unmodifiableRefMap(builderWithParams.rootClassNames);
    }

    public static Builder builder() {
        return new BuilderWithParams();
    }

    private Map<String, Exclusion> unmodifiableRefMap(Map<String, ParamsBuilder> map) {
        Map linkedHashMap = new LinkedHashMap();
        for (Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), new Exclusion((ParamsBuilder) entry.getValue()));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    private Map<String, Map<String, Exclusion>> unmodifiableRefStringMap(Map<String, Map<String, ParamsBuilder>> map) {
        Map linkedHashMap = new LinkedHashMap();
        for (Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), unmodifiableRefMap((Map) entry.getValue()));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        String str = BuildConfig.VERSION_NAME;
        for (Entry entry : this.fieldNameByClassName.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = str;
            for (Entry entry2 : ((Map) entry2.getValue()).entrySet()) {
                str3 = str3 + "| Field: " + str2 + "." + ((String) entry2.getKey()) + (((Exclusion) entry2.getValue()).alwaysExclude ? " (always)" : BuildConfig.VERSION_NAME) + "\n";
            }
            str = str3;
        }
        for (Entry entry22 : this.staticFieldNameByClassName.entrySet()) {
            str2 = (String) entry22.getKey();
            str3 = str;
            for (Entry entry222 : ((Map) entry222.getValue()).entrySet()) {
                str3 = str3 + "| Static field: " + str2 + "." + ((String) entry222.getKey()) + (((Exclusion) entry222.getValue()).alwaysExclude ? " (always)" : BuildConfig.VERSION_NAME) + "\n";
            }
            str = str3;
        }
        for (Entry entry2222 : this.threadNames.entrySet()) {
            str = str + "| Thread:" + ((String) entry2222.getKey()) + (((Exclusion) entry2222.getValue()).alwaysExclude ? " (always)" : BuildConfig.VERSION_NAME) + "\n";
        }
        for (Entry entry22222 : this.classNames.entrySet()) {
            str = str + "| Class:" + ((String) entry22222.getKey()) + (((Exclusion) entry22222.getValue()).alwaysExclude ? " (always)" : BuildConfig.VERSION_NAME) + "\n";
        }
        for (Entry entry222222 : this.rootClassNames.entrySet()) {
            str = str + "| Root Class:" + ((String) entry222222.getKey()) + (((Exclusion) entry222222.getValue()).alwaysExclude ? " (always)" : BuildConfig.VERSION_NAME) + "\n";
        }
        return str;
    }
}
