.class Lcom/payu/testapp/MainActivity$5;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/testapp/MainActivity;->deleteMerchantHash(Ljava/lang/String;)V
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
    .line 822
    iput-object p1, p0, Lcom/payu/testapp/MainActivity$5;->this$0:Lcom/payu/testapp/MainActivity;

    iput-object p2, p0, Lcom/payu/testapp/MainActivity$5;->val$postParams:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 829
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://payu.herokuapp.com/delete_merchant_hash"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 831
    .local v3, "url":Ljava/net/URL;
    iget-object v4, p0, Lcom/payu/testapp/MainActivity$5;->val$postParams:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 833
    .local v2, "postParamsByte":[B
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 834
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 835
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v4, "Content-Length"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 838
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 840
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 861
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "postParamsByte":[B
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 852
    :catch_0
    move-exception v1

    .line 853
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 854
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 855
    .local v1, "e":Ljava/net/ProtocolException;
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 856
    .end local v1    # "e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v1

    .line 857
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 858
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v1

    .line 859
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 822
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 866
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 867
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/testapp/MainActivity$5;->cancel(Z)Z

    .line 868
    return-void
.end method
