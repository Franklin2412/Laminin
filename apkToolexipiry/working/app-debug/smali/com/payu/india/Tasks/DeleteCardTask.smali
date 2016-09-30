.class public Lcom/payu/india/Tasks/DeleteCardTask;
.super Landroid/os/AsyncTask;
.source "DeleteCardTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;
    }
.end annotation

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
.field mDeleteCardApiListener:Lcom/payu/india/Interfaces/DeleteCardApiListener;

.field mPayuConfig:Lcom/payu/india/Model/PayuConfig;

.field mPayuResponse:Lcom/payu/india/Model/PayuResponse;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/DeleteCardApiListener;)V
    .locals 0
    .param p1, "deleteCardApiListener"    # Lcom/payu/india/Interfaces/DeleteCardApiListener;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/payu/india/Tasks/DeleteCardTask;->mDeleteCardApiListener:Lcom/payu/india/Interfaces/DeleteCardApiListener;

    .line 60
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 15
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 64
    const/4 v13, 0x0

    aget-object v13, p1, v13

    iput-object v13, p0, Lcom/payu/india/Tasks/DeleteCardTask;->mPayuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 65
    new-instance v5, Lcom/payu/india/Model/PayuResponse;

    invoke-direct {v5}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 66
    .local v5, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v6, Lcom/payu/india/Model/PostData;

    invoke-direct {v6}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 69
    .local v6, "postData":Lcom/payu/india/Model/PostData;
    const/4 v11, 0x0

    .line 71
    .local v11, "url":Ljava/net/URL;
    const/4 v13, 0x0

    :try_start_0
    aget-object v4, p1, v13

    .line 74
    .local v4, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual {v4}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 88
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .local v12, "url":Ljava/net/URL;
    move-object v11, v12

    .line 92
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v4}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 94
    .local v7, "postParamsByte":[B
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 95
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v13, "POST"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 96
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v13, "Content-Length"

    array-length v14, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/io/OutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 102
    .local v9, "responseInputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v10, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v13, 0x400

    new-array v0, v13, [B

    .line 104
    .local v0, "byteContainer":[B
    :goto_1
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "i":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    .line 105
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 121
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v7    # "postParamsByte":[B
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 132
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_2
    invoke-virtual {v5, v6}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 133
    return-object v5

    .line 76
    .restart local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://info.payu.in/merchant/postservice.php?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 77
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://mobiletest.payu.in/merchant/postservice?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 80
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://test.payu.in/merchant/postservice?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 83
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 85
    :pswitch_3
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://mobiledev.payu.in/merchant/postservice?form=2"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    move-object v11, v12

    .line 86
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_0

    .line 108
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v7    # "postParamsByte":[B
    .restart local v9    # "responseInputStream":Ljava/io/InputStream;
    .restart local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v8, "response":Lorg/json/JSONObject;
    const-string v13, "msg"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 111
    const-string v13, "msg"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 113
    :cond_1
    const-string v13, "status"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "status"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 114
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 115
    const-string v13, "SUCCESS"

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 123
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

    .line 124
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v2    # "e":Ljava/net/ProtocolException;
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v7    # "postParamsByte":[B
    .restart local v8    # "response":Lorg/json/JSONObject;
    .restart local v9    # "responseInputStream":Ljava/io/InputStream;
    .restart local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    const/16 v13, 0x1399

    :try_start_2
    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 118
    const-string v13, "ERROR"

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 125
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v7    # "postParamsByte":[B
    .end local v8    # "response":Lorg/json/JSONObject;
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v2

    .line 126
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 128
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 74
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

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/DeleteCardTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/payu/india/Tasks/DeleteCardTask;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    .line 140
    new-instance v0, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;-><init>(Lcom/payu/india/Tasks/DeleteCardTask;)V

    .line 141
    .local v0, "mDeleteMerchantHashTask":Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/DeleteCardTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method
