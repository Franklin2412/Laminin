.class public Lcom/payu/india/Tasks/GetCardInformationTask;
.super Landroid/os/AsyncTask;
.source "GetCardInformationTask.java"


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
.field mGetCardInformationApiListener:Lcom/payu/india/Interfaces/GetCardInformationApiListener;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/GetCardInformationApiListener;)V
    .locals 0
    .param p1, "getCardInformationApiListener"    # Lcom/payu/india/Interfaces/GetCardInformationApiListener;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/payu/india/Tasks/GetCardInformationTask;->mGetCardInformationApiListener:Lcom/payu/india/Interfaces/GetCardInformationApiListener;

    .line 56
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 16
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 60
    new-instance v6, Lcom/payu/india/Model/PayuResponse;

    invoke-direct {v6}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 61
    .local v6, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v7, Lcom/payu/india/Model/PostData;

    invoke-direct {v7}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 64
    .local v7, "postData":Lcom/payu/india/Model/PostData;
    const/4 v12, 0x0

    .line 66
    .local v12, "url":Ljava/net/URL;
    const/4 v14, 0x0

    :try_start_0
    aget-object v5, p1, v14

    .line 69
    .local v5, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual {v5}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 83
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v12    # "url":Ljava/net/URL;
    .local v13, "url":Ljava/net/URL;
    move-object v12, v13

    .line 87
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v5}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 89
    .local v8, "postParamsByte":[B
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 90
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v14, "POST"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v14, "Content-Length"

    array-length v15, v8

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/io/OutputStream;->write([B)V

    .line 96
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 97
    .local v10, "responseInputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v11, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v14, 0x400

    new-array v0, v14, [B

    .line 99
    .local v0, "byteContainer":[B
    :goto_1
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "i":I
    const/4 v14, -0x1

    if-eq v4, v14, :cond_0

    .line 100
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 120
    .end local v0    # "byteContainer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "i":I
    .end local v5    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v8    # "postParamsByte":[B
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v6, v7}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 130
    return-object v6

    .line 71
    .restart local v5    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    move-object v12, v13

    .line 72
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_0

    .line 74
    :pswitch_1
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://mobiletest.payu.in/merchant/postservice?form=2"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    move-object v12, v13

    .line 75
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://test.payu.in/merchant/postservice?form=2"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    move-object v12, v13

    .line 78
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_0

    .line 80
    :pswitch_3
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://mobiledev.payu.in/merchant/postservice?form=2"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    move-object v12, v13

    .line 81
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_0

    .line 103
    .restart local v0    # "byteContainer":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "i":I
    .restart local v8    # "postParamsByte":[B
    .restart local v10    # "responseInputStream":Ljava/io/InputStream;
    .restart local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v9, "response":Lorg/json/JSONObject;
    const-string v14, "msg"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 105
    const-string v14, "msg"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 107
    :cond_1
    const-string v14, "status"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "status"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    .line 108
    const/16 v14, 0x1399

    invoke-virtual {v7, v14}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 109
    const-string v14, "ERROR"

    invoke-virtual {v7, v14}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    goto :goto_3

    .line 120
    .end local v0    # "byteContainer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "i":I
    .end local v5    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v8    # "postParamsByte":[B
    .end local v9    # "response":Lorg/json/JSONObject;
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 111
    .restart local v0    # "byteContainer":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "i":I
    .restart local v5    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v8    # "postParamsByte":[B
    .restart local v9    # "response":Lorg/json/JSONObject;
    .restart local v10    # "responseInputStream":Ljava/io/InputStream;
    .restart local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v1, Lcom/payu/india/Model/CardInformation;

    invoke-direct {v1}, Lcom/payu/india/Model/CardInformation;-><init>()V

    .line 112
    .local v1, "cardInformation":Lcom/payu/india/Model/CardInformation;
    const-string v14, "isDomestic"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Y"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/payu/india/Model/CardInformation;->setIsDomestic(Ljava/lang/Boolean;)V

    .line 113
    const-string v14, "issuingBank"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/payu/india/Model/CardInformation;->setIssuingBank(Ljava/lang/String;)V

    .line 114
    const-string v14, "cardType"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/payu/india/Model/CardInformation;->setCardType(Ljava/lang/String;)V

    .line 115
    const-string v14, "cardCategory"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/payu/india/Model/CardInformation;->setCardCategory(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6, v1}, Lcom/payu/india/Model/PayuResponse;->setCardInformation(Lcom/payu/india/Model/CardInformation;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    .line 123
    .end local v0    # "byteContainer":[B
    .end local v1    # "cardInformation":Lcom/payu/india/Model/CardInformation;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "i":I
    .end local v5    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v8    # "postParamsByte":[B
    .end local v9    # "response":Lorg/json/JSONObject;
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 123
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_4

    .line 69
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
    .line 50
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetCardInformationTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/payu/india/Tasks/GetCardInformationTask;->mGetCardInformationApiListener:Lcom/payu/india/Interfaces/GetCardInformationApiListener;

    invoke-interface {v0, p1}, Lcom/payu/india/Interfaces/GetCardInformationApiListener;->onGetCardInformationResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 139
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetCardInformationTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method
