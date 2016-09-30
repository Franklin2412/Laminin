.class public Lcom/payu/india/Tasks/GetOfferStatusTask;
.super Landroid/os/AsyncTask;
.source "GetOfferStatusTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/payu/india/Model/PayuConfig;",
        "Ljava/lang/String;",
        "Lcom/payu/india/Model/PayuResponse;",
        ">;"
    }
.end annotation


# instance fields
.field mGetOfferStatusApiListener:Lcom/payu/india/Interfaces/GetOfferStatusApiListener;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/GetOfferStatusApiListener;)V
    .locals 0
    .param p1, "getOfferStatusApiListener"    # Lcom/payu/india/Interfaces/GetOfferStatusApiListener;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/payu/india/Tasks/GetOfferStatusTask;->mGetOfferStatusApiListener:Lcom/payu/india/Interfaces/GetOfferStatusApiListener;

    .line 56
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 20
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 60
    new-instance v9, Lcom/payu/india/Model/PayuResponse;

    invoke-direct {v9}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 61
    .local v9, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v10, Lcom/payu/india/Model/PostData;

    invoke-direct {v10}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 64
    .local v10, "postData":Lcom/payu/india/Model/PostData;
    const/4 v15, 0x0

    .line 66
    .local v15, "url":Ljava/net/URL;
    const/16 v17, 0x0

    :try_start_0
    aget-object v7, p1, v17

    .line 69
    .local v7, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 83
    new-instance v16, Ljava/net/URL;

    const-string v17, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v15    # "url":Ljava/net/URL;
    .local v16, "url":Ljava/net/URL;
    move-object/from16 v15, v16

    .line 87
    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 89
    .local v11, "postParamsByte":[B
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 90
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v17, "Content-Length"

    array-length v0, v11

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 94
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 96
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 97
    .local v13, "responseInputStream":Ljava/io/InputStream;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v14, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 99
    .local v2, "byteContainer":[B
    :goto_1
    invoke-virtual {v13, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "i":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_0

    .line 100
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v2, v1, v5}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 153
    .end local v2    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v11    # "postParamsByte":[B
    .end local v13    # "responseInputStream":Ljava/io/InputStream;
    .end local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 154
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v9, v10}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 161
    return-object v9

    .line 71
    .restart local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v16, Ljava/net/URL;

    const-string v17, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v15    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move-object/from16 v15, v16

    .line 72
    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    goto :goto_0

    .line 74
    :pswitch_1
    new-instance v16, Ljava/net/URL;

    const-string v17, "https://mobiletest.payu.in/merchant/postservice?form=2"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v15    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move-object/from16 v15, v16

    .line 75
    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 77
    :pswitch_2
    new-instance v16, Ljava/net/URL;

    const-string v17, "https://test.payu.in/merchant/postservice?form=2"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v15    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move-object/from16 v15, v16

    .line 78
    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 80
    :pswitch_3
    new-instance v16, Ljava/net/URL;

    const-string v17, "https://mobiledev.payu.in/merchant/postservice?form=2"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v15    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move-object/from16 v15, v16

    .line 81
    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 103
    .restart local v2    # "byteContainer":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v11    # "postParamsByte":[B
    .restart local v13    # "responseInputStream":Ljava/io/InputStream;
    .restart local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v12, "response":Lorg/json/JSONObject;
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 106
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_3

    .line 109
    const/16 v17, 0x139b

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 110
    const-string v17, "ERROR"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 115
    :goto_4
    new-instance v8, Lcom/payu/india/Model/PayuOffer;

    invoke-direct {v8}, Lcom/payu/india/Model/PayuOffer;-><init>()V

    .line 117
    .local v8, "payuOffer":Lcom/payu/india/Model/PayuOffer;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 119
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_2
    move/from16 v17, v18

    :goto_6
    packed-switch v17, :pswitch_data_1

    goto :goto_5

    .line 122
    :pswitch_4
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setStatus(Ljava/lang/String;)V

    goto :goto_5

    .line 153
    .end local v2    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v8    # "payuOffer":Lcom/payu/india/Model/PayuOffer;
    .end local v11    # "postParamsByte":[B
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v13    # "responseInputStream":Ljava/io/InputStream;
    .end local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    goto/16 :goto_2

    .line 112
    .restart local v2    # "byteContainer":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v11    # "postParamsByte":[B
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v13    # "responseInputStream":Ljava/io/InputStream;
    .restart local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 113
    const-string v17, "SUCCESS"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 155
    .end local v2    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v11    # "postParamsByte":[B
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v13    # "responseInputStream":Ljava/io/InputStream;
    .end local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 120
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "byteContainer":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v8    # "payuOffer":Lcom/payu/india/Model/PayuOffer;
    .restart local v11    # "postParamsByte":[B
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v13    # "responseInputStream":Ljava/io/InputStream;
    .restart local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :sswitch_0
    :try_start_2
    const-string v19, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    goto :goto_6

    :sswitch_1
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    goto :goto_6

    :sswitch_2
    const-string v19, "error_code"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x2

    goto :goto_6

    :sswitch_3
    const-string v19, "offer_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x3

    goto :goto_6

    :sswitch_4
    const-string v19, "offer_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x4

    goto :goto_6

    :sswitch_5
    const-string v19, "offer_availed_count"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x5

    goto/16 :goto_6

    :sswitch_6
    const-string v19, "offer_remaining_count"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x6

    goto/16 :goto_6

    :sswitch_7
    const-string v19, "discount"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x7

    goto/16 :goto_6

    :sswitch_8
    const-string v19, "category"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x8

    goto/16 :goto_6

    .line 125
    :pswitch_5
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 155
    .end local v2    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v8    # "payuOffer":Lcom/payu/india/Model/PayuOffer;
    .end local v11    # "postParamsByte":[B
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v13    # "responseInputStream":Ljava/io/InputStream;
    .end local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v4

    goto/16 :goto_7

    .line 128
    .restart local v2    # "byteContainer":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v8    # "payuOffer":Lcom/payu/india/Model/PayuOffer;
    .restart local v11    # "postParamsByte":[B
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v13    # "responseInputStream":Ljava/io/InputStream;
    .restart local v14    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :pswitch_6
    const-string v17, "error_code"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setErrorCode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 131
    :pswitch_7
    const-string v17, "offer_key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setOfferKey(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 134
    :pswitch_8
    const-string v17, "offer_type"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setOfferType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 137
    :pswitch_9
    const-string v17, "offer_availed_count"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setOfferAvailedCount(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 140
    :pswitch_a
    const-string v17, "offer_remaining_count"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setOfferRemainingCount(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 143
    :pswitch_b
    const-string v17, "discount"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setDiscount(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 146
    :pswitch_c
    const-string v17, "category"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PayuOffer;->setCategory(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 151
    :cond_4
    invoke-virtual {v9, v8}, Lcom/payu/india/Model/PayuResponse;->setPayuOffer(Lcom/payu/india/Model/PayuOffer;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 120
    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_0
        -0x270a3145 -> :sswitch_5
        -0x1a17365d -> :sswitch_6
        0x1a781 -> :sswitch_1
        0x302bcfe -> :sswitch_8
        0x9a3473d -> :sswitch_4
        0x10487541 -> :sswitch_7
        0x617e99c4 -> :sswitch_2
        0x73ec59fc -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetOfferStatusTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/payu/india/Tasks/GetOfferStatusTask;->mGetOfferStatusApiListener:Lcom/payu/india/Interfaces/GetOfferStatusApiListener;

    invoke-interface {v0, p1}, Lcom/payu/india/Interfaces/GetOfferStatusApiListener;->onGetOfferStatusApiResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 168
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetOfferStatusTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method
