package com.payu.payuui.Fragment;

import android.app.DatePickerDialog.OnDateSetListener;
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
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.payu.india.Interfaces.GetOfferStatusApiListener;
import com.payu.india.Model.CardStatus;
import com.payu.india.Model.MerchantWebService;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuHashes;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.india.PostParams.MerchantWebServicePostParams;
import com.payu.india.Tasks.GetOfferStatusTask;
import com.payu.payuui.Activity.PayUBaseActivity;
import com.payu.payuui.SdkuiUtil.SdkUIConstants;
import com.payu.payuui.Widget.MonthYearPickerDialog;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.HashMap;

public class CreditDebitFragment extends Fragment implements GetOfferStatusApiListener {
    private Bundle activityBundle;
    private int amexLength;
    private TextView amountText;
    private EditText cardCvvEditText;
    private EditText cardExpiryMonthEditText;
    private EditText cardExpiryYearEditText;
    private ImageView cardImage;
    private String cardName;
    private EditText cardNameEditText;
    private String cardNumber;
    private Boolean cardNumberCheck;
    private EditText cardNumberEditText;
    int cardNumberPosition;
    private String cvv;
    private ImageView cvvImage;
    private OnDateSetListener datePickerListener;
    private CheckBox enableOneClickPaymentCheckBox;
    private String expiryMonth;
    private String expiryYear;
    int flag;
    private Bundle fragmentBundle;
    private int fragmentPosition;
    int globalSpacesAdded;
    private boolean isCardNumberValid;
    private boolean isCvvValid;
    private boolean isExpiryMonthValid;
    private boolean isExpiryYearValid;
    private String issuer;
    private TextView issuingBankDown;
    private LinearLayout mLinearLayout;
    private PaymentParams mPaymentParams;
    private PayuHashes mPayuHashes;
    private MerchantWebService merchantWebService;
    private ImageButton myTestImageButton;
    private String nameOnCard;
    private EditText nameOnCardEditText;
    private PayuConfig payuConfig;
    private PayuUtils payuUtils;
    private PostData postData;
    private CheckBox saveCardCheckBox;
    int storeOneClickHash;
    private HashMap<String, CardStatus> valueAddedHashMap;
    private View view;
    private ViewPager viewpager;

    public CreditDebitFragment() {
        this.isCvvValid = false;
        this.isExpiryMonthValid = false;
        this.isExpiryYearValid = false;
        this.isCardNumberValid = false;
        this.expiryYear = "20";
        this.amexLength = 4;
        this.cardNumberCheck = Boolean.valueOf(false);
        this.cardNumberPosition = 0;
        this.globalSpacesAdded = 0;
        this.flag = 0;
    }

