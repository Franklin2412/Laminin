package com.payu.payuui.Activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.payu.india.Interfaces.PaymentRelatedDetailsListener;
import com.payu.india.Interfaces.ValueAddedServiceApiListener;
import com.payu.india.Model.MerchantWebService;
import com.payu.india.Model.PaymentDetails;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuHashes;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Model.StoredCard;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.india.PostParams.MerchantWebServicePostParams;
import com.payu.india.PostParams.PaymentPostParams;
import com.payu.india.Tasks.GetPaymentRelatedDetailsTask;
import com.payu.india.Tasks.ValueAddedServiceTask;
import com.payu.payuui.Adapter.PagerAdapter;
import com.payu.payuui.Adapter.SavedCardItemFragmentAdapter;
import com.payu.payuui.Fragment.SavedCardItemFragment;
import com.payu.payuui.R;
import com.payu.payuui.SdkuiUtil.SdkUIConstants;
import com.payu.payuui.Widget.SwipeTab.SlidingTabLayout;
import com.payu.payuui.Widget.SwipeTab.SlidingTabLayout.TabColorizer;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;

public class PayUBaseActivity extends FragmentActivity implements PaymentRelatedDetailsListener, ValueAddedServiceApiListener, OnClickListener {
    private TextView amountTextView;
    private String bankCode;
    public Bundle bundle;
    PayuHashes mPayUHashes;
    PaymentParams mPaymentParams;
    PayuResponse mPayuResponse;
    PayuUtils mPayuUtils;
    private PostData mPostData;
    private int mTabCount;
    private ArrayList<PaymentDetails> netBankingList;
    HashMap<String, String> oneClickCardTokens;
    public PagerAdapter pagerAdapter;
    private Button payNowButton;
    ArrayList<String> paymentOptionsList;
    ArrayList<String> paymentOptionsSet;
    PayuConfig payuConfig;
    private PostData postData;
    private ArrayList<StoredCard> savedCards;
    private SlidingTabLayout slidingTabLayout;
    private Boolean smsPermission;
    private Spinner spinnerNetbanking;
    private int storeOneClickHash;
    private TextView transactionIdTextView;
    PayuResponse valueAddedResponse;
    private ValueAddedServiceTask valueAddedServiceTask;
    private ViewPager viewPager;

    /* renamed from: com.payu.payuui.Activity.PayUBaseActivity.2 */
    class AnonymousClass2 implements OnPageChangeListener {
        final /* synthetic */ PayuResponse val$payuResponse;

