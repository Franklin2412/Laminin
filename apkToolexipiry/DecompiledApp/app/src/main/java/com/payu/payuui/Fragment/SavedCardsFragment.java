package com.payu.payuui.Fragment;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.payu.india.Interfaces.DeleteCardApiListener;
import com.payu.india.Model.CardStatus;
import com.payu.india.Model.MerchantWebService;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuHashes;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Model.StoredCard;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.india.PostParams.MerchantWebServicePostParams;
import com.payu.india.Tasks.DeleteCardTask;
import com.payu.payuui.Activity.PayUBaseActivity;
import com.payu.payuui.Adapter.PagerAdapter;
import com.payu.payuui.Adapter.SavedCardItemFragmentAdapter;
import com.payu.payuui.SdkuiUtil.SdkUIConstants;
import com.payu.payuui.Widget.CirclePageIndicator;
import com.payu.payuui.Widget.ZoomOutPageTransformer;
import java.util.ArrayList;
import java.util.HashMap;

public class SavedCardsFragment extends Fragment implements OnClickListener, DeleteCardApiListener {
    private ImageButton deleteButton;
    private CirclePageIndicator indicator;
    private SavedCardItemFragmentAdapter mAdapter;
    private Bundle mBundle;
    private ViewPager mPager;
    private PaymentParams mPaymentParams;
    private ArrayList<StoredCard> mStoreCards;
    private View mView;
    private HashMap<String, String> oneClickCardTokens;
    private PayuConfig payuConfig;
    private PayuHashes payuHashes;
    private PayuUtils payuUtils;
    private int storeOneClickHash;
    private TextView titleText;
    private HashMap<String, CardStatus> valueAddedHashMap;

    /* renamed from: com.payu.payuui.Fragment.SavedCardsFragment.3 */
    class AnonymousClass3 implements DialogInterface.OnClickListener {
        final /* synthetic */ int val$position;

        AnonymousClass3(int i) {
            this.val$position = i;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            SavedCardsFragment.this.deleteCard((StoredCard) SavedCardsFragment.this.mStoreCards.get(this.val$position));
        }
    }