    private int getIssuerImage(String str) {
        int i = -1;
        if (VERSION.SDK_INT < 21) {
            switch (str.hashCode()) {
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
                case 2358594:
                    if (str.equals(PayuConstants.MAES)) {
                        i = 3;
                        break;
                    }
                    break;
                case 2359029:
                    if (str.equals(PayuConstants.MAST)) {
                        i = 4;
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
            case 2358594:
                if (str.equals(PayuConstants.MAES)) {
                    i = 3;
                    break;
                }
                break;
            case 2359029:
                if (str.equals(PayuConstants.MAST)) {
                    i = 4;
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

    private void getOfferStatus() {
        this.merchantWebService = new MerchantWebService();
        this.merchantWebService.setKey(this.mPaymentParams.getKey());
        this.merchantWebService.setCommand(PayuConstants.CHECK_OFFER_STATUS);
        this.merchantWebService.setHash(this.mPayuHashes.getCheckOfferStatusHash());
        this.merchantWebService.setVar1(this.mPaymentParams.getOfferKey());
        this.merchantWebService.setVar2(this.mPaymentParams.getAmount());
        this.merchantWebService.setVar3(PayuConstants.CC);
        this.merchantWebService.setVar4(PayuConstants.CC);
        this.merchantWebService.setVar5(this.cardNumberEditText.getText().toString().replace(" ", BuildConfig.VERSION_NAME));
        this.merchantWebService.setVar6(this.cardNameEditText.getText().toString());
        this.merchantWebService.setVar7("abc");
        this.merchantWebService.setVar8("abc@gmail.com");
        this.postData = new MerchantWebServicePostParams(this.merchantWebService).getMerchantWebServicePostParams();
        if (this.postData.getCode() == 0) {
            this.payuConfig.setData(this.postData.getResult());
            new GetOfferStatusTask(this).execute(new PayuConfig[]{this.payuConfig});
            return;
        }
        Toast.makeText(getActivity(), this.postData.getResult(), 1).show();
    }

    public void cardValidation() {
        if (!this.payuUtils.validateCardNumber(this.cardNumberEditText.getText().toString().replace(" ", BuildConfig.VERSION_NAME)).booleanValue() && this.cardNumberEditText.length() > 0) {
            this.cardImage.setImageResource(R.drawable.error_icon);
            this.isCardNumberValid = false;
            this.amountText.setText("Amount: " + this.mPaymentParams.getAmount());
        } else if (!this.payuUtils.validateCardNumber(this.cardNumberEditText.getText().toString().replace(" ", BuildConfig.VERSION_NAME)).booleanValue() || this.cardNumberEditText.length() <= 0) {
            this.isCardNumberValid = false;
        } else {
            this.isCardNumberValid = true;
            if (!(this.mPaymentParams.getOfferKey() == null || this.mPaymentParams.getUserCredentials() == null)) {
                getOfferStatus();
            }
        }
        uiValidation();
    }

    public void checkData() {
        if (!(this.cardExpiryYearEditText.getText().toString().equals(BuildConfig.VERSION_NAME) || this.cardExpiryMonthEditText.getText().toString().equals(BuildConfig.VERSION_NAME))) {
            this.isExpiryYearValid = true;
            this.isExpiryMonthValid = true;
        }
        if (!(this.cardCvvEditText.getText().toString().equals(BuildConfig.VERSION_NAME) || this.cardNumberEditText.getText().toString().equals(BuildConfig.VERSION_NAME) || !this.payuUtils.validateCvv(this.cardNumberEditText.getText().toString().replace(" ", BuildConfig.VERSION_NAME), this.cvv))) {
            this.isCvvValid = true;
        }
        cardValidation();
    }

    public void onClickFunction() {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.fragmentBundle = getArguments();
        this.valueAddedHashMap = (HashMap) this.fragmentBundle.getSerializable(SdkUIConstants.VALUE_ADDED);
        this.fragmentPosition = this.fragmentBundle.getInt(SdkUIConstants.POSITION);
        this.storeOneClickHash = this.fragmentBundle.getInt(PayuConstants.STORE_ONE_CLICK_HASH);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.view = layoutInflater.inflate(R.layout.fragment_credit_debit, viewGroup, false);
        this.viewpager = (ViewPager) getActivity().findViewById(R.id.pager);
        this.nameOnCardEditText = (EditText) this.view.findViewById(R.id.edit_text_name_on_card);
        this.cardNumberEditText = (EditText) this.view.findViewById(R.id.edit_text_card_number);
        this.cardCvvEditText = (EditText) this.view.findViewById(R.id.edit_text_card_cvv);
        this.cardExpiryMonthEditText = (EditText) this.view.findViewById(R.id.edit_text_expiry_month);
        this.cardExpiryYearEditText = (EditText) this.view.findViewById(R.id.edit_text_expiry_year);
        this.cardNameEditText = (EditText) this.view.findViewById(R.id.edit_text_card_label);
        this.saveCardCheckBox = (CheckBox) this.view.findViewById(R.id.check_box_save_card);
        this.enableOneClickPaymentCheckBox = (CheckBox) this.view.findViewById(R.id.check_box_enable_oneclick_payment);
        this.cardImage = (ImageView) this.view.findViewById(R.id.image_card_type);
        this.cvvImage = (ImageView) this.view.findViewById(R.id.image_cvv);
        this.mLinearLayout = (LinearLayout) this.view.findViewById(R.id.layout_expiry_date);
        this.issuingBankDown = (TextView) this.view.findViewById(R.id.text_view_issuing_bank_down_error);
        this.amountText = (TextView) getActivity().findViewById(R.id.textview_amount);
        if (VERSION.SDK_INT >= 11) {
            this.cardExpiryMonthEditText.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    MonthYearPickerDialog monthYearPickerDialog = new MonthYearPickerDialog();
                    monthYearPickerDialog.show(CreditDebitFragment.this.getActivity().getSupportFragmentManager(), "DatePicker");
                    monthYearPickerDialog.setListener(CreditDebitFragment.this.datePickerListener);
                }
            });
            this.cardExpiryYearEditText.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    MonthYearPickerDialog monthYearPickerDialog = new MonthYearPickerDialog();
                    monthYearPickerDialog.show(CreditDebitFragment.this.getActivity().getSupportFragmentManager(), "DatePicker");
                    monthYearPickerDialog.setListener(CreditDebitFragment.this.datePickerListener);
                }
            });
            this.datePickerListener = new OnDateSetListener() {
                public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                    CreditDebitFragment.this.cardExpiryYearEditText.setText(BuildConfig.VERSION_NAME + i3);
                    CreditDebitFragment.this.cardExpiryMonthEditText.setText(BuildConfig.VERSION_NAME + i2);
                    if (!(CreditDebitFragment.this.cardExpiryMonthEditText.getText().toString().equals(BuildConfig.VERSION_NAME) || CreditDebitFragment.this.cardExpiryYearEditText.getText().toString().equals(BuildConfig.VERSION_NAME))) {
                        CreditDebitFragment.this.isExpiryYearValid = true;
                        CreditDebitFragment.this.isExpiryMonthValid = true;
                    }
                    if (i3 == 1 && i2 < 2) {
                        CreditDebitFragment.this.isExpiryMonthValid = false;
                    }
                    CreditDebitFragment.this.uiValidation();
                }
            };
        } else {
            this.cardExpiryYearEditText.setFocusableInTouchMode(true);
            this.cardExpiryMonthEditText.setFocusableInTouchMode(true);
            this.cardExpiryYearEditText.addTextChangedListener(new TextWatcher() {
                public void afterTextChanged(Editable editable) {
                    if (editable.length() != 4 || Integer.parseInt(editable.toString()) < 1) {
                        CreditDebitFragment.this.isExpiryYearValid = false;
                    } else {
                        CreditDebitFragment.this.isExpiryYearValid = true;
                    }
                }

                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    charSequence.toString();
                }

                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }
            });
        }
        this.cardNameEditText.setVisibility(8);
        this.enableOneClickPaymentCheckBox.setVisibility(8);
        this.saveCardCheckBox.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (compoundButton.isChecked()) {
                    if (!(CreditDebitFragment.this.storeOneClickHash == 0 || CreditDebitFragment.this.mPaymentParams.getUserCredentials() == null)) {
                        CreditDebitFragment.this.enableOneClickPaymentCheckBox.setVisibility(0);
                    }
                    CreditDebitFragment.this.cardNameEditText.setVisibility(0);
                    return;
                }
                CreditDebitFragment.this.cardNameEditText.setVisibility(8);
                CreditDebitFragment.this.enableOneClickPaymentCheckBox.setVisibility(8);
                CreditDebitFragment.this.enableOneClickPaymentCheckBox.setChecked(false);
            }
        });
        this.activityBundle = ((PayUBaseActivity) getActivity()).bundle;
        this.mPaymentParams = (PaymentParams) this.activityBundle.getParcelable(PayuConstants.PAYMENT_PARAMS);
        this.mPayuHashes = (PayuHashes) this.activityBundle.getParcelable(PayuConstants.PAYU_HASHES);
        this.payuConfig = (PayuConfig) this.activityBundle.getParcelable(PayuConstants.PAYU_CONFIG);
        this.payuConfig = this.payuConfig != null ? this.payuConfig : new PayuConfig();
        if (this.mPaymentParams.getUserCredentials() == null || this.mPaymentParams.getUserCredentials().equals(BuildConfig.VERSION_NAME) || !this.mPaymentParams.getUserCredentials().contains(":")) {
            this.saveCardCheckBox.setVisibility(8);
        } else {
            this.saveCardCheckBox.setVisibility(0);
        }
        this.payuUtils = new PayuUtils();
        this.cardNumberEditText.addTextChangedListener(new TextWatcher() {
            private static final char space = ' ';
            int afterTextPosition;
            int cardLength;
            private String ccNumber;
            int currentPosition;
            int image;
            int len;
            int setSpacesIndex;

            {
                this.setSpacesIndex = 4;
                this.ccNumber = BuildConfig.VERSION_NAME;
                this.len = 0;
            }

            public void afterTextChanged(Editable editable) {
                if (editable.toString().replace(" ", BuildConfig.VERSION_NAME).length() > this.cardLength - (this.cardLength / 5) && editable.toString().replace(" ", BuildConfig.VERSION_NAME).length() >= 6) {
                    editable.delete(this.cardLength - (this.cardLength / 5), editable.length());
                }
                int i = 0;
                while (i < editable.length()) {
                    if (space != editable.charAt(i) || ((i + 1) % 5 == 0 && i + 1 != editable.length())) {
                        i++;
                    } else {
                        editable.delete(i, i + 1);
                    }
                }
                for (i = 4; i < editable.length(); i += 5) {
                    if ("0123456789".indexOf(editable.charAt(i)) >= 0) {
                        editable.insert(i, " ");
                    }
                }
                if (CreditDebitFragment.this.cardNumberEditText.getSelectionStart() > 0 && editable.charAt(CreditDebitFragment.this.cardNumberEditText.getSelectionStart() - 1) == space) {
                    CreditDebitFragment.this.cardNumberEditText.setSelection(CreditDebitFragment.this.cardNumberEditText.getSelectionStart() - 1);
                }
                if (editable.length() >= this.cardLength - 1) {
                    CreditDebitFragment.this.cardValidation();
                    return;
                }
                CreditDebitFragment.this.isCardNumberValid = false;
                if (CreditDebitFragment.this.viewpager.getCurrentItem() == CreditDebitFragment.this.fragmentPosition) {
                    CreditDebitFragment.this.getActivity().findViewById(R.id.button_pay_now).setEnabled(false);
                }
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.length() > 6) {
                    if (CreditDebitFragment.this.issuer == null) {
                        CreditDebitFragment.this.issuer = CreditDebitFragment.this.payuUtils.getIssuer(charSequence.toString().replace(" ", BuildConfig.VERSION_NAME));
                    }
                    if (CreditDebitFragment.this.issuer != null && CreditDebitFragment.this.issuer.length() > 1) {
                        this.image = CreditDebitFragment.this.getIssuerImage(CreditDebitFragment.this.issuer);
                        CreditDebitFragment.this.cardImage.setImageResource(this.image);
                        if (CreditDebitFragment.this.issuer == PayuConstants.AMEX) {
                            CreditDebitFragment.this.cardCvvEditText.setFilters(new InputFilter[]{new LengthFilter(4)});
                        } else {
                            CreditDebitFragment.this.cardCvvEditText.setFilters(new InputFilter[]{new LengthFilter(3)});
                        }
                        if (CreditDebitFragment.this.issuer == PayuConstants.SMAE || CreditDebitFragment.this.issuer == PayuConstants.MAES) {
                            CreditDebitFragment.this.cardNumberEditText.setFilters(new InputFilter[]{new LengthFilter(23)});
                            this.cardLength = 23;
                        } else if (CreditDebitFragment.this.issuer == PayuConstants.AMEX) {
                            CreditDebitFragment.this.cardNumberEditText.setFilters(new InputFilter[]{new LengthFilter(18)});
                            this.cardLength = 18;
                        } else if (CreditDebitFragment.this.issuer == PayuConstants.DINR) {
                            CreditDebitFragment.this.cardNumberEditText.setFilters(new InputFilter[]{new LengthFilter(17)});
                            this.cardLength = 17;
                        } else {
                            CreditDebitFragment.this.cardNumberEditText.setFilters(new InputFilter[]{new LengthFilter(19)});
                            this.cardLength = 20;
                        }
                    }
                } else {
                    CreditDebitFragment.this.issuer = null;
                    ((LinearLayout) CreditDebitFragment.this.view.findViewById(R.id.layout_expiry_cvv)).setVisibility(0);
                    CreditDebitFragment.this.cardImage.setImageResource(R.drawable.icon_card);
                    CreditDebitFragment.this.cardCvvEditText.getText().clear();
                }
                if (charSequence.length() == 7) {
                    if (CreditDebitFragment.this.valueAddedHashMap.get(charSequence.toString().replace(" ", BuildConfig.VERSION_NAME)) == null) {
                        CreditDebitFragment.this.issuingBankDown.setVisibility(8);
                    } else if (((CardStatus) CreditDebitFragment.this.valueAddedHashMap.get(charSequence.toString().replace(" ", BuildConfig.VERSION_NAME))).getStatusCode() == 0) {
                        CreditDebitFragment.this.issuingBankDown.setVisibility(0);
                        CreditDebitFragment.this.issuingBankDown.setText(((CardStatus) CreditDebitFragment.this.valueAddedHashMap.get(charSequence.toString().replace(" ", BuildConfig.VERSION_NAME))).getBankName() + " is temporarily down");
                    } else {
                        CreditDebitFragment.this.issuingBankDown.setVisibility(8);
                    }
                } else if (charSequence.length() < 7) {
                    CreditDebitFragment.this.issuingBankDown.setVisibility(8);
                }
            }
        });
        this.cardNumberEditText.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    CreditDebitFragment.this.cardValidation();
                }
            }
        });
        this.cardCvvEditText.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                charSequence.toString();
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                CreditDebitFragment.this.cvv = charSequence.toString();
                if (CreditDebitFragment.this.payuUtils.validateCvv(CreditDebitFragment.this.cardNumberEditText.getText().toString().replace(" ", BuildConfig.VERSION_NAME), CreditDebitFragment.this.cvv)) {
                    if (VERSION.SDK_INT >= 11) {
                        CreditDebitFragment.this.cvvImage.setAlpha(1.0f);
                    }
                    CreditDebitFragment.this.isCvvValid = true;
                    CreditDebitFragment.this.uiValidation();
                    return;
                }
                if (VERSION.SDK_INT >= 11) {
                    CreditDebitFragment.this.cvvImage.setAlpha(0.5f);
                }
                CreditDebitFragment.this.isCvvValid = false;
                CreditDebitFragment.this.uiValidation();
            }
        });
        return this.view;
    }

    public void onGetOfferStatusApiResponse(PayuResponse payuResponse) {
        if (getActivity() == null || payuResponse.getPayuOffer().getDiscount() == null) {
            this.amountText.setText("Amount: " + this.mPaymentParams.getAmount());
            return;
        }
        Toast.makeText(getActivity(), "Response status: " + payuResponse.getResponseStatus().getResult() + ": Discount = " + payuResponse.getPayuOffer().getDiscount(), 1).show();
        this.amountText.setText("Amount: " + (BuildConfig.VERSION_NAME + Double.valueOf(Double.parseDouble(this.mPaymentParams.getAmount()) - Double.parseDouble(payuResponse.getPayuOffer().getDiscount()))));
    }

    public void uiValidation() {
        if (this.issuer == PayuConstants.SMAE) {
            this.isCvvValid = true;
            this.isExpiryMonthValid = true;
            this.isExpiryYearValid = true;
        }
        if (this.isCardNumberValid && this.isCvvValid && this.isExpiryYearValid && this.isExpiryMonthValid && this.fragmentPosition == this.viewpager.getCurrentItem()) {
            getActivity().findViewById(R.id.button_pay_now).setEnabled(true);
        } else if (this.viewpager.getCurrentItem() == this.fragmentPosition) {
            getActivity().findViewById(R.id.button_pay_now).setEnabled(false);
        }
    }
}
