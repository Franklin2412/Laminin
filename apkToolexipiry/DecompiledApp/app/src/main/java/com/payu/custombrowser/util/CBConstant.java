package com.payu.custombrowser.util;

import com.payu.custombrowser.Bank;

public interface CBConstant {
    String PAYU_DOMAIN_TEST = "https://mobiletest.payu.in";
    String PAYU_DOMAIN_PROD = "https://secure.payu.in";
    String PAYU_DOMAIN = Bank.DEBUG ? PAYU_DOMAIN_TEST : PAYU_DOMAIN_PROD;
    // TODO: Remove these misleading urls.
    String TEST_URL_ANALYTICS = "https://mobiletest.payu.in/merchant/postservice.php?form=2";
    String PRODUCTION_URL_ANALYTICS = "https://info.payu.in/merchant/postservice.php?form=2";

    String TXN_ID = "txnid";
    String MERCHANT_KEY = "merchantid";
    String BACK_BUTTON = "backButton";
    String SDK_DETAILS = "sdkname";
    String WEBVIEW = "webView";
    String TRANS_LAYOUT = "tranLayout";
    String VIEWPORTWIDE = "viewPortWide";
    String SHOW_CUSTOMROWSER = "showCustom";
    String AUTO_APPROVE = "auto_approve";
    String AUTO_SELECT_OTP = "auto_select_otp";
    String STORE_ONE_CLICK_HASH = "store_one_click_hash";

    //Rupay card URL
    String rupeeURL = "https://mwsrec.npci.org.in/MWS/Scripts/MerchantScript_v1.0.js";
    String rupeeURL1 = "https://swasrec2.npci.org.in";
    String rupeeURL2 = "https://swasrec.npci.org.in";

    //Mixpenel project token
    String projectToken = "68dbbac2c25bc048154999d13cb77a55";

    String PAYMENT_URL = "https://secure.payu.in/_payment";
    String TEST_PAYMENT_URL = "https://mobiletest.payu.in/_payment";

    // SNOOZE MODES
    int WARN_MODE = 1; // Snooze  + MR
    int FAIL_MODE = 2; // MR


    String VERIFY_ADDON_PARAMS = "verify_add_param";
    // Snooze notification id
    int SNOOZE_NOTIFICATION_ID = (int) (Math.random() * 9000) + 1000;


    int TRANSACTION_STATUS_NOTIFICATION_ID = (int) (Math.random() * 9000) + 1000;

    // Custom browser state
    // Custom browser minimize (frameState = MINIMISED)
    int MINIMISED = 1;

    // Custom browser maximize (frameState = Maximized)
    int MAXIMISED = 2;

    // Button constant
    int PASSWORD = 1;
    int REGENERATE_OTP = 2;
    int PIN = 3;
    int ENTER_MANUALLY = 4;
    int APPROVE = 5;
    int OTP = 6;
    int SMS_OTP = 7;
    int DEFAULT = 0;

    //TODO if not require we can remove these constant
    //constants for snooze buttons
    int TRY_LATER = 11;
    int RETRY_NOW = 12;
    int CANCEL_TXN_SNOOZE = 13;
    int CONFIRM_TXN_SNOOZE = 14;
    int NOT_CONFIRM_SNOOZE = 15;
    int CANCEL_SNOOZE_WINDOW = 16;


    // PayU url (payment option url)
    String PAYMENT_OPTION_URL_PROD = "https://secure.payu.in/_payment_options";
    String PAYMENT_OPTION_URL_DEV = "https://mobiletest.payu.in/_payment_options";
    //String PAYMENT_OPTION_URL_DEV = "http://10.100.20.223:8000/_payment_options";

    // Payment url


    String TEST_URL = "https://mobiletest.payu.in/js/sdk_js/v3/";
    //   String TEST_URL = "http://10.100.32.11:8000/js/sdk_js/v3/";
    String PRODUCTION_URL = "https://secure.payu.in/js/sdk_js/v3/";

    // Android M sms permission
    String MERCHANT_SMS_PERMISSION = "smsPermission";
    String MAGIC_RETRY_PAKAGE = "com.payu.magicretry.MagicRetryFragment";
    String BANKNAME = "bankName";
    String CB_VERSION = "cbVersion";
    String ANALYTICS_KEY = "analyticsKey";
    int CB_ENABLE_OPTION = 1;
    String NB = "nb";
    String VERIFICATION_MSG_RECEIVED = "verificationMsgReceived";
    String POST_TYPE = "post_type";
    String PAYU_RESPONSE = "payu_response";

