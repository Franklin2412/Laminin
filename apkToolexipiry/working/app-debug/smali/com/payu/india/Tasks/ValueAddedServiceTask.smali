.class public Lcom/payu/india/Tasks/ValueAddedServiceTask;
.super Landroid/os/AsyncTask;
.source "ValueAddedServiceTask.java"


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
.field private mValueAddedServiceApiListener:Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;)V
    .locals 0
    .param p1, "valueAddedServiceApiListener"    # Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/payu/india/Tasks/ValueAddedServiceTask;->mValueAddedServiceApiListener:Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;

    .line 58
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 27
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 62
    new-instance v17, Lcom/payu/india/Model/PayuResponse;

    invoke-direct/range {v17 .. v17}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 63
    .local v17, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v18, Lcom/payu/india/Model/PostData;

    invoke-direct/range {v18 .. v18}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 66
    .local v18, "postData":Lcom/payu/india/Model/PostData;
    const/16 v23, 0x0

    .line 68
    .local v23, "url":Ljava/net/URL;
    const/16 v25, 0x0

    :try_start_0
    aget-object v16, p1, v25

    .line 71
    .local v16, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual/range {v16 .. v16}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 85
    new-instance v24, Ljava/net/URL;

    const-string v25, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v23    # "url":Ljava/net/URL;
    .local v24, "url":Ljava/net/URL;
    move-object/from16 v23, v24

    .line 89
    .end local v24    # "url":Ljava/net/URL;
    .restart local v23    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 91
    .local v19, "postParamsByte":[B
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 92
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const-string v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    const-string v25, "Content-Type"

    const-string v26, "application/x-www-form-urlencoded"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v25, "Content-Length"

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 96
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 99
    .local v21, "responseInputStream":Ljava/io/InputStream;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v22, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v4, v0, [B

    .line 101
    .local v4, "byteContainer":[B
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "i":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v8, v0, :cond_1

    .line 102
    new-instance v25, Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v4, v1, v8}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 151
    .end local v4    # "byteContainer":[B
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "i":I
    .end local v16    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v19    # "postParamsByte":[B
    .end local v21    # "responseInputStream":Ljava/io/InputStream;
    .end local v22    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    .line 152
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    invoke-virtual/range {v17 .. v18}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 159
    return-object v17

    .line 73
    .restart local v16    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v24, Ljava/net/URL;

    const-string v25, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v23    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    move-object/from16 v23, v24

    .line 74
    .end local v24    # "url":Ljava/net/URL;
    .restart local v23    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 76
    :pswitch_1
    new-instance v24, Ljava/net/URL;

    const-string v25, "https://mobiletest.payu.in/merchant/postservice?form=2"

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v23    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    move-object/from16 v23, v24

    .line 77
    .end local v24    # "url":Ljava/net/URL;
    .restart local v23    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 79
    :pswitch_2
    new-instance v24, Ljava/net/URL;

    const-string v25, "https://test.payu.in/merchant/postservice?form=2"

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v23    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    move-object/from16 v23, v24

    .line 80
    .end local v24    # "url":Ljava/net/URL;
    .restart local v23    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 82
    :pswitch_3
    new-instance v24, Ljava/net/URL;

    const-string v25, "https://mobiledev.payu.in/merchant/postservice?form=2"

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v23    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    move-object/from16 v23, v24

    .line 83
    .end local v24    # "url":Ljava/net/URL;
    .restart local v23    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 105
    .restart local v4    # "byteContainer":[B
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "i":I
    .restart local v19    # "postParamsByte":[B
    .restart local v21    # "responseInputStream":Ljava/io/InputStream;
    .restart local v22    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v20, Lorg/json/JSONObject;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v20, "response":Lorg/json/JSONObject;
    const-string v25, "ERROR"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 109
    const/16 v25, 0x139b

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 110
    const-string v25, "msg"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 111
    const-string v25, "msg"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 115
    :cond_2
    const-string v25, "netBankingStatus"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 116
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v15, "netBankingStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v25, "netBankingStatus"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 118
    .local v14, "netBanking":Lorg/json/JSONObject;
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 120
    .local v12, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 121
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "bankCode":Ljava/lang/String;
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "up_status"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 151
    .end local v2    # "bankCode":Ljava/lang/String;
    .end local v4    # "byteContainer":[B
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "i":I
    .end local v12    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "netBanking":Lorg/json/JSONObject;
    .end local v15    # "netBankingStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v19    # "postParamsByte":[B
    .end local v20    # "response":Lorg/json/JSONObject;
    .end local v21    # "responseInputStream":Ljava/io/InputStream;
    .end local v22    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .line 124
    .restart local v4    # "byteContainer":[B
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "i":I
    .restart local v12    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14    # "netBanking":Lorg/json/JSONObject;
    .restart local v15    # "netBankingStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v19    # "postParamsByte":[B
    .restart local v20    # "response":Lorg/json/JSONObject;
    .restart local v21    # "responseInputStream":Ljava/io/InputStream;
    .restart local v22    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/payu/india/Model/PayuResponse;->setNetBankingDownStatus(Ljava/util/HashMap;)V

    .line 126
    const-string v25, "SUCCESS"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 127
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 128
    const-string v25, "SUCCESS"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 131
    .end local v12    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "netBanking":Lorg/json/JSONObject;
    .end local v15    # "netBankingStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    const-string v25, "issuingBankDownBins"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 132
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v10, "issuingBankStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/CardStatus;>;"
    const-string v25, "issuingBankDownBins"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 136
    .local v9, "issuingBank":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    .local v13, "length":I
    :goto_5
    if-ge v8, v13, :cond_6

    .line 137
    const/4 v11, 0x0

    .local v11, "j":I
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "bins_arr"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "binArrayLength":I
    :goto_6
    if-ge v11, v3, :cond_5

    .line 138
    new-instance v5, Lcom/payu/india/Model/CardStatus;

    invoke-direct {v5}, Lcom/payu/india/Model/CardStatus;-><init>()V

    .line 139
    .local v5, "cardStatus":Lcom/payu/india/Model/CardStatus;
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "title"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/payu/india/Model/CardStatus;->setBankName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "status"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/payu/india/Model/CardStatus;->setStatusCode(I)V

    .line 141
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "bins_arr"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 136
    .end local v5    # "cardStatus":Lcom/payu/india/Model/CardStatus;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 144
    .end local v3    # "binArrayLength":I
    .end local v11    # "j":I
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/payu/india/Model/PayuResponse;->setIssuingBankStatus(Ljava/util/HashMap;)V

    .line 146
    const-string v25, "SUCCESS"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 147
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 148
    const-string v25, "SUCCESS"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    .line 153
    .end local v4    # "byteContainer":[B
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "i":I
    .end local v9    # "issuingBank":Lorg/json/JSONArray;
    .end local v10    # "issuingBankStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/CardStatus;>;"
    .end local v13    # "length":I
    .end local v16    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v19    # "postParamsByte":[B
    .end local v20    # "response":Lorg/json/JSONObject;
    .end local v21    # "responseInputStream":Ljava/io/InputStream;
    .end local v22    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v7

    .line 154
    .local v7, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 153
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_7

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/ValueAddedServiceTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/payu/india/Tasks/ValueAddedServiceTask;->mValueAddedServiceApiListener:Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;

    invoke-interface {v0, p1}, Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;->onValueAddedServiceApiResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 166
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/ValueAddedServiceTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method