    private void deleteCard(StoredCard storedCard) {
        this.deleteButton.setEnabled(false);
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.DELETE_USER_CARD);
        merchantWebService.setVar1(this.mPaymentParams.getUserCredentials());
        merchantWebService.setVar2(storedCard.getCardToken());
        merchantWebService.setHash(this.payuHashes.getDeleteCardHash());
        PostData merchantWebServicePostParams = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
        if (merchantWebServicePostParams.getCode() == 0) {
            this.payuConfig.setData(merchantWebServicePostParams.getResult());
            this.payuConfig.setEnvironment(this.payuConfig.getEnvironment());
            new DeleteCardTask(this).execute(new PayuConfig[]{this.payuConfig});
            return;
        }
        Toast.makeText(getActivity(), merchantWebServicePostParams.getResult(), 1).show();
    }

    public void onClick(View view) {
        if (view.getId() == R.id.button_delete) {
            new Builder(getActivity()).setTitle("Delete").setMessage("Are you sure you want to delete this card?").setPositiveButton(17039379, new AnonymousClass3(this.mPager.getCurrentItem())).setNegativeButton(17039369, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).setIcon(17301543).show();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.mStoreCards = arguments.getParcelableArrayList(PayuConstants.STORED_CARD);
        this.valueAddedHashMap = (HashMap) arguments.getSerializable(SdkUIConstants.VALUE_ADDED);
        this.storeOneClickHash = arguments.getInt(PayuConstants.STORE_ONE_CLICK_HASH);
        this.oneClickCardTokens = (HashMap) arguments.getSerializable(PayuConstants.ONE_CLICK_CARD_TOKENS);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mView = layoutInflater.inflate(R.layout.fragment_saved_cards, viewGroup, false);
        this.mBundle = ((PayUBaseActivity) getActivity()).bundle;
        this.payuHashes = (PayuHashes) this.mBundle.getParcelable(PayuConstants.PAYU_HASHES);
        this.mPaymentParams = (PaymentParams) this.mBundle.getParcelable(PayuConstants.PAYMENT_PARAMS);
        this.payuConfig = (PayuConfig) this.mBundle.getParcelable(PayuConstants.PAYU_CONFIG);
        this.payuUtils = new PayuUtils();
        this.mAdapter = new SavedCardItemFragmentAdapter(getChildFragmentManager(), this.mStoreCards, this.valueAddedHashMap, this.storeOneClickHash, this.oneClickCardTokens);
        this.mPager = (ViewPager) this.mView.findViewById(R.id.pager_saved_card);
        this.mPager.setAdapter(this.mAdapter);
        this.mPager.setClipToPadding(false);
        ImageButton imageButton = (ImageButton) this.mView.findViewById(R.id.button_delete);
        this.deleteButton = imageButton;
        imageButton.setOnClickListener(this);
        this.titleText = (TextView) this.mView.findViewById(R.id.edit_text_title);
        this.mPager.setPageTransformer(true, new ZoomOutPageTransformer());
        this.indicator = (CirclePageIndicator) this.mView.findViewById(R.id.indicator);
        this.indicator.setViewPager(this.mPager);
        float f = getResources().getDisplayMetrics().density;
        this.indicator.setBackgroundColor(-1);
        this.indicator.setRadius(f * 3.0f);
        this.indicator.setPageColor(-3750202);
        this.indicator.setFillColor(-13224651);
        this.mPager.addOnPageChangeListener(new OnPageChangeListener() {
            public void onPageScrollStateChanged(int i) {
            }

            public void onPageScrolled(int i, float f, int i2) {
            }

            public void onPageSelected(int i) {
                ViewPager viewPager = (ViewPager) SavedCardsFragment.this.getActivity().findViewById(R.id.pager);
                PagerAdapter pagerAdapter = (PagerAdapter) viewPager.getAdapter();
                if (pagerAdapter != null && pagerAdapter.getPageTitle(viewPager.getCurrentItem()).toString().equals(SdkUIConstants.SAVED_CARDS)) {
                    if (SavedCardsFragment.this.storeOneClickHash == 2 && ((StoredCard) SavedCardsFragment.this.mStoreCards.get(i)).getEnableOneClickPayment() == 1 && !SavedCardsFragment.this.payuUtils.getFromSharedPreferences(SavedCardsFragment.this.getActivity(), ((StoredCard) SavedCardsFragment.this.mStoreCards.get(i)).getCardToken()).contentEquals(PayuConstants.DEFAULT)) {
                        SavedCardsFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
                    } else if (SavedCardsFragment.this.storeOneClickHash == 1 && ((StoredCard) SavedCardsFragment.this.mStoreCards.get(i)).getEnableOneClickPayment() == 1 && ((StoredCard) SavedCardsFragment.this.mStoreCards.get(i)).getOneTapCard() == 1) {
                        SavedCardsFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
                    } else if (((StoredCard) SavedCardsFragment.this.mStoreCards.get(i)).getCardType().equals(PayuConstants.SMAE)) {
                        SavedCardsFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
                    } else {
                        SavedCardItemFragment fragment = ((SavedCardItemFragmentAdapter) SavedCardsFragment.this.mPager.getAdapter()).getFragment(SavedCardsFragment.this.mPager.getCurrentItem());
                        if (fragment == null || !fragment.cvvValidation().booleanValue()) {
                            SavedCardsFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(false);
                        } else {
                            SavedCardsFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
                        }
                    }
                }
            }
        });
        if (this.mStoreCards.size() == 0) {
            this.deleteButton.setVisibility(8);
            this.mPager.setVisibility(8);
            this.indicator.setVisibility(8);
            this.titleText.setText("You have no Stored Cards");
        }
        ViewPager viewPager = (ViewPager) getActivity().findViewById(R.id.pager);
        PagerAdapter pagerAdapter = (PagerAdapter) viewPager.getAdapter();
        if (pagerAdapter != null && pagerAdapter.getPageTitle(viewPager.getCurrentItem()).toString().equals(SdkUIConstants.SAVED_CARDS) && this.mPager.getCurrentItem() == 0) {
            if (this.mStoreCards.size() != 0 && ((StoredCard) this.mStoreCards.get(0)).getCardType().equals(PayuConstants.SMAE)) {
                getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
            }
            if (this.storeOneClickHash == 1 && this.mStoreCards != null && this.mStoreCards.size() != 0 && ((StoredCard) this.mStoreCards.get(0)).getEnableOneClickPayment() == 1 && ((StoredCard) this.mStoreCards.get(0)).getOneTapCard() == 1) {
                getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
            }
            if (!(this.storeOneClickHash != 2 || this.mStoreCards == null || this.mStoreCards.size() == 0 || ((StoredCard) this.mStoreCards.get(0)).getEnableOneClickPayment() != 1 || this.payuUtils.getFromSharedPreferences(getActivity(), ((StoredCard) this.mStoreCards.get(0)).getCardToken()).contentEquals(PayuConstants.DEFAULT))) {
                getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
            }
        }
        return this.mView;
    }

    public void onDeleteCardApiResponse(PayuResponse payuResponse) {
        if (payuResponse.isResponseAvailable().booleanValue()) {
            Toast.makeText(getActivity(), payuResponse.getResponseStatus().getResult(), 1).show();
        }
        if (payuResponse.getResponseStatus().getCode() == 0) {
            ((EditText) this.mView.findViewById(R.id.edit_text_cvv)).getText().clear();
            ((CheckBox) this.mView.findViewById(R.id.check_box_save_card_enable_one_click_payment)).setChecked(false);
            this.mStoreCards.remove(this.mPager.getCurrentItem());
            this.mPager.getAdapter().notifyDataSetChanged();
            if (this.mStoreCards.size() == 0) {
                this.deleteButton.setVisibility(8);
                this.mPager.setVisibility(8);
                this.indicator.setVisibility(8);
                this.titleText.setText("You have no Stored Cards");
                getActivity().findViewById(R.id.button_pay_now).setEnabled(false);
            }
        } else {
            Toast.makeText(getActivity(), "Error While Deleting Card", 1).show();
        }
        this.deleteButton.setEnabled(true);
    }
}