    // mobile dedicated test env
    String MOBILE_TEST_PAYMENT_URL = "https://mobiletest.payu.in/_payment";
    // production
    String PRODUCTION_PAYMENT_URL = "https://secure.payu.in/_payment";
    //https://mpi.onlinesbi.com/electraSECURE/vbv/MPIACSResponse.jsp
    String BACKWARD_URL = "https://mobiletest.payu.in/sbi_pg_response.php||https://mobiletest.payu.in/_axis_response.php||https://secure.payu.in/_axis_response.php||https://secure.payu.in/response||https://mobiletest.payu.in/response||https://www.citibank.co.in/servlets/VerifyPARes||https://secure.payu.in/citi_response.php||https://mobiletest.payu.in/citi_response.php||https://mpi.onlinesbi.com/electraSECURE/vbv/MPIACSResponse.jsp||https://secure.payu.in/sbi_pg_response.php||https://mobiletest.payu.in/sbi_pg_response.php||https://ubimpi.electracard.com/electraSECURE/vbv/MPIACSResponse.jsp||https://secure.payu.in/ubi_pg_response.php||https://mobiletest.payu.in/ubi_pg_response.php||https://epayment.hitachi-payments.com/EPH/PGResponse.aspx||https://secure.payu.in/indus_response.php||https://mobiletest.payu.in/indus_response.php||https://vpos.amxvpos.com/pay||https://secure.payu.in/amex_response.php||https://mobiletest.payu.in/amex_response.php||https://secure.payu.in/_billdesk_response.php||https://mobiletest.payu.in/_billdesk_response.php||https://secure.payu.in/_hdfc_response.php||https://mobiletest.payu.in/_hdfc_response.php||https://secure.payu.in/_oxicash_response.php||https://mobiletest.payu.in/_oxicash_response.php||https://secure.payu.in/ccavenue_response.php||https://secure.payu.in/ubi_response.php||https://secure.payu.in/yesnbresponse.php||https://secure.payu.in/ebs_response.php||https://secure.payu.in/sbi_nb_response.php||https://secure.payu.in/indusind_response.php||https://secure.payu.in/techprocess_response.php||https://secure.payu.in/sib_response.php||https://secure.payu.in/karb_nb_response.php||https://secure.payu.in/itzcash_response.php||https://secure.payu.in/amex_response.php||https://secure.payu.in/airtelmoney_response.php||https://secure.payu.in/boi_nb_response.php||https://secure.payu.in/boi_nb_response.php||https://secure.payu.in/idbiNbResponse.php||https://secure.payu.in/iob_nb_response.php||https://secure.payu.in/bom_response.php||https://secure.payu.in/citrus_nb_response.php||https://secure.payu.in/fednet_response.php||https://secure.payu.in/dcb_nb_response.php||https://secure.payu.in/UBNB_response.php||https://secure.payu.in/CBI_response.php?M=IBIBO||https://secure.payu.in/citiPM_response.php||https://secure.payu.in/CUBB_response.php||https://secure.payu.in/VijNb_response.php||https://secure.payu.in/IndianNB_response.php||https://secure.payu.in/CanNb_response.php||https://secure.payu.in/YPayCash_response.php||https://secure.payu.in/DBNB_response.php||https://secure.payu.in/doneoss_response.php||https://secure.payu.in/ING_response.php||https://secure.payu.in/DhanLakhsmiNb_response.php||https://secure.payu.in/icash_response.php||https://secure.payu.in/PayCash_response.php||https://secure.payu.in/csb_response.php||https://secure.payu.in/zipcash_response.php||https://secure.payu.in/CitiNb_response.php||https://secure.payu.in/IobDc_response.php||https://secure.payu.in/PnbNbResponse.php||https://secure.payu.in/DCBCorp_NB_response.php||https://secure.payu.in/PnbCorpNB_response.php||https://secure.payu.in/SaraswatNb_response.php||https://secure.payu.in/PnbDc_response.php||https://secure.payu.in/andhra_response.php||https://secure.payu.in/canara_response.php||https://secure.payu.in/aav_amex_response.php||https://secure.payu.in/UcoNb_response.php||https://secure.payu.in/TMB_response.php||https://secure.payu.in/amex_ezeClick_response.php||https://secure.payu.in/ingVysyaEmandate_response.php||https://secure.payu.in/JantaSahakariNB_response.php||https://secure.payu.in/cosmosNB_response.php||https://secure.payu.in/ObcNb_response.php||https://secure.payu.in/KotakPG_response.php||https://secure.payu.in/SvcNb_response.php||https://secure.payu.in/PunjabSindNb_response.php||https://secure.payu.in/hdfc_nb_response.php||https://secure.payu.in/jkb_response.php||https://secure.payu.in/AxisCGPg_response.php||https://secure.payu.in/PmcNb_response.php||https://secure.payu.in/CyberSource_response.php||https://secure.payu.in/DenaNb_response.php||https://secure.payu.in/DenaNb_finalresponse.php||https://secure.payu.in/IciciDebitPin_response.php";

