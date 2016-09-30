.class public Lcom/payu/india/Payu/PayuUtils;
.super Ljava/lang/Object;
.source "PayuUtils.java"


# static fields
.field public static SBI_MAES_BIN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static cbVersion:Ljava/lang/String;

.field private static keyAnalyticsUtil:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    .line 90
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504435"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504645"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504775"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504809"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504993"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "600206"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "603845"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "622018"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504774"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAnalyticsKeyFromConfig(Lcom/payu/india/Model/PayuConfig;)Ljava/lang/String;
    .locals 10
    .param p0, "payuConfig"    # Lcom/payu/india/Model/PayuConfig;

    .prologue
    const/4 v6, 0x0

    .line 606
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v5

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "list":[Ljava/lang/String;
    array-length v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v2, v4, v7

    .line 608
    .local v2, "item":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "items":[Ljava/lang/String;
    array-length v5, v3

    const/4 v9, 0x2

    if-lt v5, v9, :cond_1

    .line 610
    const/4 v5, 0x0

    aget-object v1, v3, v5

    .line 611
    .local v1, "id":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 607
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 611
    .restart local v1    # "id":Ljava/lang/String;
    :pswitch_0
    const-string v9, "key"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v6

    goto :goto_1

    .line 613
    :pswitch_1
    const/4 v5, 0x1

    aget-object v5, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "items":[Ljava/lang/String;
    .end local v4    # "list":[Ljava/lang/String;
    :goto_2
    return-object v5

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x19e5f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDeviceDensity(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 350
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 351
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 352
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

.method static getNetworkStatus(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 299
    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 300
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 301
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 302
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    :cond_0
    const-string v4, "Not connected"

    .line 339
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 304
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 305
    const-string v4, "WIFI"

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_3

    .line 307
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 308
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_0

    .line 332
    const-string v4, "?"

    goto :goto_0

    .line 310
    :pswitch_0
    const-string v4, "GPRS"

    goto :goto_0

    .line 312
    :pswitch_1
    const-string v4, "EDGE"

    goto :goto_0

    .line 314
    :pswitch_2
    const-string v4, "CDMA"

    goto :goto_0

    .line 317
    :pswitch_3
    const-string v4, "2G"

    goto :goto_0

    .line 324
    :pswitch_4
    const-string v4, "HSPA"

    goto :goto_0

    .line 328
    :pswitch_5
    const-string v4, "3G"

    goto :goto_0

    .line 330
    :pswitch_6
    const-string v4, "4G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "networkType":I
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "?"

    goto :goto_0

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "?"

    goto :goto_0

    .line 308
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

.method private getNetworkStrength(Landroid/app/Activity;)I
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 365
    :try_start_0
    const-string v12, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 366
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v7

    .line 367
    .local v7, "netInfo":[Landroid/net/NetworkInfo;
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 369
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v9, 0x0

    .line 371
    .local v9, "strength":I
    array-length v13, v7

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_5

    aget-object v8, v7, v12

    .line 373
    .local v8, "networkInfo":Landroid/net/NetworkInfo;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x12

    if-lt v14, v15, :cond_4

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MOBILE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 375
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    .line 376
    .local v5, "info":Landroid/telephony/CellInfo;
    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 377
    instance-of v15, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v15, :cond_1

    .line 378
    check-cast v5, Landroid/telephony/CellInfoGsm;

    .end local v5    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v4

    .line 379
    .local v4, "gsm":Landroid/telephony/CellSignalStrengthGsm;
    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v9

    .line 380
    goto :goto_1

    .end local v4    # "gsm":Landroid/telephony/CellSignalStrengthGsm;
    .restart local v5    # "info":Landroid/telephony/CellInfo;
    :cond_1
    instance-of v15, v5, Landroid/telephony/CellInfoCdma;

    if-eqz v15, :cond_2

    .line 381
    check-cast v5, Landroid/telephony/CellInfoCdma;

    .end local v5    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    .line 382
    .local v1, "cdma":Landroid/telephony/CellSignalStrengthCdma;
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v9

    .line 383
    goto :goto_1

    .end local v1    # "cdma":Landroid/telephony/CellSignalStrengthCdma;
    .restart local v5    # "info":Landroid/telephony/CellInfo;
    :cond_2
    instance-of v15, v5, Landroid/telephony/CellInfoLte;

    if-eqz v15, :cond_3

    .line 384
    check-cast v5, Landroid/telephony/CellInfoLte;

    .end local v5    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    .line 385
    .local v6, "lte":Landroid/telephony/CellSignalStrengthLte;
    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v9

    .line 386
    goto :goto_1

    .end local v6    # "lte":Landroid/telephony/CellSignalStrengthLte;
    .restart local v5    # "info":Landroid/telephony/CellInfo;
    :cond_3
    instance-of v15, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v15, :cond_0

    .line 387
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .end local v5    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v11

    .line 388
    .local v11, "wcdma":Landroid/telephony/CellSignalStrengthWcdma;
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_1

    .line 371
    .end local v11    # "wcdma":Landroid/telephony/CellSignalStrengthWcdma;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 395
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v7    # "netInfo":[Landroid/net/NetworkInfo;
    .end local v8    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "strength":I
    .end local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    return v9
.end method

.method public static getStringValueFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 906
    const/4 v1, 0x0

    .line 908
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 912
    .end local v1    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 909
    .end local v2    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 912
    .end local v1    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object v2, v1

    .end local v1    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private getVariableReflection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 626
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 627
    .local v1, "mClass":Ljava/lang/Class;
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 628
    .local v2, "mField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 636
    .end local v1    # "mClass":Ljava/lang/Class;
    .end local v2    # "mField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v3, v4

    .line 636
    goto :goto_0

    .line 631
    :catch_1
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 633
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setAnalyticsKeyCB(Lcom/payu/india/Model/PayuConfig;)V
    .locals 1
    .param p0, "payuConfig"    # Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 548
    invoke-static {p0}, Lcom/payu/india/Payu/PayuUtils;->getAnalyticsKeyFromConfig(Lcom/payu/india/Model/PayuConfig;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "analyticsKey":Ljava/lang/String;
    invoke-static {v0}, Lcom/payu/india/Payu/PayuUtils;->setAnalyticsKeyCB(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public static setAnalyticsKeyCB(Ljava/lang/String;)V
    .locals 5
    .param p0, "analyticsKey"    # Ljava/lang/String;

    .prologue
    .line 560
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    sput-object p0, Lcom/payu/india/Payu/PayuUtils;->keyAnalyticsUtil:Ljava/lang/String;

    .line 562
    const-string v3, "com.payu.custombrowser.Bank"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 563
    .local v0, "aClass":Ljava/lang/Class;
    const-string v3, "keyAnalytics"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 564
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 565
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVariableCB(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .param p0, "pakageName"    # Ljava/lang/String;
    .param p2, "Version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "cbAnalyticsKeys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 578
    .local v0, "aClass":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    .local v3, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 581
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 582
    const/4 v5, 0x0

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 584
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 588
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 589
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 590
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/payu/india/Payu/PayuUtils;->cbVersion:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 594
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 591
    :catch_1
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deviceAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "merchantKey"    # Ljava/lang/String;
    .param p3, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 410
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 411
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 413
    .local v1, "deviceDetails":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/payu/india/Payu/PayuUtils;->getDeviceDensity(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v3, "device_manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v3, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    sget-object v3, Lcom/payu/india/Payu/PayuUtils;->keyAnalyticsUtil:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/payu/india/Payu/PayuUtils;->keyAnalyticsUtil:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    const-string v3, "merchant_key"

    sget-object v4, Lcom/payu/india/Payu/PayuUtils;->keyAnalyticsUtil:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    :goto_0
    const-string v3, "txnid"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v3, "sdk_version"

    const-string v4, "4.3.8"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v3, "cb_version"

    sget-object v4, Lcom/payu/india/Payu/PayuUtils;->cbVersion:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v3, "os_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v3, "network_info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/payu/india/Payu/PayuUtils;->getNetworkStatus(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v3, "network_strength"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/payu/india/Payu/PayuUtils;->getNetworkStrength(Landroid/app/Activity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_1
    new-instance v3, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    const-string v4, "sdk_local_cache_device"

    invoke-direct {v3, v0, v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->log(Ljava/lang/String;)V

    .line 433
    return-void

    .line 420
    :cond_0
    :try_start_1
    const-string v3, "merchant_key"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/payu/india/Payu/PayuUtils;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v1, "PayuPreference"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getImei()Ljava/lang/String;
    .locals 5

    .prologue
    .line 924
    :try_start_0
    invoke-static {}, Lcom/payu/india/Payu/Payu;->getInstance()Lcom/payu/india/Payu/Payu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Payu/Payu;->getCallingAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 925
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 929
    .end local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    .local v1, "imei":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 926
    .end local v1    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "default"

    .restart local v1    # "imei":Ljava/lang/String;
    goto :goto_0
.end method

.method public getIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "mCardNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 164
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "VISA"

    .line 188
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const-string v0, "^508[5-9][0-9][0-9]|60698[5-9]|60699[0-9]|607[0-8][0-9][0-9]|6079[0-7][0-9]|60798[0-4]|(?!608000)608[0-4][0-9][0-9]|608500|6521[5-9][0-9]|652[2-9][0-9][0-9]|6530[0-9][0-9]|6531[0-4][0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "RUPAY"

    goto :goto_0

    .line 168
    :cond_1
    const-string v0, "^((6304)|(6706)|(6771)|(6709))[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    const-string v0, "LASER"

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "6(?:011|5[0-9]{2})[0-9]{12}[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    const-string v0, "LASER"

    goto :goto_0

    .line 172
    :cond_3
    const-string v0, "(5[06-8]|6\\d)\\d{14}(\\d{2,3})?[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "(5[06-8]|6\\d)[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "((504([435|645|774|775|809|993]))|(60([0206]|[3845]))|(622[018])\\d)[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_5

    .line 174
    sget-object v0, Lcom/payu/india/Payu/PayuUtils;->SBI_MAES_BIN:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    const-string v0, "SMAE"

    goto :goto_0

    .line 178
    :cond_5
    const-string v0, "MAES"

    goto :goto_0

    .line 179
    :cond_6
    const-string v0, "^5[1-5][\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    const-string v0, "MAST"

    goto :goto_0

    .line 181
    :cond_7
    const-string v0, "^3[47][\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    const-string v0, "AMEX"

    goto :goto_0

    .line 183
    :cond_8
    const-string v0, "36"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "^30[0-5][\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "2(014|149)[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 184
    :cond_9
    const-string v0, "DINR"

    goto/16 :goto_0

    .line 185
    :cond_a
    const-string v0, "^35(2[89]|[3-8][0-9])[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    const-string v0, "JCB"

    goto/16 :goto_0

    .line 188
    :cond_b
    const-string v0, ""

    goto/16 :goto_0
.end method

.method protected getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 1
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v0, "ERROR"

    invoke-virtual {p0, p1, v0, p2}, Lcom/payu/india/Payu/PayuUtils;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v0

    return-object v0
.end method

.method protected getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 1
    .param p1, "code"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Lcom/payu/india/Model/PostData;

    invoke-direct {v0}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 281
    .local v0, "postData":Lcom/payu/india/Model/PostData;
    invoke-virtual {v0, p1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 282
    invoke-virtual {v0, p2}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p3}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 284
    return-object v0
.end method

.method protected getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 256
    const/16 v0, 0x1389

    const-string v1, "ERROR"

    invoke-virtual {p0, v0, v1, p1}, Lcom/payu/india/Payu/PayuUtils;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v0

    return-object v0
.end method

.method public getStoredCard(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v2, "oneClickCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v4, "storedCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v1, "cardMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;>;"
    const-string v5, "PayuPreference"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 501
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz p2, :cond_3

    .line 502
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    .line 503
    .local v0, "card":Lcom/payu/india/Model/StoredCard;
    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardBin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SMAE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 504
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    .end local v0    # "card":Lcom/payu/india/Model/StoredCard;
    :cond_3
    const-string v5, "one_click_checkout"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v5, "store_card"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-object v1
.end method

.method public getStoredCard(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    .local p2, "oneClickCardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v2, "oneClickCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v3, "storedCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v1, "cardMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;>;"
    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    .line 530
    .local v0, "card":Lcom/payu/india/Model/StoredCard;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 531
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    .end local v0    # "card":Lcom/payu/india/Model/StoredCard;
    :cond_1
    const-string v4, "one_click_checkout"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v4, "store_card"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-object v1
.end method

.method public getTransactionResponse(Ljava/lang/String;)Lcom/payu/india/Model/TransactionResponse;
    .locals 7
    .param p1, "transactionRespObj"    # Ljava/lang/String;

    .prologue
    .line 641
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 642
    .local v2, "mJSONObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/payu/india/Model/TransactionResponse;

    invoke-direct {v3}, Lcom/payu/india/Model/TransactionResponse;-><init>()V

    .line 643
    .local v3, "transactionResponse":Lcom/payu/india/Model/TransactionResponse;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 645
    .local v1, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    .end local v1    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "mJSONObject":Lorg/json/JSONObject;
    .end local v3    # "transactionResponse":Lcom/payu/india/Model/TransactionResponse;
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 894
    const/4 v3, 0x0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v3

    .line 646
    .restart local v1    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "mJSONObject":Lorg/json/JSONObject;
    .restart local v3    # "transactionResponse":Lcom/payu/india/Model/TransactionResponse;
    :sswitch_0
    :try_start_1
    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "mode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "unmappedstatus"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "txnid"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "transaction_fee"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string v6, "cardCategory"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_8
    const-string v6, "discount"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_9
    const-string v6, "additional_charges"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "addedon"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "productinfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "firstname"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "email"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v6, "udf1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v6, "udf2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "udf3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v6, "udf4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v6, "udf5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v6, "hash"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v6, "field1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v6, "field2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v6, "field3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v6, "field4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v6, "field9"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v6, "payment_source"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v6, "PG_TYPE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v6, "bank_ref_num"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v6, "ibibo_code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v6, "error_code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v6, "Error_Message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string v6, "card_token"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v6, "name_on_card"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v6, "card_no"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v6, "issuingBank"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string v6, "card_type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string v6, "is_seamless"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v6, "surl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string v6, "furl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string v6, "merchant_hash"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x27

    goto/16 :goto_1

    .line 654
    :pswitch_1
    const-string v4, "mode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    const-string v4, "mode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 660
    :pswitch_2
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    :pswitch_3
    const-string v4, "unmappedstatus"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    const-string v4, "unmappedstatus"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setUnMappedStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    :pswitch_4
    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 673
    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    :pswitch_5
    const-string v4, "txnid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    const-string v4, "txnid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setTxnid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    :pswitch_6
    const-string v4, "transaction_fee"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    const-string v4, "transaction_fee"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setTransactionFee(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    :pswitch_7
    const-string v4, "cardCategory"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 691
    const-string v4, "cardCategory"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setCardCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    :pswitch_8
    const-string v4, "discount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    const-string v4, "discount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setDiscount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    :pswitch_9
    const-string v4, "additional_charges"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 703
    const-string v4, "additional_charges"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setAdditionalCharges(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :pswitch_a
    const-string v4, "addedon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    const-string v4, "addedon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setAddedOn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 714
    :pswitch_b
    const-string v4, "productinfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 715
    const-string v4, "productinfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setProductInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    :pswitch_c
    const-string v4, "firstname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    const-string v4, "firstname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setFirstName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    :pswitch_d
    const-string v4, "email"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    const-string v4, "email"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :pswitch_e
    const-string v4, "udf1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    const-string v4, "udf1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setUdf1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :pswitch_f
    const-string v4, "udf2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 739
    const-string v4, "udf2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setUdf2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 744
    :pswitch_10
    const-string v4, "udf3"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    const-string v4, "udf3"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setUdf3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :pswitch_11
    const-string v4, "udf4"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    const-string v4, "udf4"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setUdf4(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    :pswitch_12
    const-string v4, "udf5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    const-string v4, "udf5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setUdf5(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :pswitch_13
    const-string v4, "hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 763
    const-string v4, "hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setHash(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    :pswitch_14
    const-string v4, "field1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 769
    const-string v4, "field1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setField1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    :pswitch_15
    const-string v4, "field2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    const-string v4, "field2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setField2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :pswitch_16
    const-string v4, "field3"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    const-string v4, "field3"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setField3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :pswitch_17
    const-string v4, "field4"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    const-string v4, "field4"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setField4(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :pswitch_18
    const-string v4, "field9"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 793
    const-string v4, "field9"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setField9(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    :pswitch_19
    const-string v4, "payment_source"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 799
    const-string v4, "payment_source"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setPaymentSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :pswitch_1a
    const-string v4, "PG_TYPE"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 805
    const-string v4, "PG_TYPE"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setPgType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    :pswitch_1b
    const-string v4, "bank_ref_num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const-string v4, "bank_ref_num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setBankRefNo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :pswitch_1c
    const-string v4, "ibibo_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    const-string v4, "ibibo_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setIbiboCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    :pswitch_1d
    const-string v4, "error_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    const-string v4, "error_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setErrorCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    :pswitch_1e
    const-string v4, "Error_Message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 829
    const-string v4, "Error_Message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :pswitch_1f
    const-string v4, "card_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    const-string v4, "card_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setCardToken(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    :pswitch_20
    const-string v4, "name_on_card"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 841
    const-string v4, "name_on_card"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setNameOnCard(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :pswitch_21
    const-string v4, "card_no"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 847
    const-string v4, "card_no"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setCardNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    :pswitch_22
    const-string v4, "issuingBank"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 853
    const-string v4, "issuingBank"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setIssuingBank(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 858
    :pswitch_23
    const-string v4, "card_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 859
    const-string v4, "card_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setCardType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 864
    :pswitch_24
    const-string v4, "is_seamless"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 865
    const-string v4, "is_seamless"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setIsSeamless(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 870
    :pswitch_25
    const-string v4, "surl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    const-string v4, "surl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setSurl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 876
    :pswitch_26
    const-string v4, "furl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 877
    const-string v4, "furl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setFurl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 883
    :pswitch_27
    const-string v4, "merchant_hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 884
    const-string v4, "merchant_hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/TransactionResponse;->setMerchantHash(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d5cb1d1 -> :sswitch_1c
        -0x69653302 -> :sswitch_3
        -0x58dedde3 -> :sswitch_b
        -0x4bfa8189 -> :sswitch_14
        -0x4bfa8188 -> :sswitch_15
        -0x4bfa8187 -> :sswitch_16
        -0x4bfa8186 -> :sswitch_17
        -0x4bfa8181 -> :sswitch_18
        -0x446e5121 -> :sswitch_a
        -0x3532300e -> :sswitch_2
        -0x3290ff8c -> :sswitch_19
        -0xe9ac8f7 -> :sswitch_23
        0xd1b -> :sswitch_0
        0x19e5f -> :sswitch_4
        0x302349 -> :sswitch_26
        0x30c10e -> :sswitch_13
        0x3339a3 -> :sswitch_1
        0x360c1c -> :sswitch_25
        0x36b35a -> :sswitch_e
        0x36b35b -> :sswitch_f
        0x36b35c -> :sswitch_10
        0x36b35d -> :sswitch_11
        0x36b35e -> :sswitch_12
        0x5c24b9c -> :sswitch_d
        0x67cd882 -> :sswitch_1a
        0x69add05 -> :sswitch_5
        0x7f9753b -> :sswitch_c
        0x8e5940c -> :sswitch_24
        0x10487541 -> :sswitch_8
        0x1a0bc2d7 -> :sswitch_1b
        0x1ea78c2e -> :sswitch_7
        0x1f48b890 -> :sswitch_1e
        0x21045d50 -> :sswitch_21
        0x3b3d0c0a -> :sswitch_1f
        0x4772bc27 -> :sswitch_9
        0x4b4ceea5 -> :sswitch_6
        0x5760d2b2 -> :sswitch_22
        0x617e99c4 -> :sswitch_1d
        0x78c35fbc -> :sswitch_20
        0x7b888d25 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method protected getUdid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 939
    :try_start_0
    invoke-static {}, Lcom/payu/india/Payu/Payu;->getInstance()Lcom/payu/india/Payu/Payu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Payu/Payu;->getCallingAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 944
    .local v1, "udid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 940
    .end local v1    # "udid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "default"

    .restart local v1    # "udid":Ljava/lang/String;
    goto :goto_0
.end method

.method public luhn(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "sum":I
    const/4 v0, 0x0

    .line 138
    .local v0, "alternate":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 139
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "n":I
    if-eqz v0, :cond_0

    .line 141
    mul-int/lit8 v2, v2, 0x2

    .line 142
    const/16 v6, 0x9

    if-le v2, v6, :cond_0

    .line 143
    rem-int/lit8 v6, v2, 0xa

    add-int/lit8 v2, v6, 0x1

    .line 146
    :cond_0
    add-int/2addr v3, v2

    .line 147
    if-nez v0, :cond_1

    move v0, v4

    .line 138
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v0, v5

    .line 147
    goto :goto_1

    .line 149
    .end local v2    # "n":I
    :cond_2
    rem-int/lit8 v6, v3, 0xa

    if-nez v6, :cond_3

    .line 150
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 152
    :goto_2
    return-object v4

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2
.end method

.method public removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string v2, "PayuPreference"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 481
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 482
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 484
    return-void
.end method

.method public storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 444
    const-string v2, "PayuPreference"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 445
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 446
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 448
    return-void
.end method

.method protected trimAmpersand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "data":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VISA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 114
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 116
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-gt v0, v1, :cond_5

    .line 118
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DINR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_6

    .line 120
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :cond_6
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    .line 122
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :cond_7
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JCB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 124
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->luhn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public validateCvv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "cvv"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p0, p1}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "issuer":Ljava/lang/String;
    const-string v3, "SMAE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 208
    goto :goto_0

    .line 210
    :cond_2
    const-string v3, "AMEX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    move v3, v1

    :goto_1
    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 212
    const-string v3, "AMEX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 215
    goto :goto_0

    :cond_4
    move v3, v2

    .line 210
    goto :goto_1
.end method

.method public validateExpiry(II)Z
    .locals 5
    .param p1, "expiryMonth"    # I
    .param p2, "expiryYear"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 227
    .local v0, "calendar":Ljava/util/Calendar;
    if-lt p1, v1, :cond_0

    const/16 v3, 0xc

    if-gt p1, v3, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 232
    :cond_1
    :goto_0
    return v1

    .line 229
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v3, p2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v3, p1, :cond_1

    :cond_3
    move v1, v2

    .line 230
    goto :goto_0
.end method
