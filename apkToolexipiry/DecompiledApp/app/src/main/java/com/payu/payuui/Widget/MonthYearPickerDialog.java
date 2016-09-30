package com.payu.payuui.Widget;

import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.NumberPicker;

import java.util.Calendar;

public class MonthYearPickerDialog extends DialogFragment {
    private static final int MAX_YEAR = 2099;
    private OnDateSetListener listener;

    /* renamed from: com.payu.payuui.Widget.MonthYearPickerDialog.2 */
    class AnonymousClass2 implements OnClickListener {
        final /* synthetic */ NumberPicker val$monthPicker;
        final /* synthetic */ NumberPicker val$yearPicker;

        AnonymousClass2(NumberPicker numberPicker, NumberPicker numberPicker2) {
            this.val$monthPicker = numberPicker;
            this.val$yearPicker = numberPicker2;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            MonthYearPickerDialog.this.listener.onDateSet(null, 0, this.val$monthPicker.getValue(), this.val$yearPicker.getValue());
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Builder builder = new Builder(getActivity());
        LayoutInflater layoutInflater = getActivity().getLayoutInflater();
        Calendar instance = Calendar.getInstance();
        View inflate = layoutInflater.inflate(R.layout.date_picker_dialog, null);
        NumberPicker numberPicker = (NumberPicker) inflate.findViewById(R.id.picker_month);
        NumberPicker numberPicker2 = (NumberPicker) inflate.findViewById(R.id.picker_year);
        numberPicker.setMinValue(1);
        numberPicker.setMaxValue(12);
        numberPicker.setValue(instance.get(2) + 1);
        int i = instance.get(1);
        numberPicker2.setMinValue(i);
        numberPicker2.setMaxValue(MAX_YEAR);
        numberPicker2.setValue(i);
        builder.setView(inflate).setPositiveButton(R.string.ok, new AnonymousClass2(numberPicker, numberPicker2)).setNegativeButton(R.string.Cancel, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                MonthYearPickerDialog.this.getDialog().cancel();
            }
        });
        return builder.create();
    }

    public void setListener(OnDateSetListener onDateSetListener) {
        this.listener = onDateSetListener;
    }
}
