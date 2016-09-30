package com.squareup.leakcanary.internal;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.squareup.leakcanary.Exclusion;
import com.squareup.leakcanary.LeakTrace;
import com.squareup.leakcanary.LeakTraceElement;
import com.squareup.leakcanary.LeakTraceElement.Holder;
import com.squareup.leakcanary.LeakTraceElement.Type;
import com.squareup.leakcanary.R;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class DisplayLeakAdapter extends BaseAdapter {
    private static final int NORMAL_ROW = 1;
    private static final int TOP_ROW = 0;
    private List<LeakTraceElement> elements;
    private boolean[] opened;
    private String referenceKey;
    private String referenceName;

    DisplayLeakAdapter() {
        this.opened = new boolean[0];
        this.elements = Collections.emptyList();
        this.referenceName = BuildConfig.VERSION_NAME;
    }

    private String elementToHtmlString(LeakTraceElement leakTraceElement, boolean z, boolean z2) {
        String str;
        String str2;
        String str3 = BuildConfig.VERSION_NAME;
        if (leakTraceElement.referenceName == null) {
            str3 = BuildConfig.VERSION_NAME + "leaks ";
        } else if (!z) {
            str3 = BuildConfig.VERSION_NAME + "references ";
        }
        if (leakTraceElement.type == Type.STATIC_FIELD) {
            str3 = str3 + "<font color='#c48a47'>static</font> ";
        }
        if (leakTraceElement.holder == Holder.ARRAY || leakTraceElement.holder == Holder.THREAD) {
            str3 = str3 + "<font color='#f3cf83'>" + leakTraceElement.holder.name().toLowerCase() + "</font> ";
        }
        int lastIndexOf = leakTraceElement.className.lastIndexOf(46);
        if (lastIndexOf == -1) {
            str = BuildConfig.VERSION_NAME;
            str2 = leakTraceElement.className;
        } else {
            str = leakTraceElement.className.substring(0, lastIndexOf + NORMAL_ROW);
            str2 = leakTraceElement.className.substring(lastIndexOf + NORMAL_ROW);
        }
        if (z2) {
            str3 = str3 + "<font color='#919191'>" + str + "</font>";
        }
        str3 = str3 + ("<font color='#ffffff'>" + str2 + "</font>");
        str3 = leakTraceElement.referenceName != null ? str3 + ".<font color='#998bb5'>" + leakTraceElement.referenceName.replaceAll("<", "&lt;").replaceAll(">", "&gt;") + "</font>" : str3 + " <font color='#f3cf83'>instance</font>";
        if (z2 && leakTraceElement.extra != null) {
            str3 = str3 + " <font color='#919191'>" + leakTraceElement.extra + "</font>";
        }
        Exclusion exclusion = leakTraceElement.exclusion;
        if (exclusion == null) {
            return str3;
        }
        if (!z2) {
            return str3 + " (excluded)";
        }
        str3 = str3 + "<br/><br/>Excluded by rule";
        if (exclusion.name != null) {
            str3 = str3 + " <font color='#ffffff'>" + exclusion.name + "</font>";
        }
        str3 = str3 + " matching <font color='#f3cf83'>" + exclusion.matching + "</font>";
        return exclusion.reason != null ? str3 + " because <font color='#f3cf83'>" + exclusion.reason + "</font>" : str3;
    }

    private static <T extends View> T findById(View view, int i) {
        return view.findViewById(i);
    }

    public int getCount() {
        return this.elements.size() + NORMAL_ROW;
    }

    public LeakTraceElement getItem(int i) {
        return getItemViewType(i) == 0 ? null : (LeakTraceElement) this.elements.get(i - 1);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public int getItemViewType(int i) {
        return i == 0 ? 0 : NORMAL_ROW;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = true;
        Context context = viewGroup.getContext();
        if (getItemViewType(i) == 0) {
            if (view == null) {
                view = LayoutInflater.from(context).inflate(R.layout.leak_canary_ref_top_row, viewGroup, false);
            }
            ((TextView) findById(view, R.id.__leak_canary_row_text)).setText(context.getPackageName());
        } else {
            if (view == null) {
                view = LayoutInflater.from(context).inflate(R.layout.leak_canary_ref_row, viewGroup, false);
            }
            TextView textView = (TextView) findById(view, R.id.__leak_canary_row_text);
            boolean z2 = i == NORMAL_ROW;
            if (i != getCount() - 1) {
                z = false;
            }
            String elementToHtmlString = elementToHtmlString(getItem(i), z2, this.opened[i]);
            if (z && !this.referenceName.equals(BuildConfig.VERSION_NAME) && this.opened[i]) {
                elementToHtmlString = elementToHtmlString + " <font color='#919191'>" + this.referenceName + "</font>";
            }
            textView.setText(Html.fromHtml(elementToHtmlString));
            DisplayLeakConnectorView displayLeakConnectorView = (DisplayLeakConnectorView) findById(view, R.id.__leak_canary_row_connector);
            if (z2) {
                displayLeakConnectorView.setType(DisplayLeakConnectorView.Type.START);
            } else if (z) {
                displayLeakConnectorView.setType(DisplayLeakConnectorView.Type.END);
            } else {
                displayLeakConnectorView.setType(DisplayLeakConnectorView.Type.NODE);
            }
            ((MoreDetailsView) findById(view, R.id.__leak_canary_row_more)).setOpened(this.opened[i]);
        }
        return view;
    }

    public int getViewTypeCount() {
        return 2;
    }

    public void toggleRow(int i) {
        this.opened[i] = !this.opened[i];
        notifyDataSetChanged();
    }

    public void update(LeakTrace leakTrace, String str, String str2) {
        if (!str.equals(this.referenceKey)) {
            this.referenceKey = str;
            this.referenceName = str2;
            this.elements = new ArrayList(leakTrace.elements);
            this.opened = new boolean[(this.elements.size() + NORMAL_ROW)];
            notifyDataSetChanged();
        }
    }
}
