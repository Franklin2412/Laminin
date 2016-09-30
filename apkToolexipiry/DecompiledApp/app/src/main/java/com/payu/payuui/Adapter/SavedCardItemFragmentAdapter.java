package com.payu.payuui.Adapter;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.payu.india.Model.CardStatus;
import com.payu.india.Model.StoredCard;
import com.payu.india.Payu.PayuConstants;
import com.payu.payuui.Fragment.SavedCardItemFragment;
import com.payu.payuui.SdkuiUtil.SdkUIConstants;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;

public class SavedCardItemFragmentAdapter extends FragmentStatePagerAdapter {
    private static HashMap<Integer, SavedCardItemFragment> mPageReferencce;
    String bankStatus;
    Bundle mBundle;
    FragmentManager mFragmentManager;
    HashMap<String, String> mOneClickCardTokens;
    SavedCardItemFragment mSavedCardItemFragment;
    int mStoreOneClickHash;
    ArrayList<StoredCard> mStoredCards;
    HashMap<String, CardStatus> mValueAddedHashMap;

    static {
        mPageReferencce = new HashMap();
    }

    public SavedCardItemFragmentAdapter(FragmentManager fragmentManager, ArrayList<StoredCard> arrayList, HashMap<String, CardStatus> hashMap, int i, HashMap<String, String> hashMap2) {
        super(fragmentManager);
        this.bankStatus = BuildConfig.VERSION_NAME;
        this.mFragmentManager = fragmentManager;
        this.mStoredCards = null;
        this.mStoredCards = arrayList;
        this.mValueAddedHashMap = hashMap;
        this.mStoreOneClickHash = i;
        this.mOneClickCardTokens = hashMap2;
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        super.destroyItem(viewGroup, i, obj);
    }

    public int getCount() {
        return this.mStoredCards != null ? this.mStoredCards.size() : 0;
    }

    public SavedCardItemFragment getFragment(int i) {
        return (SavedCardItemFragment) mPageReferencce.get(Integer.valueOf(i));
    }

    public Fragment getItem(int i) {
        this.mBundle = new Bundle();
        this.mBundle.putParcelable(PayuConstants.STORED_CARD, (Parcelable) this.mStoredCards.get(i));
        if (this.mValueAddedHashMap == null || this.mValueAddedHashMap.get(((StoredCard) this.mStoredCards.get(i)).getCardBin()) == null || ((CardStatus) this.mValueAddedHashMap.get(((StoredCard) this.mStoredCards.get(i)).getCardBin())).getStatusCode() != 0) {
            this.bankStatus = BuildConfig.VERSION_NAME;
        } else {
            this.bankStatus = ((StoredCard) this.mStoredCards.get(i)).getIssuingBank() + " is temporarily down";
        }
        this.mBundle.putString(SdkUIConstants.ISSUING_BANK_STATUS, this.bankStatus);
        this.mBundle.putInt(PayuConstants.STORE_ONE_CLICK_HASH, this.mStoreOneClickHash);
        this.mBundle.putInt(SdkUIConstants.POSITION, i);
        this.mBundle.putSerializable(PayuConstants.ONE_CLICK_CARD_TOKENS, this.mOneClickCardTokens);
        this.mSavedCardItemFragment = new SavedCardItemFragment();
        this.mSavedCardItemFragment.setArguments(this.mBundle);
        if (mPageReferencce.get(Integer.valueOf(i)) != null) {
            mPageReferencce.remove(Integer.valueOf(i));
        }
        mPageReferencce.put(Integer.valueOf(i), this.mSavedCardItemFragment);
        return this.mSavedCardItemFragment;
    }

    public int getItemPosition(Object obj) {
        return -2;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
        if (mPageReferencce.get(Integer.valueOf(i)) != null) {
            mPageReferencce.remove(Integer.valueOf(i));
        }
        mPageReferencce.put(Integer.valueOf(i), (SavedCardItemFragment) fragment);
        return fragment;
    }
}
