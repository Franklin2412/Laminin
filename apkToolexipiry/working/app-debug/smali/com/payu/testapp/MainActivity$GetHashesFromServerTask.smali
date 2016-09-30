.class Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/testapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHashesFromServerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/payu/india/Model/PayuHashes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/testapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/payu/testapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/payu/india/Model/PayuHashes;
    .locals 15
    .param p1, "postParams"    # [Ljava/lang/String;

    .prologue
    .line 437
    new-instance v6, Lcom/payu/india/Model/PayuHashes;

    invoke-direct {v6}, Lcom/payu/india/Model/PayuHashes;-><init>()V

    .line 441
    .local v6, "payuHashes":Lcom/payu/india/Model/PayuHashes;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    const-string v14, "GetHashesFromServerTask"

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 445
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://payu.herokuapp.com/get_hash"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 448
    .local v12, "url":Ljava/net/URL;
    const/4 v13, 0x0

    aget-object v7, p1, v13

    .line 450
    .local v7, "postParam":Ljava/lang/String;
    const-string v13, "UTF-8"

    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 452
    .local v8, "postParamsByte":[B
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 453
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v13, "POST"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 454
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v13, "Content-Length"

    array-length v14, v8

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 457
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write([B)V

    .line 459
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 460
    .local v10, "responseInputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v11, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v13, 0x400

    new-array v0, v13, [B

    .line 462
    .local v0, "byteContainer":[B
    :goto_0
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "i":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    .line 463
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 507
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v7    # "postParam":Ljava/lang/String;
    .end local v8    # "postParamsByte":[B
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 516
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    return-object v6

    .line 466
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v7    # "postParam":Ljava/lang/String;
    .restart local v8    # "postParamsByte":[B
    .restart local v10    # "responseInputStream":Ljava/io/InputStream;
    .restart local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    .local v9, "response":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 469
    .local v5, "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 470
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 471
    .local v4, "key":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_2
    :goto_3
    packed-switch v13, :pswitch_data_0

    goto :goto_2

    .line 473
    :pswitch_0
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setPaymentHash(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 509
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "postParam":Ljava/lang/String;
    .end local v8    # "postParamsByte":[B
    .end local v9    # "response":Lorg/json/JSONObject;
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 510
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_1

    .line 471
    .end local v2    # "e":Ljava/net/ProtocolException;
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "postParam":Ljava/lang/String;
    .restart local v8    # "postParamsByte":[B
    .restart local v9    # "response":Lorg/json/JSONObject;
    .restart local v10    # "responseInputStream":Ljava/io/InputStream;
    .restart local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :sswitch_0
    :try_start_2
    const-string v14, "payment_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    goto :goto_3

    :sswitch_1
    const-string v14, "get_merchant_ibibo_codes_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :sswitch_2
    const-string v14, "vas_for_mobile_sdk_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x2

    goto :goto_3

    :sswitch_3
    const-string v14, "payment_related_details_for_mobile_sdk_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x3

    goto :goto_3

    :sswitch_4
    const-string v14, "delete_user_card_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x4

    goto :goto_3

    :sswitch_5
    const-string v14, "get_user_cards_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x5

    goto :goto_3

    :sswitch_6
    const-string v14, "edit_user_card_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x6

    goto :goto_3

    :sswitch_7
    const-string v14, "save_user_card_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x7

    goto :goto_3

    :sswitch_8
    const-string v14, "check_offer_status_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v13, 0x8

    goto :goto_3

    :sswitch_9
    const-string v14, "check_isDomestic_hash"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v13, 0x9

    goto :goto_3

    .line 476
    :pswitch_1
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setMerchantIbiboCodesHash(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 511
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "postParam":Ljava/lang/String;
    .end local v8    # "postParamsByte":[B
    .end local v9    # "response":Lorg/json/JSONObject;
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "url":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 512
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 479
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "postParam":Ljava/lang/String;
    .restart local v8    # "postParamsByte":[B
    .restart local v9    # "response":Lorg/json/JSONObject;
    .restart local v10    # "responseInputStream":Ljava/io/InputStream;
    .restart local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :pswitch_2
    :try_start_3
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setVasForMobileSdkHash(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 513
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "postParam":Ljava/lang/String;
    .end local v8    # "postParamsByte":[B
    .end local v9    # "response":Lorg/json/JSONObject;
    .end local v10    # "responseInputStream":Ljava/io/InputStream;
    .end local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "url":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 514
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 482
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "payuHashIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "postParam":Ljava/lang/String;
    .restart local v8    # "postParamsByte":[B
    .restart local v9    # "response":Lorg/json/JSONObject;
    .restart local v10    # "responseInputStream":Ljava/io/InputStream;
    .restart local v11    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :pswitch_3
    :try_start_4
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setPaymentRelatedDetailsForMobileSdkHash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 485
    :pswitch_4
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setDeleteCardHash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 488
    :pswitch_5
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setStoredCardsHash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 491
    :pswitch_6
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setEditCardHash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 494
    :pswitch_7
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setSaveCardHash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 497
    :pswitch_8
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setCheckOfferStatusHash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 500
    :pswitch_9
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/payu/india/Model/PayuHashes;->setCheckIsDomesticHash(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a3a161d -> :sswitch_2
        -0x4d22cf95 -> :sswitch_7
        -0x4892afd0 -> :sswitch_3
        -0x3bd7ddc9 -> :sswitch_1
        -0x2d3e3583 -> :sswitch_4
        -0x1fd2c7c2 -> :sswitch_6
        -0x1da46459 -> :sswitch_0
        0x3afcde75 -> :sswitch_5
        0x64083d4e -> :sswitch_9
        0x6b9e3c61 -> :sswitch_8
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
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->doInBackground([Ljava/lang/String;)Lcom/payu/india/Model/PayuHashes;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuHashes;)V
    .locals 2
    .param p1, "payuHashes"    # Lcom/payu/india/Model/PayuHashes;

    .prologue
    const/4 v1, 0x1

    .line 521
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    # getter for: Lcom/payu/testapp/MainActivity;->nextButtonClicked:Z
    invoke-static {v0}, Lcom/payu/testapp/MainActivity;->access$100(Lcom/payu/testapp/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    # getter for: Lcom/payu/testapp/MainActivity;->nextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/payu/testapp/MainActivity;->access$200(Lcom/payu/testapp/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 524
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    invoke-virtual {v0, p1}, Lcom/payu/testapp/MainActivity;->launchSdkUI(Lcom/payu/india/Model/PayuHashes;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    # getter for: Lcom/payu/testapp/MainActivity;->verifyApiButtonClicked:Z
    invoke-static {v0}, Lcom/payu/testapp/MainActivity;->access$300(Lcom/payu/testapp/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    # getter for: Lcom/payu/testapp/MainActivity;->verifyApiButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/payu/testapp/MainActivity;->access$400(Lcom/payu/testapp/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->this$0:Lcom/payu/testapp/MainActivity;

    # invokes: Lcom/payu/testapp/MainActivity;->launchVerifyApi(Lcom/payu/india/Model/PayuHashes;)V
    invoke-static {v0, p1}, Lcom/payu/testapp/MainActivity;->access$500(Lcom/payu/testapp/MainActivity;Lcom/payu/india/Model/PayuHashes;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 428
    check-cast p1, Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {p0, p1}, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->onPostExecute(Lcom/payu/india/Model/PayuHashes;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 433
    return-void
.end method
