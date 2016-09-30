.class Lcom/payu/testapp/MainActivity$3;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/testapp/MainActivity;->storeMerchantHash(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/testapp/MainActivity;

.field final synthetic val$postParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/testapp/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/payu/testapp/MainActivity$3;->this$0:Lcom/payu/testapp/MainActivity;

    iput-object p2, p0, Lcom/payu/testapp/MainActivity$3;->val$postParams:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 697
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 704
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "https://payu.herokuapp.com/store_merchant_hash"

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 706
    .local v7, "url":Ljava/net/URL;
    iget-object v8, p0, Lcom/payu/testapp/MainActivity$3;->val$postParams:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 708
    .local v4, "postParamsByte":[B
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 709
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v8, "POST"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 710
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v8, "Content-Length"

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 713
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 715
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 716
    .local v5, "responseInputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 717
    .local v6, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 718
    .local v0, "byteContainer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "i":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 719
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 725
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "postParamsByte":[B
    .end local v5    # "responseInputStream":Ljava/io/InputStream;
    .end local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 736
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v8, 0x0

    return-object v8

    .line 722
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v4    # "postParamsByte":[B
    .restart local v5    # "responseInputStream":Ljava/io/InputStream;
    .restart local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 727
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "postParamsByte":[B
    .end local v5    # "responseInputStream":Ljava/io/InputStream;
    .end local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 728
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 729
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 730
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_1

    .line 731
    .end local v2    # "e":Ljava/net/ProtocolException;
    :catch_3
    move-exception v2

    .line 732
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 733
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v2

    .line 734
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 697
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 741
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 742
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/testapp/MainActivity$3;->cancel(Z)Z

    .line 743
    return-void
.end method
