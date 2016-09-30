package com.payu.india.Payu;

import java.util.HashSet;
import java.util.Set;

public interface PayuConstants {

    // payu default params
    String DEVICE_TYPE = "device_type";
    String INSTRUMENT_TYPE = "instrument_type";
    String INSTRUMENT_ID = "instrument_id";

    int PAYU_REQUEST_CODE = 100;

    // Environments
    String ENV = "env";
    String PAYU_CONFIG = "payuConfig";
    int PRODUCTION_ENV = 0;
    int MOBILE_STAGING_ENV = 1; // mobiletest.payu.in
    int STAGING_ENV = 2; // test.payu.in
    int MOBILE_DEV_ENV = 3; // mobiledev.payu.in

    // payment modes
    String CC = "CC";
    String EMI = "EMI";
    String CASH = "CASH";
    String NB = "NB";
    String PAYU_MONEY = "PAYU_MONEY";

    // payment mode params
    String PG = "pg";
    String BANK_CODE = "bankcode";
    String CC_NUM = "ccnum";
    String CC_NAME = "ccname";
    String C_CVV = "ccvv";
    String CC_EXP_MON = "ccexpmon";
    String CC_EXP_YR = "ccexpyr";
    String CARD_TOKEN = "card_token";
    String STORE_CARD_TOKEN = "store_card_token";
    String STORED_CARD = "store_card";
    String USER_CREDENTIALS = "user_credentials";
    String SMS_PERMISSION = "sms_permission";

    // cvvless inputs

    String CARD_CVV = "card_cvv";
    String ONE_CLICK_CHECKOUT = "one_click_checkout"; // can be 0 or 1; 0 - payu does not have cvv, 1 - payu has cvv
    String CARD_MERCHANT_PARAM = "card_merchant_param"; // should be passed with other payment params, should be taken from Shared preferences.

    // payment mandatory parms
    String KEY = "key";
    String SALT = "salt";
    String TXNID = "txnid";
    String AMOUNT = "amount";
    String PRODUCT_INFO = "productinfo";
    String FIRST_NAME = "firstname";
    String EMAIL = "email";
    String SURL = "surl";
    String FURL = "furl";
    String HASH = "hash";

    // payment other params
    String OFFER_KEY = "offer_key";
    String PHONE = "phone";
    String LASTNAME = "lastname";
    String ADDRESS1 = "address1";
    String ADDRESS2 = "address2";
    String CITY = "city";
    String STATE = "state";
    String COUNTRY = "country";
    String ZIPCODE = "zipcode";

    String CODURL = "codurl";
    String DROP_CATEGORY = "drop_category";
    String ENFORCE_PAYMETHOD = "enforce_paymethod";
    String CUSTOM_NOTE = "custom_note";
    String NOTE_CATEGORY = "note_category";
    String SHIPPING_FIRSTNAME = "shipping_firstname";
    String SHIPPING_LASTNAME = "shipping_lastname";
    String SHIPPING_ADDRESS1 = "shipping_address1";
    String SHIPPING_ADDRESS2 = "shipping_address2";
    String SHIPPING_CITY = "shipping_city";
    String SHIPPING_STATE = "shipping_state";
    String SHIPPING_CONTRY = "shipping_county";
    String SHIPPING_ZIPCODE = "shipping_zipcode";
    String SHIPPING_PHONE = "shipping_phone";

    //udf collection
    String UDF1 = "udf1";
    String UDF2 = "udf2";
    String UDF3 = "udf3";
    String UDF4 = "udf4";
    String UDF5 = "udf5";

    // issuer collections

    String VISA = "VISA";
    String LASER = "LASER";
    String DISCOVER = "DISCOVER";
    String MAES = "MAES";
    String MAST = "MAST";
    String AMEX = "AMEX";
    String DINR = "DINR";
    String JCB = "JCB";
    String SMAE = "SMAE";
    String RUPAY = "RUPAY";
    String MASTERCARD = "MASTERCARD";

    // webservice api constants

