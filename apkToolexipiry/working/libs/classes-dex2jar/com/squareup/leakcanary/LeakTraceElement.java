package com.squareup.leakcanary;

import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public final class LeakTraceElement implements Serializable {
    public final String className;
    public final Exclusion exclusion;
    public final String extra;
    public final List<String> fields;
    public final Holder holder;
    public final String referenceName;
    public final Type type;

    public enum Holder {
        OBJECT,
        CLASS,
        THREAD,
        ARRAY
    }

    public enum Type {
        INSTANCE_FIELD,
        STATIC_FIELD,
        LOCAL,
        ARRAY_ENTRY
    }

    LeakTraceElement(String str, Type type, Holder holder, String str2, String str3, Exclusion exclusion, List<String> list) {
        this.referenceName = str;
        this.type = type;
        this.holder = holder;
        this.className = str2;
        this.extra = str3;
        this.exclusion = exclusion;
        this.fields = Collections.unmodifiableList(new ArrayList(list));
    }

    public String toDetailedString() {
        r0 = this.holder == Holder.ARRAY ? "* " + "Array of" : this.holder == Holder.CLASS ? "* " + "Class" : "* " + "Instance of";
        r0 = r0 + " " + this.className + "\n";
        String str = r0;
        for (String str2 : this.fields) {
            str = str + "|   " + str2 + "\n";
        }
        return str;
    }

    public String toString() {
        String str = BuildConfig.VERSION_NAME;
        if (this.type == Type.STATIC_FIELD) {
            str = BuildConfig.VERSION_NAME + "static ";
        }
        if (this.holder == Holder.ARRAY || this.holder == Holder.THREAD) {
            str = str + this.holder.name().toLowerCase(Locale.US) + " ";
        }
        str = str + this.className;
        str = this.referenceName != null ? str + "." + this.referenceName : str + " instance";
        if (this.extra != null) {
            str = str + " " + this.extra;
        }
        return this.exclusion != null ? str + " , matching exclusion " + this.exclusion.matching : str;
    }
}
