.class public Lcom/payu/india/Tasks/SaveCardTask;
.super Landroid/os/AsyncTask;
.source "SaveCardTask.java"


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
.field private mSaveCardApiListener:Lcom/payu/india/Interfaces/SaveCardApiListener;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/SaveCardApiListener;)V
    .locals 0
    .param p1, "saveCardApiListener"    # Lcom/payu/india/Interfaces/SaveCardApiListener;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/payu/india/Tasks/SaveCardTask;->mSaveCardApiListener:Lcom/payu/india/Interfaces/SaveCardApiListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 19
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 40
    new-instance v7, Lcom/payu/india/Model/PayuResponse;

    invoke-direct {v7}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 41
    .local v7, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v8, Lcom/payu/india/Model/PostData;

    invoke-direct {v8}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 42
    .local v8, "postData":Lcom/payu/india/Model/PostData;
    new-instance v13, Lcom/payu/india/Model/StoredCard;

    invoke-direct {v13}, Lcom/payu/india/Model/StoredCard;-><init>()V

    .line 43
    .local v13, "storedCard":Lcom/payu/india/Model/StoredCard;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v16, "userCardArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    const/4 v14, 0x0

    .line 48
    .local v14, "url":Ljava/net/URL;
    const/16 v17, 0x0

    :try_start_0
    aget-object v6, p1, v17

    .line 51
    .local v6, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual {v6}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 65
    new-instance v15, Ljava/net/URL;

    const-string v17, "https://info.payu.in/merchant/postservice.php?form=2"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v14    # "url":Ljava/net/URL;
    .local v15, "url":Ljava/net/URL;
    move-object v14, v15

    .line 69
    .end local v15    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v6}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 71
    .local v9, "postParamsByte":[B
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 72
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v17, "Content-Length"

    array-length v0, v9

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 78
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 79
    .local v11, "responseInputStream":Ljava/io/InputStream;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v12, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 81
    .local v2, "byteContainer":[B
    :goto_1
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "i":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_1

    .line 82
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v2, v1, v5}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 103
    .end local v2    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v9    # "postParamsByte":[B
    .end local v11    # "responseInputStream":Ljava/io/InputStream;
    .end local v12    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    invoke-virtual {v7, v8}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 111
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/payu/india/Model/PayuResponse;->setStoredCards(Ljava/util/ArrayList;)V

    .line 112
    return-object v7

    .line 53
    .restart local v6    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v15, Ljava/net/URL;

    const-string v17, "https://info.payu.in/merchant/postservice.php?form=2"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v14    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    move-object v14, v15

    .line 54
    .end local v15    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 56
    :pswitch_1
    new-instance v15, Ljava/net/URL;

    const-string v17, "https://mobiletest.payu.in/merchant/postservice?form=2"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v14    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    move-object v14, v15

    .line 57
    .end local v15    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 59
    :pswitch_2
    new-instance v15, Ljava/net/URL;

    const-string v17, "https://test.payu.in/merchant/postservice?form=2"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v14    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    move-object v14, v15

    .line 60
    .end local v15    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 62
    :pswitch_3
    new-instance v15, Ljava/net/URL;

    const-string v17, "https://mobiledev.payu.in/merchant/postservice?form=2"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v14    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    move-object v14, v15

    .line 63
    .end local v15    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 85
    .restart local v2    # "byteContainer":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v9    # "postParamsByte":[B
    .restart local v11    # "responseInputStream":Ljava/io/InputStream;
    .restart local v12    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v10, "response":Lorg/json/JSONObject;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 88
    const/16 v17, 0x139b

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 89
    const-string v17, "ERROR"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 91
    :cond_2
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 92
    const-string v17, "SUCCESS"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 93
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 94
    const-string v17, "cardToken"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/payu/india/Model/StoredCard;->setCardToken(Ljava/lang/String;)V

    .line 95
    const-string v17, "card_number"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/payu/india/Model/StoredCard;->setMaskedCardNumber(Ljava/lang/String;)V

    .line 96
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    :cond_3
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 100
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 103
    .end local v2    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v9    # "postParamsByte":[B
    .end local v10    # "response":Lorg/json/JSONObject;
    .end local v11    # "responseInputStream":Ljava/io/InputStream;
    .end local v12    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    goto/16 :goto_2

    .line 105
    :catch_2
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 105
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 51
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
    .line 30
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/SaveCardTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/payu/india/Tasks/SaveCardTask;->mSaveCardApiListener:Lcom/payu/india/Interfaces/SaveCardApiListener;

    invoke-interface {v0, p1}, Lcom/payu/india/Interfaces/SaveCardApiListener;->onSaveCardResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 119
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/SaveCardTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method
