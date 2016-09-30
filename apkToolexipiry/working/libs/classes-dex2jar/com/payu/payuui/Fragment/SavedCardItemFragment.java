package com.payu.payuui.Fragment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.payu.india.Model.StoredCard;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.payuui.R;
import com.payu.payuui.SdkuiUtil.SdkUIConstants;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.HashMap;

public final class SavedCardItemFragment extends Fragment {
    private EditText cvvEditText;
    private TextView cvvTextView;
    private CheckBox enableOneClickPayment;
    private Boolean isCvvValid;
    private TextView issuingBankDownText;
    private String issuingBankStatus;
    private PayuUtils mPayuUtils;
    private StoredCard mStoredCard;
    private ViewPager mViewPager;
    HashMap<String, String> oneClickCardTokens;
    private Boolean oneClickPayment;
    private int position;
    private int storeOneClickHash;

    public SavedCardItemFragment() {
        this.isCvvValid = Boolean.valueOf(false);
    }

    static Drawable getDrawableUI(Context context, int i) {
        return VERSION.SDK_INT < 21 ? context.getResources().getDrawable(i) : context.getResources().getDrawable(i, context.getTheme());
    }

    private int getIssuerImage(String str) {
        int i = -1;
        if (VERSION.SDK_INT < 21) {
            switch (str.hashCode()) {
                case -1553624974:
                    if (str.equals(PayuConstants.MASTERCARD)) {
                        i = 4;
                        break;
                    }
                    break;
                case 73257:
                    if (str.equals(PayuConstants.JCB)) {
                        i = 7;
                        break;
                    }
                    break;
                case 2012639:
                    if (str.equals(PayuConstants.AMEX)) {
                        i = 5;
                        break;
                    }
                    break;
                case 2098441:
                    if (str.equals(PayuConstants.DINR)) {
                        i = 6;
                        break;
                    }
                    break;
                case 2548734:
                    if (str.equals(PayuConstants.SMAE)) {
                        i = 8;
                        break;
                    }
                    break;
                case 2634817:
                    if (str.equals(PayuConstants.VISA)) {
                        i = 0;
                        break;
                    }
                    break;
                case 72205995:
                    if (str.equals(PayuConstants.LASER)) {
                        i = 1;
                        break;
                    }
                    break;
                case 78339941:
                    if (str.equals(PayuConstants.RUPAY)) {
                        i = 9;
                        break;
                    }
                    break;
                case 1055811561:
                    if (str.equals(PayuConstants.DISCOVER)) {
                        i = 2;
                        break;
                    }
                    break;
                case 1545480463:
                    if (str.equals(SdkUIConstants.MAESTRO)) {
                        i = 3;
                        break;
                    }
                    break;
            }
            switch (i) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    return R.drawable.logo_visa;
                case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                    return R.drawable.laser;
                case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                    return R.drawable.discover;
                case com.payu.testapp.R.styleable.WaitingDots_autoplay /*3*/:
                    return R.drawable.mas_icon;
                case com.payu.testapp.R.styleable.View_theme /*4*/:
                    return R.drawable.mc_icon;
                case com.payu.testapp.R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                    return R.drawable.amex;
                case com.payu.testapp.R.styleable.Toolbar_contentInsetEnd /*6*/:
                    return R.drawable.diner;
                case com.payu.testapp.R.styleable.Toolbar_contentInsetLeft /*7*/:
                    return R.drawable.jcb;
                case com.payu.testapp.R.styleable.Toolbar_contentInsetRight /*8*/:
                    return R.drawable.maestro;
                case com.payu.testapp.R.styleable.Toolbar_popupTheme /*9*/:
                    return R.drawable.rupay;
                default:
                    return 0;
            }
        }
        switch (str.hashCode()) {
            case -1553624974:
                if (str.equals(PayuConstants.MASTERCARD)) {
                    i = 4;
                    break;
                }
                break;
            case 73257:
                if (str.equals(PayuConstants.JCB)) {
                    i = 7;
                    break;
                }
                break;
            case 2012639:
                if (str.equals(PayuConstants.AMEX)) {
                    i = 5;
                    break;
                }
                break;
            case 2098441:
                if (str.equals(PayuConstants.DINR)) {
                    i = 6;
                    break;
                }
                break;
            case 2548734:
                if (str.equals(PayuConstants.SMAE)) {
                    i = 8;
                    break;
                }
                break;
            case 2634817:
                if (str.equals(PayuConstants.VISA)) {
                    i = 0;
                    break;
                }
                break;
            case 72205995:
                if (str.equals(PayuConstants.LASER)) {
                    i = 1;
                    break;
                }
                break;
            case 78339941:
                if (str.equals(PayuConstants.RUPAY)) {
                    i = 9;
                    break;
                }
                break;
            case 1055811561:
                if (str.equals(PayuConstants.DISCOVER)) {
                    i = 2;
                    break;
                }
                break;
            case 1545480463:
                if (str.equals(SdkUIConstants.MAESTRO)) {
                    i = 3;
                    break;
                }
                break;
        }
        switch (i) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                return R.drawable.logo_visa;
            case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                return R.drawable.laser;
            case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                return R.drawable.discover;
            case com.payu.testapp.R.styleable.WaitingDots_autoplay /*3*/:
                return R.drawable.mas_icon;
            case com.payu.testapp.R.styleable.View_theme /*4*/:
                return R.drawable.mc_icon;
            case com.payu.testapp.R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                return R.drawable.amex;
            case com.payu.testapp.R.styleable.Toolbar_contentInsetEnd /*6*/:
                return R.drawable.diner;
            case com.payu.testapp.R.styleable.Toolbar_contentInsetLeft /*7*/:
                return R.drawable.jcb;
            case com.payu.testapp.R.styleable.Toolbar_contentInsetRight /*8*/:
                return R.drawable.maestro;
            case com.payu.testapp.R.styleable.Toolbar_popupTheme /*9*/:
                return R.drawable.rupay;
            default:
                return 0;
        }
    }

    private int getIssuingBankImage(String str) {
        int identifier = getResources().getIdentifier(str.toLowerCase(), "drawable", getActivity().getPackageName());
        return identifier == 0 ? 0 : identifier;
    }

    public Boolean cvvValidation() {
        PayuUtils payuUtils = new PayuUtils();
        if (!(this.cvvEditText == null || this.cvvEditText.getText() == null)) {
            String obj = this.cvvEditText.getText().toString();
            if ((!payuUtils.validateCvv(this.mStoredCard.getCardBin(), obj) || obj.equals(BuildConfig.VERSION_NAME)) && (this.cvvEditText == null || this.cvvEditText.getVisibility() != 8)) {
                this.isCvvValid = Boolean.valueOf(false);
            } else {
                this.isCvvValid = Boolean.valueOf(true);
            }
        }
        return this.isCvvValid;
    }

    public String getCvv() {
        return this.cvvEditText.getText().toString();
    }

    public Boolean isEnableOneClickPaymentChecked() {
        return Boolean.valueOf(this.enableOneClickPayment.isChecked());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.mStoredCard = (StoredCard) arguments.getParcelable(PayuConstants.STORED_CARD);
        this.issuingBankStatus = arguments.getString(SdkUIConstants.ISSUING_BANK_STATUS);
        this.oneClickPayment = Boolean.valueOf(arguments.getBoolean(PayuConstants.ONE_CLICK_PAYMENT));
        this.position = arguments.getInt(SdkUIConstants.POSITION);
        this.storeOneClickHash = arguments.getInt(PayuConstants.STORE_ONE_CLICK_HASH);
        this.oneClickCardTokens = (HashMap) arguments.getSerializable(PayuConstants.ONE_CLICK_CARD_TOKENS);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.layout_saved_card, null);
        this.mViewPager = (ViewPager) viewGroup;
        this.issuingBankDownText = (TextView) inflate.findViewById(R.id.text_view_saved_card_bank_down_error);
        this.mPayuUtils = new PayuUtils();
        this.cvvEditText = (EditText) inflate.findViewById(R.id.edit_text_cvv);
        this.enableOneClickPayment = (CheckBox) inflate.findViewById(R.id.check_box_save_card_enable_one_click_payment);
        this.cvvTextView = (TextView) inflate.findViewById(R.id.cvv_text_view);
        if (this.mStoredCard.getCardBrand().equals(PayuConstants.AMEX)) {
            this.cvvEditText.setFilters(new InputFilter[]{new LengthFilter(4)});
        }
        if (this.storeOneClickHash == 1 && this.mStoredCard.getEnableOneClickPayment() == 1 && this.mStoredCard.getOneTapCard() == 1) {
            this.cvvEditText.setVisibility(8);
            this.enableOneClickPayment.setVisibility(8);
            this.cvvTextView.setText("Click Pay Now to Pay through this card");
        } else if (this.storeOneClickHash == 2 && this.mStoredCard.getEnableOneClickPayment() == 1 && !this.mPayuUtils.getFromSharedPreferences(getActivity(), this.mStoredCard.getCardToken()).contentEquals(PayuConstants.DEFAULT)) {
            this.cvvEditText.setVisibility(8);
            this.enableOneClickPayment.setVisibility(8);
            this.cvvTextView.setText("Click Pay Now to Pay through this card");
        } else if (this.storeOneClickHash == 1 || this.storeOneClickHash == 2) {
            this.enableOneClickPayment.setVisibility(0);
        } else if (this.storeOneClickHash == 0) {
            this.enableOneClickPayment.setVisibility(8);
        }
        if (this.mStoredCard.getMaskedCardNumber().length() == 19 && this.mStoredCard.getCardBrand() == PayuConstants.SMAE) {
            this.cvvEditText.setVisibility(8);
        }
        this.cvvEditText.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String charSequence2 = charSequence.toString();
                ViewPager viewPager = (ViewPager) SavedCardItemFragment.this.getActivity().findViewById(R.id.pager);
                if (SavedCardItemFragment.this.position != SavedCardItemFragment.this.mViewPager.getCurrentItem() || viewPager.getCurrentItem() != 0) {
                    return;
                }
                if ((!SavedCardItemFragment.this.mPayuUtils.validateCvv(SavedCardItemFragment.this.mStoredCard.getCardBin(), charSequence2) || charSequence2.equals(BuildConfig.VERSION_NAME)) && SavedCardItemFragment.this.cvvEditText.getVisibility() != 8) {
                    SavedCardItemFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(false);
                    SavedCardItemFragment.this.isCvvValid = Boolean.valueOf(false);
                    return;
                }
                SavedCardItemFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
                SavedCardItemFragment.this.isCvvValid = Boolean.valueOf(true);
            }
        });
        ((TextView) inflate.findViewById(R.id.text_view_masked_card_number)).setText(this.mStoredCard.getMaskedCardNumber());
        ((TextView) inflate.findViewById(R.id.text_view_card_name)).setText(this.mStoredCard.getCardName());
        ((TextView) inflate.findViewById(R.id.text_view_card_mode)).setText(this.mStoredCard.getCardMode());
        ((ImageView) inflate.findViewById(R.id.card_type_image)).setImageResource(getIssuerImage(this.mStoredCard.getCardBrand()));
        if (getIssuingBankImage(this.mStoredCard.getIssuingBank()) != 0) {
            ((ImageView) inflate.findViewById(R.id.bank_image)).setImageResource(getIssuingBankImage(this.mStoredCard.getIssuingBank()));
        }
        if (this.issuingBankStatus.equals(BuildConfig.VERSION_NAME)) {
            this.issuingBankDownText.setVisibility(8);
            return inflate;
        }
        this.issuingBankDownText.setVisibility(0);
        this.issuingBankDownText.setText(this.issuingBankStatus);
        return inflate;
    }
}
