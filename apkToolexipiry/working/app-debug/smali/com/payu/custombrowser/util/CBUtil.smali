.class public Lcom/payu/custombrowser/util/CBUtil;
.super Ljava/lang/Object;
.source "CBUtil.java"


# static fields
.field public static final CB_PREFERENCE:Ljava/lang/String; = "com.payu.custombrowser.payucustombrowser"

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "fileInputStream"    # Ljava/io/FileInputStream;

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 137
    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 138
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    .line 139
    rem-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x1

    sub-int v4, v0, v4

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    rem-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    .end local v0    # "c":I
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 145
    .restart local v0    # "c":I
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static filterSMS(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "mBankJS"    # Lorg/json/JSONObject;
    .param p1, "msgBody"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 224
    .local v1, "mPassword":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 225
    :try_start_0
    sget v3, Lcom/payu/custombrowser/R$string;->cb_detect_otp:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 226
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    sget v3, Lcom/payu/custombrowser/R$string;->cb_find_otp:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDownloadSpeed()V
    .locals 30

    .prologue
    .line 424
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 425
    .local v22, "testing":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 426
    .local v6, "BeforeTime":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v16

    .line 427
    .local v16, "TotalTxBeforeTest":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v12

    .line 429
    .local v12, "TotalRxBeforeTest":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v14

    .line 430
    .local v14, "TotalTxAfterTest":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    .line 431
    .local v10, "TotalRxAfterTest":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 433
    .local v4, "AfterTime":J
    sub-long v28, v4, v6

    move-wide/from16 v0, v28

    long-to-double v8, v0

    .line 435
    .local v8, "TimeDifference":D
    sub-long v28, v10, v12

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v20, v0

    .line 436
    .local v20, "rxDiff":D
    sub-long v28, v14, v16

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v26, v0

    .line 438
    .local v26, "txDiff":D
    const-wide/16 v28, 0x0

    cmpl-double v23, v20, v28

    if-eqz v23, :cond_0

    const-wide/16 v28, 0x0

    cmpl-double v23, v26, v28

    if-eqz v23, :cond_0

    .line 439
    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v28, v8, v28

    div-double v18, v20, v28

    .line 440
    .local v18, "rxBPS":D
    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v28, v8, v28

    div-double v24, v26, v28

    .line 441
    .local v24, "txBPS":D
    const/16 v23, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "bps. Total rx = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v22, v23

    .line 442
    const/16 v23, 0x1

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "bps. Total tx = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v22, v23

    .line 446
    .end local v18    # "rxBPS":D
    .end local v24    # "txBPS":D
    :goto_0
    return-void

    .line 444
    :cond_0
    const/16 v23, 0x0

    const-string v28, "No uploaded or downloaded bytes."

    aput-object v28, v22, v23

    goto :goto_0
.end method

.method public static getHttpsConn(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "strURL"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 274
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 275
    const-string v3, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "bank"    # Ljava/lang/String;
    .param p4, "sdkMerchantKey"    # Ljava/lang/String;
    .param p5, "trnxID"    # Ljava/lang/String;
    .param p6, "pageType"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v1, "eventAnalytics":Lorg/json/JSONObject;
    const-string v2, "payu_id"

    new-instance v3, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v3}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    const-string v4, "PAYUID"

    invoke-virtual {v3, v4, p0}, Lcom/payu/custombrowser/util/CBUtil;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v2, "txnid"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "merchant_key"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "page_type"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "event_key"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v2, "event_value"

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v2, "bank"

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "bank":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v2, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    .end local v1    # "eventAnalytics":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const-string v2, "{}"

    goto :goto_0
.end method

.method private getMobileStrength(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 568
    :try_start_0
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 569
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    .line 571
    .local v5, "strength":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_4

    .line 573
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 574
    .local v3, "info":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 575
    instance-of v9, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_1

    .line 576
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    .line 577
    .local v2, "gsm":Landroid/telephony/CellSignalStrengthGsm;
    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v5

    .line 578
    goto :goto_0

    .end local v2    # "gsm":Landroid/telephony/CellSignalStrengthGsm;
    .restart local v3    # "info":Landroid/telephony/CellInfo;
    :cond_1
    instance-of v9, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_2

    .line 579
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    .line 580
    .local v0, "cdma":Landroid/telephony/CellSignalStrengthCdma;
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v5

    .line 581
    goto :goto_0

    .end local v0    # "cdma":Landroid/telephony/CellSignalStrengthCdma;
    .restart local v3    # "info":Landroid/telephony/CellInfo;
    :cond_2
    instance-of v9, v3, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_3

    .line 582
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v4

    .line 583
    .local v4, "lte":Landroid/telephony/CellSignalStrengthLte;
    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v5

    .line 584
    goto :goto_0

    .end local v4    # "lte":Landroid/telephony/CellSignalStrengthLte;
    .restart local v3    # "info":Landroid/telephony/CellInfo;
    :cond_3
    instance-of v9, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_0

    .line 585
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v7

    .line 586
    .local v7, "wcdma":Landroid/telephony/CellSignalStrengthWcdma;
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 593
    .end local v5    # "strength":I
    .end local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v7    # "wcdma":Landroid/telephony/CellSignalStrengthWcdma;
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return v5
.end method

.method public static getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;
    .locals 6
    .param p0, "responseInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 291
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v3, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 293
    .local v0, "byteContainer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "i":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 294
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v0    # "byteContainer":[B
    .end local v2    # "i":I
    .end local v3    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const/4 v3, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 562
    .local v0, "res":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 312
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 313
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static processAndAddWhiteListedUrls(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    if-eqz p0, :cond_2

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 359
    const-string v3, "\\|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "urls":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 361
    .local v0, "url":Ljava/lang/String;
    const-string v5, "#### PAYU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split Url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 365
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 371
    .end local v1    # "urls":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 368
    .restart local v1    # "urls":[Ljava/lang/String;
    :cond_1
    const-string v3, "#### PAYU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Whitelisted URLs from JS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public static setAlpha(FLandroid/view/View;)V
    .locals 4
    .param p0, "alpha"    # F
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 154
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 155
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private static setRetryData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 341
    const-string v0, "RETRY_SETTINGS"

    const-string v1, "RETRY_WHITELISTED_URLS"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->addStringToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    const-string v0, "#### PAYU"

    const-string v1, "DATA UPDATED IN SHARED PREFERENCES"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void

    .line 344
    :cond_0
    const-string v0, "RETRY_SETTINGS"

    const-string v1, "RETRY_WHITELISTED_URLS"

    invoke-static {p1, v0, v1, p0}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->addStringToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setVariableReflection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "varName"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 203
    .local v0, "aClass":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 204
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private storeSnoozeConfigInSharedPref(Landroid/content/Context;Lorg/json/JSONArray;Lcom/payu/custombrowser/util/SnoozeConfigMap;)Lcom/payu/custombrowser/util/SnoozeConfigMap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configArray"    # Lorg/json/JSONArray;
    .param p3, "snoozeConfigMap"    # Lcom/payu/custombrowser/util/SnoozeConfigMap;

    .prologue
    .line 916
    const-string v9, ""

    .line 917
    .local v9, "urlCollections":Ljava/lang/String;
    const-string v4, ""

    .line 918
    .local v4, "progressPercent":Ljava/lang/String;
    const-string v7, ""

    .line 920
    .local v7, "timeOut":Ljava/lang/String;
    const-string v8, ""

    .line 922
    .local v8, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "snoozeDefaultArrayLength":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 923
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 925
    .local v1, "currentSnoozeConfigObject":Lorg/json/JSONObject;
    const-string v10, "url"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 926
    const-string v10, "progress_percent"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 927
    const-string v10, "time_out"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 929
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v10, "||"

    invoke-direct {v6, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .local v6, "snoozeTokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 931
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 932
    const-string v11, "com.payu.custombrowser.snoozepref"

    const-string v10, "*"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "*"

    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v11, v10, v12}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->addStringToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v10, "*"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "*"

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "||"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 936
    .end local v1    # "currentSnoozeConfigObject":Lorg/json/JSONObject;
    .end local v5    # "snoozeDefaultArrayLength":I
    .end local v6    # "snoozeTokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v2

    .line 937
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 939
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-object p3

    .line 932
    .restart local v1    # "currentSnoozeConfigObject":Lorg/json/JSONObject;
    .restart local v5    # "snoozeDefaultArrayLength":I
    .restart local v6    # "snoozeTokenizer":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 933
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_3

    .line 922
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public static updateLastUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "lastUrl"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x80

    .line 171
    :try_start_0
    const-string v4, "||"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 173
    const/4 v4, 0x0

    const/16 v5, 0x7f

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 188
    .end local p0    # "lastUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 177
    .restart local p0    # "lastUrl":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "||"

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "firstURl":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "secondUrl":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 181
    const/4 v4, 0x0

    const/16 v5, 0x7d

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 183
    const/4 v4, 0x0

    const/16 v5, 0x7d

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 184
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 186
    .end local v1    # "firstURl":Ljava/lang/String;
    .end local v2    # "secondUrl":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const-string p0, ""

    goto :goto_0
.end method

.method public static updateRetryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p0, p1}, Lcom/payu/custombrowser/util/CBUtil;->setRetryData(Ljava/lang/String;Landroid/content/Context;)V

    .line 328
    invoke-static {p0}, Lcom/payu/custombrowser/util/CBUtil;->processAndAddWhiteListedUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelTimer(Ljava/util/Timer;)V
    .locals 0
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 693
    if-eqz p1, :cond_0

    .line 694
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 695
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 697
    :cond_0
    return-void
.end method

.method public convertToSnoozeConfigMap(Ljava/util/Map;)Lcom/payu/custombrowser/util/SnoozeConfigMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/payu/custombrowser/util/SnoozeConfigMap;"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, "snoozeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v1, Lcom/payu/custombrowser/util/SnoozeConfigMap;

    invoke-direct {v1}, Lcom/payu/custombrowser/util/SnoozeConfigMap;-><init>()V

    .line 952
    .local v1, "snoozeConfigMap":Lcom/payu/custombrowser/util/SnoozeConfigMap;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 953
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 955
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    return-object v1
.end method

.method public deleteSharedPrefKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 638
    :try_start_0
    const-string v2, "com.payu.custombrowser.payucustombrowser"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 639
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v1    # "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBooleanSharedPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 381
    const-string v0, "com.payu.custombrowser.payucustombrowser"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/util/CBUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 382
    sget-object v0, Lcom/payu/custombrowser/util/CBUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanSharedPreferenceDefaultTrue(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    const-string v0, "com.payu.custombrowser.payucustombrowser"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/util/CBUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 393
    sget-object v0, Lcom/payu/custombrowser/util/CBUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 768
    const-string v2, ""

    .line 771
    .local v2, "cookieValue":Ljava/lang/String;
    :try_start_0
    const-string v5, "https://mobiletest.payu.in"

    .line 772
    .local v5, "siteName":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 773
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_0

    .line 774
    invoke-static {p2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 775
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 777
    :cond_0
    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, "cookies":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 779
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 780
    .local v6, "temp":[Ljava/lang/String;
    array-length v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v0, v6, v8

    .line 781
    .local v0, "ar1":Ljava/lang/String;
    const-string v10, "testbackward"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cokkies"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 783
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 784
    .local v7, "temp1":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v2, v7, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v7    # "temp1":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "ar1":Ljava/lang/String;
    .end local v1    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v3    # "cookies":Ljava/lang/String;
    .end local v5    # "siteName":Ljava/lang/String;
    .end local v6    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 789
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method

.method public getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 797
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "list":[Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v3, v4

    .line 799
    .local v1, "item":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, "items":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 801
    aget-object v0, v2, v5

    .line 802
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 803
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 807
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 798
    .restart local v1    # "item":Ljava/lang/String;
    .restart local v2    # "items":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method public getDataFromPostData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "postData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 819
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 820
    .local v1, "postParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 821
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .local v2, "tokens":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "keyValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v5

    if-eqz v3, :cond_0

    .line 825
    aget-object v4, v0, v5

    array-length v3, v0

    if-le v3, v6, :cond_1

    aget-object v3, v0, v6

    :goto_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 829
    .end local v0    # "keyValue":[Ljava/lang/String;
    .end local v2    # "tokens":Ljava/util/StringTokenizer;
    :cond_2
    return-object v1
.end method

.method public getDeviceDensity(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 414
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 415
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 683
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getHttpsConn(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "strURL"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 251
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 252
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "Content-Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 256
    .local v2, "postParamsByte":[B
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "postParamsByte":[B
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetWorkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 501
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 502
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 503
    .local v4, "network":Landroid/net/NetworkInfo;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 504
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    .line 505
    .local v6, "networks":[Landroid/net/Network;
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v3, v6, v7

    .line 506
    .local v3, "mNetwork":Landroid/net/Network;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 507
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 508
    move-object v4, v5

    .line 505
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 513
    .end local v3    # "mNetwork":Landroid/net/Network;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "networks":[Landroid/net/Network;
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 514
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 515
    array-length v8, v2

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v0, v2, v7

    .line 516
    .local v0, "anInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_2

    .line 517
    move-object v4, v0

    .line 515
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "anInfo":Landroid/net/NetworkInfo;
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_3
    return-object v4
.end method

.method public getNetworkStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    if-eqz p1, :cond_3

    .line 458
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 459
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 460
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 461
    :cond_0
    const-string v4, "Not connected"

    .line 497
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 462
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 463
    const-string v4, "WIFI"

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_3

    .line 465
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 466
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_0

    .line 490
    const-string v4, "?"

    goto :goto_0

    .line 468
    :pswitch_0
    const-string v4, "GPRS"

    goto :goto_0

    .line 470
    :pswitch_1
    const-string v4, "EDGE"

    goto :goto_0

    .line 472
    :pswitch_2
    const-string v4, "CDMA"

    goto :goto_0

    .line 475
    :pswitch_3
    const-string v4, "2G"

    goto :goto_0

    .line 482
    :pswitch_4
    const-string v4, "HSPA"

    goto :goto_0

    .line 486
    :pswitch_5
    const-string v4, "3G"

    goto :goto_0

    .line 488
    :pswitch_6
    const-string v4, "4G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "networkType":I
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "?"

    goto :goto_0

    .line 497
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "?"

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getNetworkStrength(Landroid/content/Context;)I
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 531
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/util/CBUtil;->getNetWorkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 533
    .local v2, "network":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 534
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MOBILE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 535
    invoke-direct {p0, p1, v2}, Lcom/payu/custombrowser/util/CBUtil;->getMobileStrength(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result v4

    .line 550
    :cond_0
    :goto_0
    return v4

    .line 536
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, p1, v5}, Lcom/payu/custombrowser/util/CBUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 539
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 540
    .local v0, "connectionInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 544
    .end local v0    # "connectionInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 626
    const-string v1, "com.payu.custombrowser.payucustombrowser"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 627
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readFileInputStream(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "contextMode"    # I

    .prologue
    .line 709
    const-string v4, ""

    .line 711
    .local v4, "temp":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 712
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 713
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 715
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 716
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, v0

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 727
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    return-object v4

    .line 720
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 722
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 723
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 724
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 665
    const-string v2, "com.payu.custombrowser.payucustombrowser"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 666
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 667
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 668
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 669
    return-void
.end method

.method public setBooleanSharedPreference(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    const-string v1, "com.payu.custombrowser.payucustombrowser"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    return-void
.end method

.method public setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/payu/custombrowser/util/CBUtil;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    move-object v1, p3

    .line 617
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/payu/custombrowser/util/CBUtil;->storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void

    .line 610
    :cond_0
    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 613
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, "||"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLandroid/support/v4/app/NotificationCompat$Style;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;
    .param p5, "smallIcon"    # I
    .param p6, "autoCancel"    # Z
    .param p7, "style"    # Landroid/support/v4/app/NotificationCompat$Style;
    .param p8, "color"    # I
    .param p9, "ID"    # I

    .prologue
    .line 844
    new-instance v0, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    .local v0, "mBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    invoke-virtual {v0, p3}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 846
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 847
    invoke-virtual {v3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 848
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 849
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 851
    if-eqz p6, :cond_0

    .line 852
    invoke-virtual {v0, p6}, Landroid/support/v7/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 855
    :cond_0
    if-eqz p7, :cond_1

    .line 856
    invoke-virtual {v0, p7}, Landroid/support/v7/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 859
    :cond_1
    const/4 v3, -0x1

    if-eq p8, v3, :cond_2

    .line 860
    invoke-virtual {v0, p8}, Landroid/support/v7/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 862
    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 863
    .local v2, "notifyPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 864
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 865
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, p9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 868
    return-void
.end method

.method public storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 654
    const-string v2, "com.payu.custombrowser.payucustombrowser"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 655
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 656
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 658
    return-void
.end method

.method public storeSnoozeConfigInSharedPref(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/custombrowser/util/SnoozeConfigMap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snoozeConfig"    # Ljava/lang/String;

    .prologue
    .line 894
    new-instance v2, Lcom/payu/custombrowser/util/SnoozeConfigMap;

    invoke-direct {v2}, Lcom/payu/custombrowser/util/SnoozeConfigMap;-><init>()V

    .line 896
    .local v2, "snoozeConfigMap":Lcom/payu/custombrowser/util/SnoozeConfigMap;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 899
    .local v3, "snoozeConfigObject":Lorg/json/JSONObject;
    const-string v4, "com.payu.custombrowser.snoozepref"

    invoke-static {p1, v4}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->removeAllFromSharedPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 901
    const-string v4, "default"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, p1, v4, v2}, Lcom/payu/custombrowser/util/CBUtil;->storeSnoozeConfigInSharedPref(Landroid/content/Context;Lorg/json/JSONArray;Lcom/payu/custombrowser/util/SnoozeConfigMap;)Lcom/payu/custombrowser/util/SnoozeConfigMap;

    move-result-object v2

    .line 903
    const-string v4, "default"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 904
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 905
    .local v1, "snoozeConfigIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, p1, v4, v2}, Lcom/payu/custombrowser/util/CBUtil;->storeSnoozeConfigInSharedPref(Landroid/content/Context;Lorg/json/JSONArray;Lcom/payu/custombrowser/util/SnoozeConfigMap;)Lcom/payu/custombrowser/util/SnoozeConfigMap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 912
    .end local v1    # "snoozeConfigIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "snoozeConfigObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeFileOutputStream(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contextMode"    # I

    .prologue
    .line 743
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 744
    .local v4, "responseInputStream":Ljava/util/zip/GZIPInputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 746
    .local v0, "buf":[B
    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 747
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 748
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 752
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "responseInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 750
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "responseInputStream":Ljava/util/zip/GZIPInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 751
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 754
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "responseInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
