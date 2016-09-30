.class public interface abstract Lcom/payu/india/Payu/PayuErrors;
.super Ljava/lang/Object;
.source "PayuErrors.java"


# static fields
.field public static final APPLICATION_NOT_FOUND_EXCEPTION:I = 0x139c

.field public static final APP_CONTEXT_NOT_FOUND:Ljava/lang/String; = "Application context not found please set your applciation context by adding Payu.setInstance(this) from your activity "

.field public static final BANK_CODE_MISSING:Ljava/lang/String; = "should be the bank code for one bank, default for getting all banks"

.field public static final CARD_BIN_MISSING:Ljava/lang/String; = "number or the card bin (first 6 digit of the card)"

.field public static final CARD_EXPIRED:Ljava/lang/String; = " It seems the card is expired!"

.field public static final CARD_EXPIRED_EXCEPTION:I = 0x1394

.field public static final CARD_MODE_MISSING:Ljava/lang/String; = "should be the card mode; please use CC as card mode"

.field public static final CARD_NAME_MISSING:Ljava/lang/String; = "should be the card name (nickname of the card)"

.field public static final CARD_NUMBER_MISSING:Ljava/lang/String; = " should be a valid credit / debit card number"

.field public static final CARD_PREIX:Ljava/lang/String; = "should be the card "

.field public static final CARD_TOKEN_MISSING:Ljava/lang/String; = "should be the card token, you get the card token when you store/fetch a card"

.field public static final CARD_TYPE_MISSING:Ljava/lang/String; = "should be the card type; please use CC as card type"

.field public static final DELETE_CARD_EXCEPTION:I = 0x1399

.field public static final END_DATE_MISSING:Ljava/lang/String; = "till date in YYYY-MM-DD format."

.field public static final END_DATE_TIME_MISSING:Ljava/lang/String; = "should be the till date in YYYY-MM-DD hh:mm:ss format."

.field public static final FROM_DATE_MISSING:Ljava/lang/String; = "should be the from date in YYYY-MM-DD format"

.field public static final FROM_DATE_TIME_MISSING:Ljava/lang/String; = "should be the from date in YYYY-MM-DD hh:mm:ss format"

.field public static final GET_USER_CARD_EXCEPTION:I = 0x139a

.field public static final INVALID_ACTION:Ljava/lang/String; = "should be the Action (cancel/capture/refund)"

.field public static final INVALID_ALGORITHM_SHA:Ljava/lang/String; = " Message digest sha 512 not found!"

.field public static final INVALID_AMOUNT:Ljava/lang/String; = " Amount should be a Double value example 5.00"

.field public static final INVALID_AMOUNT_EXCEPTION:I = 0x138b

.field public static final INVALID_AMOUNT_TO_REFUND:Ljava/lang/String; = "  should contain the amount which needs to be refunded. Please note that both partial and full refunds are allowed."

.field public static final INVALID_BANKCODE_EXCEPTION:I = 0x138d

.field public static final INVALID_BANK_CODE:Ljava/lang/String; = "Invalid bank code please verify"

.field public static final INVALID_BANK_CODE_CC:Ljava/lang/String; = "For credit card payment bank code should be CC"

.field public static final INVALID_BANK_REFERENCE_ID:Ljava/lang/String; = "should be the Bank Ref Id for the requested transaction."

.field public static final INVALID_CARD_DETAILS:Ljava/lang/String; = "Please provide valid card details (card number , cvv, exp month, exp year, card name)"

.field public static final INVALID_CARD_NUMBER:Ljava/lang/String; = " Invalid card number, Failed while applying Luhn"

.field public static final INVALID_CARD_NUMBER_EXCEPTION:I = 0x1390

.field public static final INVALID_CARD_TOKEN:Ljava/lang/String; = " Invalid card token"

.field public static final INVALID_CARD_TOKEN_EXCEPTION:I = 0x138f

.field public static final INVALID_CVV:Ljava/lang/String; = " Invalid cvv, please verify"

.field public static final INVALID_CVV_EXCEPTION:I = 0x1391

.field public static final INVALID_EMAIL:Ljava/lang/String; = "Email should not be null, it can be empty or string"

.field public static final INVALID_EMI_DETAILS:Ljava/lang/String; = "Please provide valid email details"

.field public static final INVALID_FIRST_NAME:Ljava/lang/String; = "First name should not be null, it can be empty or string"