    // var collections
    String VAR1 = "var1";
    String VAR2 = "var2";
    String VAR3 = "var3";
    String VAR4 = "var4";
    String VAR5 = "var5";
    String VAR6 = "var6";
    String VAR7 = "var7";
    String VAR8 = "var8";
    String VAR9 = "var9";
    String VAR10 = "var10";
    String VAR11 = "var11";
    String VAR12 = "var12";
    String VAR13 = "var13";
    String VAR14 = "var14";
    String VAR15 = "var15";

    String COMMAND = "command";
    String DEFAULT = "default";


    // commands

    String VERIFY_PAYMENT = "verify_payment";
    String CHECK_PAYMENT = "check_payment";
    String CANCEL_REFUND_TRANSACTION = "cancel_refund_transaction";
    String CHECK_ACTION_STATUS = "check_action_status";
    String CAPTURE_TRANSACTION = "capture_transaction";
    String UPDATE_REQUESTS = "update_requests";
    String COD_VERIFY = "cod_verify";
    String COD_CANCEL = "cod_cancel";
    String COD_SETTLED = "cod_settled";
    String GET_TDR = "get_TDR";
    String UDF_UPDATE = "udf_update";
    String CREATE_INVOICE = "create_invoice";
    String CHECK_OFFER_STATUS = "check_offer_status";
    @Deprecated
    String GET_NETBANKING_STATUS = "getNetbankingStatus";
    @Deprecated
    String GET_ISSUING_BANK_STATUS = "getIssuingBankStatus";
    String GET_TRANSACTION_DETAILS = "get_Transaction_Details";
    String GET_TRANSACTION_INFO = "get_transaction_info";
    String CHECK_IS_DOMESTIC = "check_isDomestic";
    String GET_USER_CARDS = "get_user_cards";
    String SAVE_USER_CARD = "save_user_card";
    String EDIT_USER_CARD = "edit_user_card";
    String DELETE_USER_CARD = "delete_user_card";
    @Deprecated
    String GET_MERCHANT_IBIBO_CODES = "get_merchant_ibibo_codes";
    String VAS_FOR_MOBILE_SDK = "vas_for_mobile_sdk";
    String PAYMENT_RELATED_DETAILS_FOR_MOBILE_SDK = "payment_related_details_for_mobile_sdk";
    String DELETE_STORE_CARD_CVV = "delete_store_card_cvv";

    String MERCHANT_CVV_DATA = "merchant_cvv_data";

    // hash generation api not for merchats
    @Deprecated
    String MOBILE_HASH_TEST_WS = "mobileHashTestWs";
    String GET_HASHES = "get_hashes";
    // status
    String ERROR = "ERROR";
    String SUCCESS = "SUCCESS";
    String STATUS = "status";

    String CHECK_OFFER_DETAILS = "check_offer_details";

    // Response data

    String IBIBO_CODES = "ibiboCodes";
    String NETBANKING = "netbanking";
    String USERCARDS = "userCards";
    String CASHCARD = "cashcard";
    String CREDITCARD = "creditcard";
    String DEBITCARD = "debitcard";
    String IVR = "ivr";
    String IVRDC = "ivrdc";
    String PAISAWALLET = "paisawallet";
    String BANK = "bank";
    String PAYUW = "PAYUW";
    String WALLET = "wallet";

    // user cards

    String USER_CARD = "user_cards";
    String NAME_ON_CARD = "name_on_card";
    String CARD_NAME = "card_name";
    String EXPIRY_YEAR = "expiry_year";
    String EXPIRY_MONTY = "expiry_month";
    String CARD_TYPE = "card_type";
    String CARD_TOKENS = "card_tokens"; // we have it already
    String IS_EXPIRED = "is_expired";
    String CARD_MODE = "card_mode";
    String CARD_NO = "card_no";
    String CARD_BRAND = "card_brand";
    String CARD_BIN = "card_bin";
    String IS_DOMESTIC = "isDomestic";
    String ISSUINGBANK = "issuingBank";
    String CARDTYPE = "cardType";
    String CARDCATEGORY = "cardCategory";

    String ONE_CLICK_CARD_TOKENS =  "one_click_card_tokens";
    String STORE_ONE_CLICK_HASH = "store_one_click_hash";
    int STORE_ONE_CLICK_HASH_NONE = 0;
    int STORE_ONE_CLICK_HASH_SERVER = 1;
    int STORE_ONE_CLICK_HASH_MOBILE = 2;

