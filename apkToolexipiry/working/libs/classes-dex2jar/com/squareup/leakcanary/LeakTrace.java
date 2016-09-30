package com.squareup.leakcanary;

import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class LeakTrace implements Serializable {
    public final List<LeakTraceElement> elements;

    LeakTrace(List<LeakTraceElement> list) {
        this.elements = Collections.unmodifiableList(new ArrayList(list));
    }

    public String toDetailedString() {
        String str = BuildConfig.VERSION_NAME;
        String str2 = str;
        for (LeakTraceElement toDetailedString : this.elements) {
            str2 = str2 + toDetailedString.toDetailedString();
        }
        return str2;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < this.elements.size(); i++) {
            LeakTraceElement leakTraceElement = (LeakTraceElement) this.elements.get(i);
            stringBuilder.append("* ");
            if (i == 0) {
                stringBuilder.append("GC ROOT ");
            } else if (i == this.elements.size() - 1) {
                stringBuilder.append("leaks ");
            } else {
                stringBuilder.append("references ");
            }
            stringBuilder.append(leakTraceElement).append("\n");
        }
        return stringBuilder.toString();
    }
}
