package com.payu.payuui.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class PayuMoneyFragment extends Fragment {
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100) {
            getActivity().setResult(i2, intent);
            getActivity().finish();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_payu_money, viewGroup, false);
    }
}
