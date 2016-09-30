.class Lcom/payu/testapp/MainActivity$4;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/testapp/MainActivity;->fetchMerchantHashes(Landroid/content/Intent;)V
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
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/testapp/MainActivity;

.field final synthetic val$baseActivityIntent:Landroid/content/Intent;

.field final synthetic val$postParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/testapp/MainActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/payu/testapp/MainActivity$4;->this$0:Lcom/payu/testapp/MainActivity;

    iput-object p2, p0, Lcom/payu/testapp/MainActivity$4;->val$postParams:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/testapp/MainActivity$4;->val$baseActivityIntent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 754
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    :try_start_0
    new-instance v11, Ljava/net/URL;

    const-string v12, "https://payu.herokuapp.com/get_merchant_hashes"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 763
    .local v11, "url":Ljava/net/URL;
    iget-object v12, p0, Lcom/payu/testapp/MainActivity$4;->val$postParams:Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 765
    .local v7, "postParamsByte":[B
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 766
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v12, "GET"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 767
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v12, "Content-Length"

    array-length v13, v7

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 770
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    .line 772
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 773
    .local v9, "responseInputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 774
    .local v10, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 775
    .local v1, "byteContainer":[B
    :goto_0
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "i":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_2

    .line 776
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 792
    .end local v1    # "byteContainer":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v7    # "postParamsByte":[B
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 793
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 803
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    :cond_1
    return-object v2

    .line 779
    .restart local v1    # "byteContainer":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v7    # "postParamsByte":[B
    .restart local v9    # "responseInputStream":Ljava/io/InputStream;
    .restart local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 781
    .local v8, "response":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 782
    .local v2, "cardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "data"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 784
    .local v6, "oneClickCardsArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    .local v0, "arrayLength":I
    const/4 v12, 0x1

    if-lt v0, v12, :cond_0

    .line 785
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    .line 786
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 785
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 794
    .end local v0    # "arrayLength":I
    .end local v1    # "byteContainer":[B
    .end local v2    # "cardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "oneClickCardsArray":Lorg/json/JSONArray;
    .end local v7    # "postParamsByte":[B
    .end local v8    # "response":Lorg/json/JSONObject;
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 795
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 796
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 797
    .local v4, "e":Ljava/net/ProtocolException;
    invoke-virtual {v4}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_1

    .line 798
    .end local v4    # "e":Ljava/net/ProtocolException;
    :catch_3
    move-exception v4

    .line 799
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v4

    .line 801
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 754
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$4;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "oneClickTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$4;->val$baseActivityIntent:Landroid/content/Intent;

    const-string v1, "one_click_card_tokens"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 811
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$4;->this$0:Lcom/payu/testapp/MainActivity;

    iget-object v1, p0, Lcom/payu/testapp/MainActivity$4;->val$baseActivityIntent:Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/payu/testapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 812
    return-void
.end method