.field public static final INVALID_HASH:I = 0x139b

.field public static final INVALID_JSON:Ljava/lang/String; = " should be a stringified JSON object; It seems there is an exception while parsing JSON"

.field public static final INVALID_MONTH:Ljava/lang/String; = " Invalid month, it should be two digit number range from 01 to 12 MM format"

.field public static final INVALID_MONTH_EXCEPTION:I = 0x1392

.field public static final INVALID_PAYMENT_DEFAULT_PARAMS:Ljava/lang/String; = "Please enter valid PaymentDefaultParamsObject"

.field public static final INVALID_PAYMENT_MODES:Ljava/lang/String; = "Please provide valid PaymentModes (Anyone from NB, CASH, EMI, CC, PAYU_MONEY)"

.field public static final INVALID_PAYMENT_OPTION:Ljava/lang/String; = " Invalid card payment option. ccnum / card_token missing."

.field public static final INVALID_PG:Ljava/lang/String; = "Invalid pg!, pg should be any one of CC, EMI, CASH, NB, PAYU_MONEY"

.field public static final INVALID_PG_EXCEPTION:I = 0x138e

.field public static final INVALID_POST_PARAMS:Ljava/lang/String; = "Please enter valid MerchantWebService object / PaymentDefaultParams and PaymnentModeParam"

.field public static final INVALID_PREIX1:Ljava/lang/String; = "Please enter valid "

.field public static final INVALID_PREIX2:Ljava/lang/String; = "Please provide valid "

.field public static final INVALID_PRODUCT_INFO:Ljava/lang/String; = "Product info should not be null, it can be empty or string"

.field public static final INVALID_SALT:Ljava/lang/String; = "Salt should be a valid string"

.field public static final INVALID_TOKEN_ID:Ljava/lang/String; = "should be the Token ID(unique token from merchant)"

.field public static final INVALID_UDF1:Ljava/lang/String; = "UDF1 should not be null, it can be empty or string"

.field public static final INVALID_UDF2:Ljava/lang/String; = "UDF2 should not be null, it can be empty or string"

.field public static final INVALID_UDF3:Ljava/lang/String; = "UDF3 should not be null, it can be empty or string"

.field public static final INVALID_UDF4:Ljava/lang/String; = "UDF4 should not be null, it can be empty or string"

.field public static final INVALID_UDF5:Ljava/lang/String; = "UDF5 should not be null, it can be empty or string"

.field public static final INVALID_URL:Ljava/lang/String; = " should be something like https://www.payu.in/txnstatus"

.field public static final INVALID_USER_CREDENTIALS:I = 0x1396

.field public static final INVALID_USER_CREDENTIALS_MISSING:Ljava/lang/String; = " Invalid user credentials, user_credentials should be merchant_key:unique_user_id."

.field public static final INVALID_YEAR:Ljava/lang/String; = " Invalid year, year should be 4 digit YYYY format"

.field public static final INVALID_YEAR_EXCEPTION:I = 0x1393

.field public static final IO_EXCEPTION:I = 0x1398

.field public static final IS_MISSING_POSTIX:Ljava/lang/String; = " is missing"

.field public static final JSON_EXCEPTION:I = 0x1396

.field public static final MANDATORY_PARAM_BANK_CODE_IS_MISSING:Ljava/lang/String; = "Mandatory param bankcode is missing"

.field public static final MANDATORY_PARAM_COMMAND_IS_MISSING:Ljava/lang/String; = "Mandatory param command is missing"

.field public static final MANDATORY_PARAM_EMAIL_IS_MISSING:Ljava/lang/String; = "Mandatory param email is missing"

.field public static final MANDATORY_PARAM_FIRST_NAME_IS_MISSING:Ljava/lang/String; = "Mandatory param firstname is missing"

.field public static final MANDATORY_PARAM_FURL_IS_MISSING:Ljava/lang/String; = "Mandatory param furl is missing"

.field public static final MANDATORY_PARAM_HASH_IS_MISSING:Ljava/lang/String; = "Mandatory param hash is missing"

.field public static final MANDATORY_PARAM_KEY_IS_MISSING:Ljava/lang/String; = "Mandatory param key is missing"

.field public static final MANDATORY_PARAM_PG_IS_MISSING:Ljava/lang/String; = "Mandatory param pg is missing, pg should be any one of CC, EMI, CASH, NB, PAYU_MONEY"