        AnonymousClass2(PayuResponse payuResponse) {
            this.val$payuResponse = payuResponse;
        }

        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onPageSelected(int r8) {
            /*
            r7 = this;
            r4 = 2;
            r2 = 0;
            r3 = 1;
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.paymentOptionsList;
            r0 = r0.get(r8);
            r0 = (java.lang.String) r0;
            r1 = r0.hashCode();
            switch(r1) {
                case 230940746: goto L_0x0019;
                case 354155769: goto L_0x0023;
                case 955363427: goto L_0x002d;
                case 1775079309: goto L_0x0037;
                default: goto L_0x0014;
            };
        L_0x0014:
            r0 = -1;
        L_0x0015:
            switch(r0) {
                case 0: goto L_0x0041;
                case 1: goto L_0x0149;
                case 2: goto L_0x0160;
                case 3: goto L_0x0170;
                default: goto L_0x0018;
            };
        L_0x0018:
            return;
        L_0x0019:
            r1 = "Saved Cards";
            r0 = r0.equals(r1);
            if (r0 == 0) goto L_0x0014;
        L_0x0021:
            r0 = r2;
            goto L_0x0015;
        L_0x0023:
            r1 = "Credit/Debit Cards";
            r0 = r0.equals(r1);
            if (r0 == 0) goto L_0x0014;
        L_0x002b:
            r0 = r3;
            goto L_0x0015;
        L_0x002d:
            r1 = "Net Banking";
            r0 = r0.equals(r1);
            if (r0 == 0) goto L_0x0014;
        L_0x0035:
            r0 = r4;
            goto L_0x0015;
        L_0x0037:
            r1 = "PayU Money";
            r0 = r0.equals(r1);
            if (r0 == 0) goto L_0x0014;
        L_0x003f:
            r0 = 3;
            goto L_0x0015;
        L_0x0041:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = com.payu.payuui.R.id.pager_saved_card;
            r0 = r0.findViewById(r1);
            r0 = (android.support.v4.view.ViewPager) r0;
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r5 = com.payu.payuui.R.id.pager_saved_card;
            r1 = r1.findViewById(r5);
            r1 = (android.support.v4.view.ViewPager) r1;
            r5 = r1.getCurrentItem();
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r6 = r7.val$payuResponse;
            r6 = r6.getStoredCards();
            r1.savedCards = r6;
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.savedCards;
            r1 = r1.size();
            if (r1 != 0) goto L_0x007a;
        L_0x0070:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r2);
            goto L_0x0018;
        L_0x007a:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.storeOneClickHash;
            if (r1 != r4) goto L_0x00c1;
        L_0x0082:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.savedCards;
            r1 = r1.get(r5);
            r1 = (com.payu.india.Model.StoredCard) r1;
            r1 = r1.getEnableOneClickPayment();
            if (r1 != r3) goto L_0x00c1;
        L_0x0094:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r4 = r1.mPayuUtils;
            r6 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.savedCards;
            r1 = r1.get(r5);
            r1 = (com.payu.india.Model.StoredCard) r1;
            r1 = r1.getCardToken();
            r1 = r4.getFromSharedPreferences(r6, r1);
            r4 = "default";
            r1 = r1.contentEquals(r4);
            if (r1 != 0) goto L_0x00c1;
        L_0x00b6:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r3);
            goto L_0x0018;
        L_0x00c1:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.storeOneClickHash;
            if (r1 != r3) goto L_0x00f8;
        L_0x00c9:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.savedCards;
            r1 = r1.get(r5);
            r1 = (com.payu.india.Model.StoredCard) r1;
            r1 = r1.getEnableOneClickPayment();
            if (r1 != r3) goto L_0x00f8;
        L_0x00db:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.savedCards;
            r1 = r1.get(r5);
            r1 = (com.payu.india.Model.StoredCard) r1;
            r1 = r1.getOneTapCard();
            if (r1 != r3) goto L_0x00f8;
        L_0x00ed:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r3);
            goto L_0x0018;
        L_0x00f8:
            r1 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r1 = r1.savedCards;
            r1 = r1.get(r5);
            r1 = (com.payu.india.Model.StoredCard) r1;
            r1 = r1.getCardType();
            r4 = "SMAE";
            r1 = r1.equals(r4);
            if (r1 == 0) goto L_0x011b;
        L_0x0110:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r3);
            goto L_0x0018;
        L_0x011b:
            r0 = r0.getAdapter();
            r0 = (com.payu.payuui.Adapter.SavedCardItemFragmentAdapter) r0;
            r0 = r0.getFragment(r5);
            if (r0 == 0) goto L_0x013c;
        L_0x0127:
            r1 = r0.cvvValidation();
            r1 = r1.booleanValue();
            if (r1 == 0) goto L_0x013c;
        L_0x0131:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r3);
            goto L_0x0018;
        L_0x013c:
            if (r0 == 0) goto L_0x0018;
        L_0x013e:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r2);
            goto L_0x0018;
        L_0x0149:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.viewPager;
            r0 = r0.getAdapter();
            r0 = (com.payu.payuui.Adapter.PagerAdapter) r0;
            r0 = r0.getFragment(r8);
            r0 = (com.payu.payuui.Fragment.CreditDebitFragment) r0;
            r0.checkData();
            goto L_0x0018;
        L_0x0160:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r3);
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0.hide_keyboard();
            goto L_0x0018;
        L_0x0170:
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0 = r0.payNowButton;
            r0.setEnabled(r3);
            r0 = com.payu.payuui.Activity.PayUBaseActivity.this;
            r0.hide_keyboard();
            goto L_0x0018;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.payu.payuui.Activity.PayUBaseActivity.2.onPageSelected(int):void");
        }
    }

    public PayUBaseActivity() {
        this.paymentOptionsList = new ArrayList();
        this.paymentOptionsSet = new ArrayList();
    }

    private void makePaymentByCreditCard() {
        CheckBox checkBox = (CheckBox) findViewById(R.id.check_box_enable_oneclick_payment);
        if (((CheckBox) findViewById(R.id.check_box_save_card)).isChecked()) {
            this.mPaymentParams.setStoreCard(1);
        } else {
            this.mPaymentParams.setStoreCard(0);
        }
        if (this.storeOneClickHash == 0 || !checkBox.isChecked()) {
            this.mPaymentParams.setEnableOneClickPayment(0);
        } else {
            this.mPaymentParams.setEnableOneClickPayment(1);
        }
        this.mPaymentParams.setCardNumber(((EditText) findViewById(R.id.edit_text_card_number)).getText().toString().replace(" ", BuildConfig.VERSION_NAME));
        this.mPaymentParams.setNameOnCard(((EditText) findViewById(R.id.edit_text_name_on_card)).getText().toString());
        this.mPaymentParams.setExpiryMonth(((EditText) findViewById(R.id.edit_text_expiry_month)).getText().toString());
        this.mPaymentParams.setExpiryYear(((EditText) findViewById(R.id.edit_text_expiry_year)).getText().toString());
        this.mPaymentParams.setCvv(((EditText) findViewById(R.id.edit_text_card_cvv)).getText().toString());
        if (this.mPaymentParams.getStoreCard() == 1 && !((EditText) findViewById(R.id.edit_text_card_label)).getText().toString().equals(BuildConfig.VERSION_NAME)) {
            this.mPaymentParams.setCardName(((EditText) findViewById(R.id.edit_text_card_label)).getText().toString());
        } else if (this.mPaymentParams.getStoreCard() == 1 && ((EditText) findViewById(R.id.edit_text_card_label)).getText().toString().equals(BuildConfig.VERSION_NAME)) {
            this.mPaymentParams.setCardName(((EditText) findViewById(R.id.edit_text_name_on_card)).getText().toString());
        }
        try {
            this.mPostData = new PaymentPostParams(this.mPaymentParams, PayuConstants.CC).getPaymentPostParams();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void makePaymentByNB() {
        this.spinnerNetbanking = (Spinner) findViewById(R.id.spinner);
        this.bankCode = ((PaymentDetails) this.mPayuResponse.getNetBanks().get(this.spinnerNetbanking.getSelectedItemPosition())).getBankCode();
        this.mPaymentParams.setBankCode(this.bankCode);
        try {
            this.mPostData = new PaymentPostParams(this.mPaymentParams, PayuConstants.NB).getPaymentPostParams();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void makePaymentByPayUMoney() {
        try {
            this.mPostData = new PaymentPostParams(this.mPaymentParams, PayuConstants.PAYU_MONEY).getPaymentPostParams();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void makePaymentByStoredCard() {
        ViewPager viewPager = (ViewPager) findViewById(R.id.pager_saved_card);
        StoredCard storedCard = (StoredCard) this.mPayuResponse.getStoredCards().get(viewPager.getCurrentItem());
        SavedCardItemFragment fragment = ((SavedCardItemFragmentAdapter) viewPager.getAdapter()).getFragment(viewPager.getCurrentItem());
        String cvv = fragment.getCvv();
        storedCard.setCvv(cvv);
        this.mPaymentParams.setCardToken(storedCard.getCardToken());
        this.mPaymentParams.setNameOnCard(storedCard.getNameOnCard());
        this.mPaymentParams.setCardName(storedCard.getCardName());
        this.mPaymentParams.setExpiryMonth(storedCard.getExpiryMonth());
        this.mPaymentParams.setExpiryYear(storedCard.getExpiryYear());
        String fromSharedPreferences = (this.storeOneClickHash == 1 && storedCard.getOneTapCard() == 1) ? (String) this.oneClickCardTokens.get(storedCard.getCardToken()) : this.storeOneClickHash == 2 ? this.mPayuUtils.getFromSharedPreferences(this, storedCard.getCardToken()) : PayuConstants.DEFAULT;
        if (storedCard.getEnableOneClickPayment() != 1 || fromSharedPreferences.contentEquals(PayuConstants.DEFAULT)) {
            this.mPaymentParams.setCvv(cvv);
        } else {
            this.mPaymentParams.setCardCvvMerchant(fromSharedPreferences);
        }
        if (fragment.isEnableOneClickPaymentChecked().booleanValue()) {
            this.mPaymentParams.setEnableOneClickPayment(1);
        }
        try {
            this.mPostData = new PaymentPostParams(this.mPaymentParams, PayuConstants.CC).getPaymentPostParams();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setupViewPagerAdapter(PayuResponse payuResponse, PayuResponse payuResponse2) {
        if (payuResponse.isResponseAvailable().booleanValue() && payuResponse.getResponseStatus().getCode() == 0) {
            Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
            if (payuResponse.isStoredCardsAvailable().booleanValue()) {
                this.paymentOptionsList.add(SdkUIConstants.SAVED_CARDS);
            }
            if (payuResponse.isCreditCardAvailable().booleanValue() || payuResponse.isDebitCardAvailable().booleanValue()) {
                this.paymentOptionsList.add(SdkUIConstants.CREDIT_DEBIT_CARDS);
            }
            if (payuResponse.isNetBanksAvailable().booleanValue()) {
                this.paymentOptionsList.add(SdkUIConstants.NET_BANKING);
            }
            if (payuResponse.isPaisaWalletAvailable().booleanValue() && ((PaymentDetails) payuResponse.getPaisaWallet().get(0)).getBankCode().contains(PayuConstants.PAYUW)) {
                this.paymentOptionsList.add(SdkUIConstants.PAYU_MONEY);
            }
        } else {
            Toast.makeText(this, "Something went wrong : " + payuResponse.getResponseStatus().getResult(), 1).show();
        }
        this.pagerAdapter = new PagerAdapter(getSupportFragmentManager(), this.paymentOptionsList, payuResponse, payuResponse2, this.storeOneClickHash, this.oneClickCardTokens);
        this.viewPager = (ViewPager) findViewById(R.id.pager);
        this.viewPager.setAdapter(this.pagerAdapter);
        this.slidingTabLayout = (SlidingTabLayout) findViewById(R.id.sliding_tab_layout);
        this.slidingTabLayout.setDistributeEvenly(false);
        this.slidingTabLayout.setCustomTabColorizer(new TabColorizer() {
            public int getIndicatorColor(int i) {
                return PayUBaseActivity.this.getResources().getColor(R.color.tabsScrollColor);
            }
        });
        this.slidingTabLayout.setViewPager(this.viewPager);
        this.viewPager.addOnPageChangeListener(new AnonymousClass2(payuResponse));
        findViewById(R.id.progress_bar).setVisibility(8);
    }

    public void hide_keyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        View currentFocus = getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(this);
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            setResult(i2, intent);
            finish();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onClick(android.view.View r5) {
        /*
        r4 = this;
        r1 = 1;
        r0 = r5.getId();
        r2 = com.payu.payuui.R.id.button_pay_now;
        if (r0 != r2) goto L_0x0071;
    L_0x0009:
        r0 = 0;
        r4.mPostData = r0;
        r0 = r4.mPaymentParams;
        r2 = r4.mPayUHashes;
        r2 = r2.getPaymentHash();
        r0.setHash(r2);
        r0 = r4.paymentOptionsList;
        r2 = r4.viewPager;
        r2 = r2.getCurrentItem();
        r0 = r0.get(r2);
        r0 = (java.lang.String) r0;
        r2 = r0.hashCode();
        switch(r2) {
            case 68769: goto L_0x009a;
            case 230940746: goto L_0x0072;
            case 354155769: goto L_0x007c;
            case 955363427: goto L_0x0086;
            case 1775079309: goto L_0x00a4;
            case 2135879734: goto L_0x0090;
            default: goto L_0x002c;
        };
    L_0x002c:
        r0 = -1;
    L_0x002d:
        switch(r0) {
            case 0: goto L_0x00ae;
            case 1: goto L_0x00b3;
            case 2: goto L_0x00b8;
            case 3: goto L_0x0030;
            case 4: goto L_0x0030;
            case 5: goto L_0x00bd;
            default: goto L_0x0030;
        };
    L_0x0030:
        r0 = r4.mPostData;
        r0 = r0.getCode();
        if (r0 != 0) goto L_0x00c2;
    L_0x0038:
        r0 = r4.payuConfig;
        r1 = r4.mPostData;
        r1 = r1.getResult();
        r0.setData(r1);
        r0 = new android.content.Intent;
        r1 = com.payu.payuui.Activity.PaymentsActivity.class;
        r0.<init>(r4, r1);
        r1 = "payuConfig";
        r2 = r4.payuConfig;
        r0.putExtra(r1, r2);
        r1 = "store_one_click_hash";
        r2 = r4.storeOneClickHash;
        r0.putExtra(r1, r2);
        r1 = "sms_permission";
        r2 = r4.smsPermission;
        r0.putExtra(r1, r2);
        r1 = "magic_retry";
        r2 = r4.bundle;
        r3 = "magic_retry";
        r2 = r2.getString(r3);
        r0.putExtra(r1, r2);
        r1 = 100;
        r4.startActivityForResult(r0, r1);
    L_0x0071:
        return;
    L_0x0072:
        r2 = "Saved Cards";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x002c;
    L_0x007a:
        r0 = 0;
        goto L_0x002d;
    L_0x007c:
        r2 = "Credit/Debit Cards";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x002c;
    L_0x0084:
        r0 = r1;
        goto L_0x002d;
    L_0x0086:
        r2 = "Net Banking";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x002c;
    L_0x008e:
        r0 = 2;
        goto L_0x002d;
    L_0x0090:
        r2 = "Cash Cards";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x002c;
    L_0x0098:
        r0 = 3;
        goto L_0x002d;
    L_0x009a:
        r2 = "EMI";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x002c;
    L_0x00a2:
        r0 = 4;
        goto L_0x002d;
    L_0x00a4:
        r2 = "PayU Money";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x002c;
    L_0x00ac:
        r0 = 5;
        goto L_0x002d;
    L_0x00ae:
        r4.makePaymentByStoredCard();
        goto L_0x0030;
    L_0x00b3:
        r4.makePaymentByCreditCard();
        goto L_0x0030;
    L_0x00b8:
        r4.makePaymentByNB();
        goto L_0x0030;
    L_0x00bd:
        r4.makePaymentByPayUMoney();
        goto L_0x0030;
    L_0x00c2:
        r0 = r4.mPostData;
        r0 = r0.getResult();
        r0 = android.widget.Toast.makeText(r4, r0, r1);
        r0.show();
        goto L_0x0071;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.payuui.Activity.PayUBaseActivity.onClick(android.view.View):void");
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_payu_base);
        Button button = (Button) findViewById(R.id.button_pay_now);
        this.payNowButton = button;
        button.setOnClickListener(this);
        this.bundle = getIntent().getExtras();
        this.payuConfig = (PayuConfig) this.bundle.getParcelable(PayuConstants.PAYU_CONFIG);
        this.payuConfig = this.payuConfig != null ? this.payuConfig : new PayuConfig();
        this.mPayuUtils = new PayuUtils();
        this.mPaymentParams = (PaymentParams) this.bundle.getParcelable(PayuConstants.PAYMENT_PARAMS);
        this.mPayUHashes = (PayuHashes) this.bundle.getParcelable(PayuConstants.PAYU_HASHES);
        this.storeOneClickHash = this.bundle.getInt(PayuConstants.STORE_ONE_CLICK_HASH);
        this.smsPermission = Boolean.valueOf(this.bundle.getBoolean(PayuConstants.SMS_PERMISSION));
        this.oneClickCardTokens = (HashMap) this.bundle.getSerializable(PayuConstants.ONE_CLICK_CARD_TOKENS);
        TextView textView = (TextView) findViewById(R.id.textview_amount);
        this.amountTextView = textView;
        textView.setText("Amount: " + this.mPaymentParams.getAmount());
        textView = (TextView) findViewById(R.id.textview_txnid);
        this.transactionIdTextView = textView;
        textView.setText("Txnid: " + this.mPaymentParams.getTxnId());
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.PAYMENT_RELATED_DETAILS_FOR_MOBILE_SDK);
        merchantWebService.setVar1(this.mPaymentParams.getUserCredentials() == null ? PayuConstants.DEFAULT : this.mPaymentParams.getUserCredentials());
        merchantWebService.setHash(this.mPayUHashes.getPaymentRelatedDetailsForMobileSdkHash());
        if (bundle == null) {
            PostData merchantWebServicePostParams = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
            if (merchantWebServicePostParams.getCode() == 0) {
                this.payuConfig.setData(merchantWebServicePostParams.getResult());
                findViewById(R.id.progress_bar).setVisibility(0);
                new GetPaymentRelatedDetailsTask(this).execute(new PayuConfig[]{this.payuConfig});
                return;
            }
            Toast.makeText(this, merchantWebServicePostParams.getResult(), 1).show();
            findViewById(R.id.progress_bar).setVisibility(8);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return menuItem.getItemId() == R.id.action_settings ? true : super.onOptionsItemSelected(menuItem);
    }

    public void onPaymentRelatedDetailsResponse(PayuResponse payuResponse) {
        this.mPayuResponse = payuResponse;
        if (this.valueAddedResponse != null) {
            setupViewPagerAdapter(this.mPayuResponse, this.valueAddedResponse);
        }
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.VAS_FOR_MOBILE_SDK);
        merchantWebService.setHash(this.mPayUHashes.getVasForMobileSdkHash());
        merchantWebService.setVar1(PayuConstants.DEFAULT);
        merchantWebService.setVar2(PayuConstants.DEFAULT);
        merchantWebService.setVar3(PayuConstants.DEFAULT);
        PostData merchantWebServicePostParams = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
        this.postData = merchantWebServicePostParams;
        if (merchantWebServicePostParams == null || this.postData.getCode() != 0) {
            Toast.makeText(this, this.postData.getResult(), 1).show();
            return;
        }
        this.payuConfig.setData(this.postData.getResult());
        this.valueAddedServiceTask = new ValueAddedServiceTask(this);
        this.valueAddedServiceTask.execute(new PayuConfig[]{this.payuConfig});
    }

    public void onValueAddedServiceApiResponse(PayuResponse payuResponse) {
        this.valueAddedResponse = payuResponse;
        if (this.mPayuResponse != null) {
            setupViewPagerAdapter(this.mPayuResponse, this.valueAddedResponse);
        }
    }
}
