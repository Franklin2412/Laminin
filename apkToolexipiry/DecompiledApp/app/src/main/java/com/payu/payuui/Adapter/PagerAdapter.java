package com.payu.payuui.Adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.payu.india.Model.PayuResponse;
import java.util.ArrayList;
import java.util.HashMap;

public class PagerAdapter extends FragmentStatePagerAdapter {
    private HashMap<Integer, Fragment> mPageReference;
    private ArrayList<String> mTitles;
    private HashMap<String, String> oneClickCardTokens;
    private PayuResponse payuResponse;
    private int storeOneClickHash;
    private PayuResponse valueAddedResponse;

    public PagerAdapter(FragmentManager fragmentManager, ArrayList<String> arrayList, PayuResponse payuResponse, PayuResponse payuResponse2, int i, HashMap<String, String> hashMap) {
        super(fragmentManager);
        this.mPageReference = new HashMap();
        this.mTitles = arrayList;
        this.payuResponse = payuResponse;
        this.valueAddedResponse = payuResponse2;
        this.storeOneClickHash = i;
        this.oneClickCardTokens = hashMap;
    }

    public int getCount() {
        return this.mTitles != null ? this.mTitles.size() : 0;
    }

    public Fragment getFragment(int i) {
        return (Fragment) this.mPageReference.get(Integer.valueOf(i));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Fragment getItem(int r5) {
        /*
        r4 = this;
        r1 = new android.os.Bundle;
        r1.<init>();
        r0 = r4.mTitles;
        r0 = r0.get(r5);
        r0 = (java.lang.String) r0;
        r2 = r0.hashCode();
        switch(r2) {
            case 230940746: goto L_0x001a;
            case 354155769: goto L_0x0024;
            case 955363427: goto L_0x002e;
            case 1775079309: goto L_0x0038;
            default: goto L_0x0014;
        };
    L_0x0014:
        r0 = -1;
    L_0x0015:
        switch(r0) {
            case 0: goto L_0x0042;
            case 1: goto L_0x007d;
            case 2: goto L_0x00bd;
            case 3: goto L_0x00e6;
            default: goto L_0x0018;
        };
    L_0x0018:
        r0 = 0;
    L_0x0019:
        return r0;
    L_0x001a:
        r2 = "Saved Cards";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0014;
    L_0x0022:
        r0 = 0;
        goto L_0x0015;
    L_0x0024:
        r2 = "Credit/Debit Cards";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0014;
    L_0x002c:
        r0 = 1;
        goto L_0x0015;
    L_0x002e:
        r2 = "Net Banking";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0014;
    L_0x0036:
        r0 = 2;
        goto L_0x0015;
    L_0x0038:
        r2 = "PayU Money";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0014;
    L_0x0040:
        r0 = 3;
        goto L_0x0015;
    L_0x0042:
        r0 = new com.payu.payuui.Fragment.SavedCardsFragment;
        r0.<init>();
        r2 = "store_card";
        r3 = r4.payuResponse;
        r3 = r3.getStoredCards();
        r1.putParcelableArrayList(r2, r3);
        r2 = "Value Added Services";
        r3 = r4.valueAddedResponse;
        r3 = r3.getIssuingBankStatus();
        r1.putSerializable(r2, r3);
        r2 = "Position";
        r1.putInt(r2, r5);
        r2 = "store_one_click_hash";
        r3 = r4.storeOneClickHash;
        r1.putInt(r2, r3);
        r2 = "one_click_card_tokens";
        r3 = r4.oneClickCardTokens;
        r1.putSerializable(r2, r3);
        r0.setArguments(r1);
        r1 = r4.mPageReference;
        r2 = java.lang.Integer.valueOf(r5);
        r1.put(r2, r0);
        goto L_0x0019;
    L_0x007d:
        r0 = new com.payu.payuui.Fragment.CreditDebitFragment;
        r0.<init>();
        r2 = "creditcard";
        r3 = r4.payuResponse;
        r3 = r3.getCreditCard();
        r1.putParcelableArrayList(r2, r3);
        r2 = "debitcard";
        r3 = r4.payuResponse;
        r3 = r3.getDebitCard();
        r1.putParcelableArrayList(r2, r3);
        r2 = "Value Added Services";
        r3 = r4.valueAddedResponse;
        r3 = r3.getIssuingBankStatus();
        r1.putSerializable(r2, r3);
        r2 = "Position";
        r1.putInt(r2, r5);
        r2 = "store_one_click_hash";
        r3 = r4.storeOneClickHash;
        r1.putInt(r2, r3);
        r0.setArguments(r1);
        r1 = r4.mPageReference;
        r2 = java.lang.Integer.valueOf(r5);
        r1.put(r2, r0);
        goto L_0x0019;
    L_0x00bd:
        r0 = new com.payu.payuui.Fragment.NetBankingFragment;
        r0.<init>();
        r2 = "netbanking";
        r3 = r4.payuResponse;
        r3 = r3.getNetBanks();
        r1.putParcelableArrayList(r2, r3);
        r2 = "Value Added Services";
        r3 = r4.valueAddedResponse;
        r3 = r3.getNetBankingDownStatus();
        r1.putSerializable(r2, r3);
        r0.setArguments(r1);
        r1 = r4.mPageReference;
        r2 = java.lang.Integer.valueOf(r5);
        r1.put(r2, r0);
        goto L_0x0019;
    L_0x00e6:
        r0 = new com.payu.payuui.Fragment.PayuMoneyFragment;
        r0.<init>();
        r2 = "PAYU_MONEY";
        r3 = r4.payuResponse;
        r3 = r3.getPaisaWallet();
        r1.putParcelableArrayList(r2, r3);
        r1 = r4.mPageReference;
        r2 = java.lang.Integer.valueOf(r5);
        r1.put(r2, r0);
        goto L_0x0019;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.payuui.Adapter.PagerAdapter.getItem(int):android.support.v4.app.Fragment");
    }

    public CharSequence getPageTitle(int i) {
        return (CharSequence) this.mTitles.get(i);
    }
}