    String CB_CONFIG = "cb_config";

    // Retry constants
    String SP_RETRY_FILE_NAME = "RETRY_SETTINGS";
    String SP_RETRY_WHITELISTED_URLS = "RETRY_WHITELISTED_URLS";

    // STATIC MESSAGES
    String MSG_NO_INTERNET = "Not internet connection";

    // Snooze Default percent to load url in SNOOZE_DEFAULT_URL_LOAD_TIME_OUT
    int SNOOZE_DEFAULT_URL_LOAD_PERCENTAGE = 100;
    // Snooze Default time to load SNOOZE_DEFAULT_URL_LOAD_PERCENTAGE of the url.
    int SNOOZE_DEFAULT_URL_LOAD_TIME_OUT = 1;

    // Snooze String constants
    String DEFAULT_PAYMENT_URLS = "*";
    String URL = "url";
    String PROGRESS_PERCENT = "progress_percent";
    String TIME_OUT = "time_out";
    String SNOOZE_IMAGE_DOWNLOAD_END_POINT = Bank.DEBUG?"https://mobiletest.payu.in/images/speed_test/":"https://sucure.payu.in/images/speed_test/";
    String[] SNOOZE_IMAGE_COLLECTIONS = {"coffie_128.jpg", "dogs_128.jpg", "pasta_128.jpg"}; // TODO: Fix typo coffie_128.jpg
    String CURRENT_URL = "currentUrl";
    String MERCHANT_CHECKOUT_ACTIVITY = "merchantCheckoutActivity";
    String SENDER = "sender";
    String SNOOZE_SERVICE = "snoozeService";
    String SNOOZE_ENABLED = "snoozeEnabled";
    String SNOOZE_SERVICE_STATUS = "snoozeServiceStatus";
    String SNOOZE_SERVICE_DEAD = "snoozeServiceDead";
    String POST_DATA = "postData";

    String SNOOZE_SHARED_PREF = "com.payu.custombrowser.snoozepref";
    String SNOOZE_IMAGE_DOWNLOAD_TIME_OUT = "sp_image_download_time_out";

    String CB_DELIMITER = "||";

    // CBActivity state
    int STATE_RESUMED = 1;
    int STATE_PAUSED = 2;
    int STATE_DESTROYED = 3;

    // configurable merhant key.
    String KEY = "key";

    String API_STATUS = "api_status";
    String RESPONSE = "response";
    String RESPONSE_BACKWARD = "_response";
    String SURL = "surl";
    String FURL = "furl";


    String MAIN_LAYOUT = "mainLayout";
    String LOADING = "loading";

    // Generic Async task
    String HTTP_URLENCODED = "application/x-www-form-urlencoded";

    String PHPSESSID = "PHPSESSID";
    String PAYUID = "PAYUID";

    // command for API
    String EVENT_ANALYTICS = "EventAnalytics"; //event analytics command for API
    String DEVICE_ANALYTICS = "DeviceAnalytics"; // device analytics command for API
    String VERIFI_API = "verifyTxnStatus"; // verify payment API command

    // Analytics events
    String STR_SNOOZE_MODE_WARN = "Warn";
    String STR_SNOOZE_MODE_FAIL = "Fail";

}
