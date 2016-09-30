.class public Lcom/payu/india/Tasks/GetTransactionInfoTask;
.super Landroid/os/AsyncTask;
.source "GetTransactionInfoTask.java"


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
.field mGetTransactionInfoApiListener:Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;)V
    .locals 0
    .param p1, "getTransactionInfoApiListener"    # Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/payu/india/Tasks/GetTransactionInfoTask;->mGetTransactionInfoApiListener:Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;

    .line 54
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 15
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 58
    new-instance v5, Lcom/payu/india/Model/PayuResponse;

    invoke-direct {v5}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 59
    .local v5, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v6, Lcom/payu/india/Model/PostData;

    invoke-direct {v6}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 62
    .local v6, "postData":Lcom/payu/india/Model/PostData;
    const/4 v11, 0x0

    .line 64
    .local v11, "url":Ljava/net/URL;
    const/4 v13, 0x0

    :try_start_0
    aget-object v4, p1, v13

    .line 67
    .local v4, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual {v4}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 81
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .local v12, "url":Ljava/net/URL;
    move-object v11, v12

    .line 85
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v4}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 87
    .local v7, "postParamsByte":[B
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 88
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v13, "POST"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v13, "Content-Length"

    array-length v14, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 95
    .local v9, "responseInputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v10, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v13, 0x400

    new-array v0, v13, [B

    .line 97
    .local v0, "byteContainer":[B
    :goto_1
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "i":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    .line 98
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 113
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v7    # "postParamsByte":[B
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    invoke-virtual {v5, v6}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 123
    return-object v5

    .line 69
    .restart local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 70
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://mobiletest.payu.in/merchant/postservice?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 73
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 75
    :pswitch_2
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://test.payu.in/merchant/postservice?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 76
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 78
    :pswitch_3
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://mobiledev.payu.in/merchant/postservice?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 79
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 102
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v7    # "postParamsByte":[B
    .restart local v9    # "responseInputStream":Ljava/io/InputStream;
    .restart local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v8, "response":Lorg/json/JSONObject;
    const-string v13, "msg"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 104
    const-string v13, "msg"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 106
    :cond_2
    const-string v13, "status"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "status"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 107
    const/16 v13, 0x139b

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 108
    const-string v13, "ERROR"

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 113
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v7    # "postParamsByte":[B
    .end local v8    # "response":Lorg/json/JSONObject;
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 116
    :catch_2
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 116
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_4

    .line 67
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
    .line 48
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetTransactionInfoTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/payu/india/Tasks/GetTransactionInfoTask;->mGetTransactionInfoApiListener:Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;

    invoke-interface {v0, p1}, Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;->onGetTransactionApiListener(Lcom/payu/india/Model/PayuResponse;)V

    .line 130
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetTransactionInfoTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method