.field public static final MANDATORY_PARAM_PREIX:Ljava/lang/String; = "Mandatory param "

.field public static final MANDATORY_PARAM_PRODUCT_INFO_IS_MISSING:Ljava/lang/String; = "Mandatory param product info is missing"

.field public static final MANDATORY_PARAM_SALT_IS_MISSING:Ljava/lang/String; = "Mandatory param salt is missing"

.field public static final MANDATORY_PARAM_SURL_IS_MISSING:Ljava/lang/String; = "Mandatory param surl is missing"

.field public static final MANDATORY_PARAM_TXNID_IS_MISSING:Ljava/lang/String; = "Mandatory param txnid is missing"

.field public static final MANDATORY_PARAM_VAR1_IS_MISSING:Ljava/lang/String; = "Mandatory param var1 is missing"

.field public static final MANDATORY_PARAM_VAR2_IS_MISSING:Ljava/lang/String; = "Mandatory param var2 is missing"

.field public static final MANDATORY_PARAM_VAR3_IS_MISSING:Ljava/lang/String; = "Mandatory param var3 is missing"

.field public static final MANDATORY_PARAM_VAR4_IS_MISSING:Ljava/lang/String; = "Mandatory param var4 is missing"

.field public static final MANDATORY_PARAM_VAR5_IS_MISSING:Ljava/lang/String; = "Mandatory param var5 is missing"

.field public static final MANDATORY_PARAM_VAR6_IS_MISSING:Ljava/lang/String; = "Mandatory param var6 is missing"

.field public static final MANDATORY_PARAM_VAR7_IS_MISSING:Ljava/lang/String; = "Mandatory param var7 is missing"

.field public static final MANDATORY_PARAM_VAR8_IS_MISSING:Ljava/lang/String; = "Mandatory param var8 is missing"

.field public static final MANDATORY_PARAM_VAR9_IS_MISSING:Ljava/lang/String; = "Mandatory param var9 is missing"

.field public static final MIHPAY_ID_MISSING:Ljava/lang/String; = "should be the Payu id (mihpayid) of the transaction which was given by payu."

.field public static final MISSING_PARAMETER_EXCEPTION:I = 0x1389

.field public static final MORE_THAN_ONE_TXNID:Ljava/lang/String; = "if you want to verify more than one transaction please separate them by pipe : ex 6234567|45678987|4567876 "

.field public static final NAME_ON_CARD_MISSING:Ljava/lang/String; = " should be name on card"

.field public static final NEW_STATUS:Ljava/lang/String; = " should be new status to be set"

.field public static final NO_ERROR:I = 0x0

.field public static final NO_SUCH_ALGORITHM_EXCEPTION:I = 0x1397

.field public static final NUMBER_FORMAT_EXCEPTION:I = 0x138a

.field public static final OFFER_KEY_MISSING:Ljava/lang/String; = " should be offer key example : offer@1234 "

.field public static final POST_DATA_MISSING:Ljava/lang/String; = "Post data is missing"

.field public static final PRE_PREIX:Ljava/lang/String; = "should be the "

.field public static final PROTOCOL_EXCEPTION:I = 0x1398

.field public static final REQUEST_ID:Ljava/lang/String; = "should be the Request ID which you get while cancel_refund_transaction api"

.field public static final SDK_DETAILS_FETCHED_SUCCESSFULLY:Ljava/lang/String; = "Data fetched successfully, Stored card status: "

.field public static final TRANSACTION_ID_MISSING:Ljava/lang/String; = "should be the Transaction id (txnid)"

.field public static final UDF_POSTIX:Ljava/lang/String; = " should not be null, it can be empty or string"

.field public static final UN_SUPPORTED_ENCODING_EXCEPTION:I = 0x138c

.field public static final USER_CREDENTIALS_MISSING:Ljava/lang/String; = "should be the user credentials and it should be merchant_key:unique_user_id."

.field public static final USER_CREDENTIALS_NOT_FOUND:Ljava/lang/String; = " Card can not be stored!, user_credentials is missing!"

.field public static final USER_CREDENTIALS_NOT_FOUND_EXCEPTION:I = 0x1395

.field public static final USER_CREDENTIALS_OR_DEFAULT_MISSING:Ljava/lang/String; = " should be user_credentials (merchant_key:unique_user_id.) to get the merchant information and stored card or default to get only the merchant information"

.field public static final USE_DEFAULT:Ljava/lang/String; = " Please send var1 as \'default\'"
