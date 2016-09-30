package com.payu.india.PostParams;

import com.payu.india.Model.MerchantWebService;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.india.Payu.PayuUtils;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import org.json.JSONException;
import org.json.JSONObject;

public class MerchantWebServicePostParams extends PayuUtils {
    private MerchantWebService merchantWebService;
    private StringBuilder post;

    private MerchantWebServicePostParams() {
    }

    public MerchantWebServicePostParams(MerchantWebService merchantWebService) {
        this.merchantWebService = merchantWebService;
    }

    public PostData getMerchantWebServicePostParams() {
        this.post = new StringBuilder();
        this.post.append(concatParams(PayuConstants.PAYU_UDID, getUdid()));
        this.post.append(concatParams(PayuConstants.PAYU_IMEI, getImei()));
        if (this.merchantWebService.getKey() == null) {
            return getReturnData(PayuErrors.MANDATORY_PARAM_KEY_IS_MISSING);
        }
        this.post.append(concatParams(MRConstant.KEY, this.merchantWebService.getKey()));
        if (this.merchantWebService.getHash() == null) {
            return getReturnData(PayuErrors.MANDATORY_PARAM_HASH_IS_MISSING);
        }
        this.post.append(concatParams(PayuConstants.HASH, this.merchantWebService.getHash()));
        if (this.merchantWebService.getCommand() == null || !PayuConstants.COMMAND_SET.contains(this.merchantWebService.getCommand())) {
            return getReturnData(PayuErrors.MANDATORY_PARAM_COMMAND_IS_MISSING);
        }
        this.post.append(concatParams(PayuConstants.COMMAND, this.merchantWebService.getCommand()));
        String command = this.merchantWebService.getCommand();
        int i = -1;
        switch (command.hashCode()) {
            case -1642953460:
                if (command.equals(PayuConstants.CHECK_OFFER_STATUS)) {
                    i = 15;
                    break;
                }
                break;
            case -1629601947:
                if (command.equals(PayuConstants.CAPTURE_TRANSACTION)) {
                    i = 7;
                    break;
                }
                break;
            case -1611920419:
                if (command.equals(PayuConstants.PAYMENT_RELATED_DETAILS_FOR_MOBILE_SDK)) {
                    i = 0;
                    break;
                }
                break;
            case -1575164929:
                if (command.equals(PayuConstants.CHECK_IS_DOMESTIC)) {
                    i = 20;
                    break;
                }
                break;
            case -1566387441:
                if (command.equals(PayuConstants.EDIT_USER_CARD)) {
                    i = 23;
                    break;
                }
                break;
            case -1510829279:
                if (command.equals(PayuConstants.COD_CANCEL)) {
                    i = 10;
                    break;
                }
                break;
            case -1101190534:
                if (command.equals(PayuConstants.UPDATE_REQUESTS)) {
                    i = 8;
                    break;
                }
                break;
            case -999218376:
                if (command.equals(PayuConstants.GET_TRANSACTION_DETAILS)) {
                    i = 18;
                    break;
                }
                break;
            case -963056352:
                if (command.equals(PayuConstants.COD_VERIFY)) {
                    i = 9;
                    break;
                }
                break;
            case -612906866:
                if (command.equals(PayuConstants.GET_ISSUING_BANK_STATUS)) {
                    i = 17;
                    break;
                }
                break;
            case -606489918:
                if (command.equals(PayuConstants.SAVE_USER_CARD)) {
                    i = 22;
                    break;
                }
                break;
            case -395237378:
                if (command.equals(PayuConstants.MOBILE_HASH_TEST_WS)) {
                    i = 26;
                    break;
                }
                break;
            case -373410353:
                if (command.equals(PayuConstants.CHECK_PAYMENT)) {
                    i = 4;
                    break;
                }
                break;
            case -369257104:
                if (command.equals(PayuConstants.DELETE_USER_CARD)) {
                    i = 24;
                    break;
                }
                break;
            case -232071064:
                if (command.equals(PayuConstants.CHECK_OFFER_DETAILS)) {
                    i = 28;
                    break;
                }
                break;
            case -74815623:
                if (command.equals(PayuConstants.GET_TDR)) {
                    i = 12;
                    break;
                }
                break;
            case -39017295:
                if (command.equals(PayuConstants.GET_NETBANKING_STATUS)) {
                    i = 16;
                    break;
                }
                break;
            case 398411622:
                if (command.equals(PayuConstants.DELETE_STORE_CARD_CVV)) {
                    i = 25;
                    break;
                }
                break;
            case 699655800:
                if (command.equals(PayuConstants.GET_USER_CARDS)) {
                    i = 21;
                    break;
                }
                break;
            case 777801508:
                if (command.equals(PayuConstants.CHECK_ACTION_STATUS)) {
                    i = 6;
                    break;
                }
                break;
            case 856253253:
                if (command.equals(PayuConstants.GET_HASHES)) {
                    i = 27;
                    break;
                }
                break;
            case 881381098:
                if (command.equals(PayuConstants.CREATE_INVOICE)) {
                    i = 14;
                    break;
                }
                break;
            case 924438902:
                if (command.equals(PayuConstants.GET_MERCHANT_IBIBO_CODES)) {
                    i = 2;
                    break;
                }
                break;
            case 1668556369:
                if (command.equals(PayuConstants.UDF_UPDATE)) {
                    i = 13;
                    break;
                }
                break;
            case 1703878268:
                if (command.equals(PayuConstants.CANCEL_REFUND_TRANSACTION)) {
                    i = 5;
                    break;
                }
                break;
            case 1844660402:
                if (command.equals(PayuConstants.COD_SETTLED)) {
                    i = 11;
                    break;
                }
                break;
            case 1901129290:
                if (command.equals(PayuConstants.VAS_FOR_MOBILE_SDK)) {
                    i = 1;
                    break;
                }
                break;
            case 1976307512:
                if (command.equals(PayuConstants.GET_TRANSACTION_INFO)) {
                    i = 19;
                    break;
                }
                break;
            case 2000756420:
                if (command.equals(PayuConstants.API_GET_EMI_AMOUNT_ACCORDING_INTEREST)) {
                    i = 29;
                    break;
                }
                break;
            case 2082265152:
                if (command.equals(PayuConstants.VERIFY_PAYMENT)) {
                    i = 3;
                    break;
                }
                break;
        }
        switch (i) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1 should be user_credentials (merchant_key:unique_user_id.) to get the merchant information and stored card or default to get only the merchant information");
            case R.styleable.WaitingDots_period /*1*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    this.post.append(this.merchantWebService.getVar2() == null ? concatParams(PayuConstants.VAR2, PayuConstants.DEFAULT) : concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                    this.post.append(this.merchantWebService.getVar2() == null ? concatParams(PayuConstants.VAR3, PayuConstants.DEFAULT) : concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1 Please send var1 as 'default'");
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1 Please send var1 as 'default'");
            case R.styleable.WaitingDots_autoplay /*3*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Transaction id (txnid)if you want to verify more than one transaction please separate them by pipe : ex 6234567|45678987|4567876 ");
            case R.styleable.View_theme /*4*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        if (this.merchantWebService.getVar3() != null) {
                            this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                            this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                            this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                            break;
                        }
                        return getReturnData("Mandatory param var3 is missing var3  should contain the amount which needs to be refunded. Please note that both partial and full refunds are allowed.");
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Request ID which you get while cancel_refund_transaction api");
            case R.styleable.Toolbar_contentInsetLeft /*7*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                        break;
                    }
                    return getReturnData("Mandatory param var2 is missing should be the Token ID(unique token from merchant)");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_contentInsetRight /*8*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        if (this.merchantWebService.getVar3() != null) {
                            if (this.merchantWebService.getVar4() != null) {
                                if (this.merchantWebService.getVar5() != null) {
                                    if (this.merchantWebService.getVar6() != null) {
                                        this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                                        this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                                        this.post.append(concatParams(PayuConstants.VAR4, this.merchantWebService.getVar4()));
                                        this.post.append(concatParams(PayuConstants.VAR5, this.merchantWebService.getVar5()));
                                        this.post.append(concatParams(PayuConstants.VAR6, this.merchantWebService.getVar6()));
                                        break;
                                    }
                                    return getReturnData("Mandatory param var6 is missing var6 should be new status to be set");
                                }
                                return getReturnData("Mandatory param var5 is missing var5should be the Action (cancel/capture/refund)");
                            }
                            return getReturnData("Mandatory param var4 is missing var4 Amount should be a Double value example 5.00");
                        }
                        return getReturnData("Mandatory param var3 is missing var3should be the Bank Ref Id for the requested transaction.");
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the Request ID which you get while cancel_refund_transaction api");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_popupTheme /*9*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        if (this.merchantWebService.getVar3() != null) {
                            this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                            this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                            this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                            break;
                        }
                        return getReturnData("Mandatory param var3 is missing var3 Amount should be a Double value example 5.00");
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_titleTextAppearance /*10*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        if (this.merchantWebService.getVar3() != null) {
                            this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                            this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                            this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                            break;
                        }
                        return getReturnData("Mandatory param var3 is missing var3 Amount should be a Double value example 5.00");
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_subtitleTextAppearance /*11*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        if (this.merchantWebService.getVar3() != null) {
                            this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                            this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                            this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                            break;
                        }
                        return getReturnData("5001 var3 Amount should be a Double value example 5.00");
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_titleMargins /*12*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu.");
            case R.styleable.Toolbar_titleMarginStart /*13*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    this.post.append(this.merchantWebService.getVar2() == null ? BuildConfig.VERSION_NAME : concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                    this.post.append(this.merchantWebService.getVar3() == null ? BuildConfig.VERSION_NAME : concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                    this.post.append(this.merchantWebService.getVar4() == null ? BuildConfig.VERSION_NAME : concatParams(PayuConstants.VAR4, this.merchantWebService.getVar4()));
                    this.post.append(this.merchantWebService.getVar5() == null ? BuildConfig.VERSION_NAME : concatParams(PayuConstants.VAR5, this.merchantWebService.getVar5()));
                    this.post.append(this.merchantWebService.getVar6() == null ? BuildConfig.VERSION_NAME : concatParams(PayuConstants.VAR6, this.merchantWebService.getVar6()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the Transaction id (txnid)");
            case R.styleable.Toolbar_titleMarginEnd /*14*/:
                break;
            case R.styleable.Toolbar_titleMarginTop /*15*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar2()));
                    this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar3()));
                    this.post.append(concatParams(PayuConstants.VAR4, this.merchantWebService.getVar4() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar4()));
                    this.post.append(concatParams(PayuConstants.VAR5, this.merchantWebService.getVar5() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar5()));
                    this.post.append(concatParams(PayuConstants.VAR6, this.merchantWebService.getVar6() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar6()));
                    this.post.append(concatParams(PayuConstants.VAR7, this.merchantWebService.getVar7() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar7()));
                    this.post.append(concatParams(PayuConstants.VAR8, this.merchantWebService.getVar8() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar8()));
                    this.post.append(concatParams(PayuConstants.VAR9, this.merchantWebService.getVar9() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar9()));
                    this.post.append(concatParams(PayuConstants.VAR10, this.merchantWebService.getVar10() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar10()));
                    this.post.append(concatParams(PayuConstants.VAR11, this.merchantWebService.getVar11() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar11()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1 should be offer key example : offer@1234 ");
            case R.styleable.Toolbar_titleMarginBottom /*16*/:
                if (this.merchantWebService.getVar1() != null && this.merchantWebService.getVar1().length() >= 1) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the bank code for one bank, default for getting all banks");
                break;
            case R.styleable.Toolbar_maxButtonHeight /*17*/:
                if (this.merchantWebService.getVar1() != null && this.merchantWebService.getVar1().length() == 6) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1number or the card bin (first 6 digit of the card)");
                break;
            case R.styleable.Toolbar_collapseIcon /*18*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                        break;
                    }
                    return getReturnData("Mandatory param var2 is missing var2till date in YYYY-MM-DD format.");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the from date in YYYY-MM-DD format");
            case R.styleable.Toolbar_collapseContentDescription /*19*/:
                if (this.merchantWebService.getVar1() != null) {
                    if (this.merchantWebService.getVar2() != null) {
                        this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                        break;
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the till date in YYYY-MM-DD hh:mm:ss format.");
                }
                return getReturnData("Mandatory param var1 is missing var1should be the from date in YYYY-MM-DD hh:mm:ss format");
            case R.styleable.Toolbar_navigationIcon /*20*/:
                if (this.merchantWebService.getVar1() != null && this.merchantWebService.getVar1().length() >= 6) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1number or the card bin (first 6 digit of the card)");
            case R.styleable.Toolbar_navigationContentDescription /*21*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData("Mandatory param var1 is missing var1should be the user credentials and it should be merchant_key:unique_user_id.");
            case R.styleable.Toolbar_logoDescription /*22*/:
                if (this.merchantWebService.getVar1() == null) {
                    return getReturnData("Mandatory param var1 is missing var1should be the user credentials and it should be merchant_key:unique_user_id.");
                }
                this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                if (this.merchantWebService.getVar2() == null || this.merchantWebService.getVar2().length() < 1) {
                    return getReturnData("Mandatory param var2 is missing var2should be the card name (nickname of the card)");
                }
                this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                if (this.merchantWebService.getVar3() == null || !this.merchantWebService.getVar3().contentEquals(PayuConstants.CC)) {
                    return getReturnData("Mandatory param var3 is missing var3should be the card mode; please use CC as card mode");
                }
                this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                if (this.merchantWebService.getVar4() == null || !this.merchantWebService.getVar4().contentEquals(PayuConstants.CC)) {
                    return getReturnData("Mandatory param var4 is missing var4should be the card type; please use CC as card type");
                }
                this.post.append(concatParams(PayuConstants.VAR4, this.merchantWebService.getVar4()));
                if (this.merchantWebService.getVar5() == null || this.merchantWebService.getVar5().length() < 1) {
                    return getReturnData("Mandatory param var5 is missing var5 should be name on card");
                }
                this.post.append(concatParams(PayuConstants.VAR5, this.merchantWebService.getVar5()));
                if (this.merchantWebService.getVar6() == null || !validateCardNumber(this.merchantWebService.getVar6()).booleanValue()) {
                    return getReturnData("Mandatory param var6 is missing var6 should be a valid credit / debit card number");
                }
                this.post.append(concatParams(PayuConstants.VAR6, this.merchantWebService.getVar6()));
                try {
                    try {
                        if (validateExpiry(Integer.parseInt(this.merchantWebService.getVar7()), Integer.parseInt(this.merchantWebService.getVar8()))) {
                            this.post.append(concatParams(PayuConstants.VAR7, this.merchantWebService.getVar7()));
                            this.post.append(concatParams(PayuConstants.VAR8, this.merchantWebService.getVar8()));
                            break;
                        }
                        return getReturnData(PayuErrors.CARD_EXPIRED_EXCEPTION, PayuErrors.CARD_EXPIRED);
                    } catch (NumberFormatException e) {
                        return getReturnData(PayuErrors.NUMBER_FORMAT_EXCEPTION, PayuErrors.INVALID_YEAR);
                    }
                } catch (NumberFormatException e2) {
                    return getReturnData(PayuErrors.NUMBER_FORMAT_EXCEPTION, PayuErrors.INVALID_MONTH);
                }
                break;
            case R.styleable.Toolbar_titleTextColor /*23*/:
                if (this.merchantWebService.getVar1() == null) {
                    return getReturnData("Mandatory param var1 is missing var1should be the user credentials and it should be merchant_key:unique_user_id.");
                }
                this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                if (this.merchantWebService.getVar2() == null || this.merchantWebService.getVar2().length() < 1) {
                    return getReturnData("Mandatory param var2 is missing var2should be the card token, you get the card token when you store/fetch a card");
                }
                this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                if (this.merchantWebService.getVar3() == null || this.merchantWebService.getVar3().length() < 1) {
                    return getReturnData("Mandatory param var3 is missing var3should be the card name (nickname of the card)");
                }
                this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                this.post.append(concatParams(PayuConstants.VAR4, this.merchantWebService.getVar4() == null ? PayuConstants.CC : this.merchantWebService.getVar4()));
                this.post.append(concatParams(PayuConstants.VAR5, this.merchantWebService.getVar5() == null ? PayuConstants.CC : this.merchantWebService.getVar5()));
                if (this.merchantWebService.getVar6() == null || this.merchantWebService.getVar6().length() < 1) {
                    return getReturnData("Mandatory param var6 is missing var6 should be name on card");
                }
                this.post.append(concatParams(PayuConstants.VAR6, this.merchantWebService.getVar6()));
                if (this.merchantWebService.getVar7() == null || !validateCardNumber(this.merchantWebService.getVar7()).booleanValue()) {
                    return getReturnData("Mandatory param var7 is missing var7 should be a valid credit / debit card number");
                }
                this.post.append(concatParams(PayuConstants.VAR7, this.merchantWebService.getVar7()));
                try {
                    try {
                        if (validateExpiry(Integer.parseInt(this.merchantWebService.getVar8()), Integer.parseInt(this.merchantWebService.getVar9()))) {
                            this.post.append(concatParams(PayuConstants.VAR8, this.merchantWebService.getVar8()));
                            this.post.append(concatParams(PayuConstants.VAR9, this.merchantWebService.getVar9()));
                            break;
                        }
                        return getReturnData(PayuErrors.CARD_EXPIRED_EXCEPTION, PayuErrors.CARD_EXPIRED);
                    } catch (NumberFormatException e3) {
                        return getReturnData(PayuErrors.NUMBER_FORMAT_EXCEPTION, PayuErrors.INVALID_YEAR);
                    }
                } catch (NumberFormatException e4) {
                    return getReturnData(PayuErrors.NUMBER_FORMAT_EXCEPTION, PayuErrors.INVALID_MONTH);
                }
                break;
            case R.styleable.Toolbar_subtitleTextColor /*24*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    if (this.merchantWebService.getVar2() != null && this.merchantWebService.getVar2().length() > 2) {
                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                        break;
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the card token, you get the card token when you store/fetch a card");
                }
                return getReturnData("Mandatory param var1 is missing should be the user credentials and it should be merchant_key:unique_user_id.");
                break;
            case R.styleable.AppCompatTheme_actionMenuTextAppearance /*25*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    if (this.merchantWebService.getVar2() != null && this.merchantWebService.getVar2().length() > 2) {
                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                        break;
                    }
                    return getReturnData("Mandatory param var2 is missing var2should be the card token, you get the card token when you store/fetch a card");
                }
                return getReturnData("Mandatory param var1 is missing should be the user credentials and it should be merchant_key:unique_user_id.");
                break;
            case R.styleable.AppCompatTheme_actionMenuTextColor /*26*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData(PayuErrors.MANDATORY_PARAM_VAR1_IS_MISSING);
            case R.styleable.AppCompatTheme_actionModeStyle /*27*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData(PayuErrors.MANDATORY_PARAM_VAR1_IS_MISSING);
            case R.styleable.AppCompatTheme_actionModeCloseButtonStyle /*28*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    if (this.merchantWebService.getVar2() != null) {
                        this.post.append(concatParams(PayuConstants.VAR2, this.merchantWebService.getVar2()));
                        if (this.merchantWebService.getVar3() != null) {
                            this.post.append(concatParams(PayuConstants.VAR3, this.merchantWebService.getVar3()));
                            this.post.append(concatParams(PayuConstants.VAR4, this.merchantWebService.getVar4() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar4()));
                            this.post.append(concatParams(PayuConstants.VAR5, this.merchantWebService.getVar5() == null ? BuildConfig.VERSION_NAME : this.merchantWebService.getVar5()));
                            break;
                        }
                        return getReturnData(PayuErrors.MANDATORY_PARAM_VAR3_IS_MISSING);
                    }
                    return getReturnData(PayuErrors.MANDATORY_PARAM_VAR2_IS_MISSING);
                }
                return getReturnData(PayuErrors.MANDATORY_PARAM_VAR1_IS_MISSING);
            case R.styleable.AppCompatTheme_actionModeBackground /*29*/:
                if (this.merchantWebService.getVar1() != null) {
                    this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
                    break;
                }
                return getReturnData(PayuErrors.MANDATORY_PARAM_VAR1_IS_MISSING);
        }
        if (this.merchantWebService.getVar1() == null) {
            return getReturnData(PayuErrors.MANDATORY_PARAM_VAR1_IS_MISSING);
        }
        try {
            JSONObject jSONObject = new JSONObject(this.merchantWebService.getVar1());
            String[] strArr = new String[6];
            strArr[0] = PayuConstants.AMOUNT;
            strArr[1] = MRConstant.TRANSACTION_ID;
            strArr[2] = PayuConstants.PRODUCT_INFO;
            strArr[3] = PayuConstants.FIRST_NAME;
            strArr[4] = PayuConstants.EMAIL;
            strArr[5] = PayuConstants.PHONE;
            for (String str : strArr) {
                if (jSONObject.getString(str) == null || jSONObject.getString(str).length() < 1) {
                    return getReturnData(PayuErrors.MANDATORY_PARAM_PREIX + str + " is missing for creating an Invoice");
                }
                i = -1;
                switch (str.hashCode()) {
                    case -1491000803:
                        if (str.equals(PayuConstants.PRODUCT_INFO)) {
                            i = 2;
                            break;
                        }
                        break;
                    case -1413853096:
                        if (str.equals(PayuConstants.AMOUNT)) {
                            i = 0;
                            break;
                        }
                        break;
                    case 96619420:
                        if (str.equals(PayuConstants.EMAIL)) {
                            i = 4;
                            break;
                        }
                        break;
                    case 106642798:
                        if (str.equals(PayuConstants.PHONE)) {
                            i = 5;
                            break;
                        }
                        break;
                    case 110812421:
                        if (str.equals(MRConstant.TRANSACTION_ID)) {
                            i = 1;
                            break;
                        }
                        break;
                    case 133788987:
                        if (str.equals(PayuConstants.FIRST_NAME)) {
                            i = 3;
                            break;
                        }
                        break;
                }
                switch (i) {
                    case StackFrame.NO_LINE_NUMBER /*0*/:
                        try {
                            Double.parseDouble(jSONObject.getString(str));
                            break;
                        } catch (NumberFormatException e5) {
                            return getReturnData(PayuErrors.INVALID_AMOUNT_EXCEPTION, PayuErrors.INVALID_AMOUNT);
                        }
                    default:
                        break;
                }
            }
            this.post.append(concatParams(PayuConstants.VAR1, this.merchantWebService.getVar1()));
            return getReturnData(0, PayuConstants.SUCCESS, trimAmpersand(this.post.toString()));
        } catch (JSONException e6) {
            return getReturnData(PayuErrors.JSON_EXCEPTION, "var1  should be a stringified JSON object; It seems there is an exception while parsing JSON");
        }
    }
}