    // offer related API constants.
    String ERROR_CODE = "error_code";
    String DISCOUNT = "discount";
    String CATEGORY = "category";
    String OFFER_TYPE = "offer_type";
    String OFFER_AVAILED_COUNT = "offer_availed_count";
    String OFFER_REMAINING_COUNT = "offer_remaining_count";
    String ALLOWED_ON = "allowed_on";
    String DATA_KEY = "data_key";
    String CARD_DATA = "card_data";
    String OFFER_DATA = "offer_data";

    String TRANSACTION_DETAILS = "transaction_details";
    String MIHPAY_ID = "mihpayid";
    String REQUEST_ID = "request_id";
    String BANK_REF_NUM = "bank_ref_num";
    String AMT = "amt";
    String ADDITIONAL_CHARGES = "additional_charges";
    String FIELD1 = "field1";
    String FIELD2 = "field2";
    String FIELD3 = "field3";
    String FIELD4 = "field4";
    String FIELD9 = "field9";
    String ERROR_MESSAGE = "error_Message";
    String ERROR_MESSAGE2 = "Error_Message";
    String NET_AMOUNT_DEBIT = "net_amount_debit";
    String DISC = "disc";
    String MODE = "mode";
    String PG_TYPE = "PG_TYPE";
    String ADDED_ON = "addedon";
    String UNMAPPED_STATUS = "unmappedstatus";
    String MERCHANT_UTR = "Merchant_UTR";
    String SETTLED_AT = "Settled_At";

    String PAYU_RESPONSE = "payu_response";


    // net banking

    String BANK_ID = "bank_id";
    String TITLE = "title";
    String BANK_CODE_RESPONSE = "bank_code";
    String PGID = "pgId";

    String POST_DATA = "post_data";
    String MSG = "msg";
    String EMI_IN_RESPONSE = "emi";

    // for bundle
    @Deprecated
    String PAYMENT_DEFAULT_PARAMS = "payment_default_params";
    String PAYU_HASHES = "payu_hashes";
    String PAYMENT_PARAMS = "payment_params";
    String ONE_CLICK_PAYMENT = "one_click_payment";

    // sets and lists

    Set<String> PG_SET = new HashSet<String>();
    Set<String> COMMAND_SET = new HashSet<String>();
    String[] PG_ARRAY = {CC, EMI, CASH, NB, PAYU_MONEY};
    String[] PAYMENT_PARAMS_ARRAY = {KEY, TXNID, AMOUNT, PRODUCT_INFO, FIRST_NAME, EMAIL, SURL, FURL, HASH, UDF1, UDF2, UDF3, UDF4, UDF5};
    // test env
    String TEST_PAYMENT_URL = "https://test.payu.in/_payment";
    String TEST_FETCH_DATA_URL = "https://test.payu.in/merchant/postservice?form=2";
    // mobile dedicated test env
    String MOBILE_TEST_PAYMENT_URL = "https://mobiletest.payu.in/_payment";
    String MOBILE_TEST_FETCH_DATA_URL = "https://mobiletest.payu.in/merchant/postservice?form=2";

    String MOBILE_DEV_PAYMENT_URL = "https://mobiledev.payu.in/_payment";
    String MOBILE_DEV_FETCH_DATA_URL = "https://mobiledev.payu.in/merchant/postservice?form=2";

    String TEST_DEMO_PAYMENT_URL = "https://demotest.payu.in/_payment";
    String TEST_DEMO_FETCH_DATA_URL = "https://demotest.payu.in/merchant/postservice?form=2";

    // production
    String PRODUCTION_PAYMENT_URL = "https://secure.payu.in/_payment";
    String PRODUCTION_FETCH_DATA_URL = "https://info.payu.in/merchant/postservice.php?form=2";

    String HDFC = "HDFC";
    String ICICI = "ICICI";
    String CITI = "CITI";
    String HSBC = "HSBC";
    String IDBI = "IDBI";
    String INDUSIND = "INDUS";
    String ING = "ING";
    String KOTAK = "KOTAK";
    String SBIDC = "SBIDC";
    String SC = "SC";
    String YES = "YES";

    //Keys for Device Tracking for transaction
    String SDK_VERSION_NAME = "sdk_version";
    String CB_VERSION_NAME = "cb_version";
    String DEVICE_OS_VERSION = "os_version";
    String NETWORK_INFO = "network_info";
    String NETWORK_STRENGTH="network_strength";
    String DEVICE_RESOLUTION = "resolution";
    String DEVICE_MANUFACTURE="device_manufacturer";
    String DEVICE_MODEL="device_model";
    String MERCHANT_KEY="merchant_key";
    String TRANSACTION_ID="txnid";

    // Shared preference file name
    String PAYU_PREFERENCE = "PayuPreference";

    String MERCHANT_HASH = "merchant_hash";

    String ID = "id";
    String TRANSACTION_FEE = "transaction_fee";
    String PAYMENT_SOURCE = "payment_source";
    String IBIBO_CODE = "ibibo_code";
    String IS_SEAMLESS = "is_seamless";




    // Flag for storing the merchant hash in mobile device.
    String STORE_MERCHANT_HASH = "store_merchant_hash";


    INIT init = new INIT();

    // ####################################################### //
    // ## CONSTANTS FOR GetEmiAmountAccordingToInterest API ## //
    // ####################################################### //
    String EMI_BANK_INTEREST = "emiBankInterest";
    String BANK_RATE         = "bankRate";
    String BANK_CHARGE       = "bankCharge";
    String EMI_VALUE         = "emi_value";
    String EMI_INTEREST_PAID = "emi_interest_paid";
    // Command
    String API_GET_EMI_AMOUNT_ACCORDING_INTEREST = "getEmiAmountAccordingToInterest";
    // ####################################################### //

    String PAYU_IMEI = "imei";
    String PAYU_UDID = "udid";

    class INIT {
        static {
            //PG_SET
            PG_SET.add(CC);
            PG_SET.add(EMI);
            PG_SET.add(CASH);
            PG_SET.add(NB);
            PG_SET.add(PAYU_MONEY);

            //COMMAND_SET
            COMMAND_SET.add(VERIFY_PAYMENT);
            COMMAND_SET.add(CHECK_PAYMENT);
            COMMAND_SET.add(CANCEL_REFUND_TRANSACTION);
            COMMAND_SET.add(CHECK_ACTION_STATUS);
            COMMAND_SET.add(CAPTURE_TRANSACTION);
            COMMAND_SET.add(UPDATE_REQUESTS);
            COMMAND_SET.add(COD_VERIFY);
            COMMAND_SET.add(COD_CANCEL);
            COMMAND_SET.add(COD_SETTLED);
            COMMAND_SET.add(GET_TDR);
            COMMAND_SET.add(UDF_UPDATE);
            COMMAND_SET.add(CREATE_INVOICE);
            COMMAND_SET.add(CHECK_OFFER_STATUS);
            COMMAND_SET.add(GET_NETBANKING_STATUS);
            COMMAND_SET.add(GET_ISSUING_BANK_STATUS);
            COMMAND_SET.add(GET_TRANSACTION_DETAILS);
            COMMAND_SET.add(GET_TRANSACTION_INFO);
            COMMAND_SET.add(CHECK_IS_DOMESTIC);
            COMMAND_SET.add(GET_USER_CARDS);
            COMMAND_SET.add(SAVE_USER_CARD);
            COMMAND_SET.add(EDIT_USER_CARD);
            COMMAND_SET.add(DELETE_USER_CARD);
            COMMAND_SET.add(GET_MERCHANT_IBIBO_CODES);
            COMMAND_SET.add(VAS_FOR_MOBILE_SDK);
            COMMAND_SET.add(PAYMENT_RELATED_DETAILS_FOR_MOBILE_SDK);
            COMMAND_SET.add(MOBILE_HASH_TEST_WS);
            COMMAND_SET.add(GET_HASHES);
            COMMAND_SET.add(CHECK_OFFER_DETAILS);
            // For getEmiAmountAccordingToInterest
            COMMAND_SET.add(API_GET_EMI_AMOUNT_ACCORDING_INTEREST);
            // for testing.
            COMMAND_SET.add(MERCHANT_CVV_DATA);
            COMMAND_SET.add(DELETE_STORE_CARD_CVV);

        }

        INIT() {
        }
    }
}
