.class public Lcom/payu/india/Tasks/StoreMerchantHashTask;
.super Landroid/os/AsyncTask;
.source "StoreMerchantHashTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/StoreMerchantHashTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 24
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 27
    .local v3, "payuResponse":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "card_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "merchant_hash"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-static {}, Lcom/payu/india/CallBackHandler/OnetapCallback;->getOneTapCallback()Lcom/payu/india/Interfaces/OneClickPaymentListener;

    move-result-object v2

    .line 33
    .local v2, "mOneTapCallBack":Lcom/payu/india/Interfaces/OneClickPaymentListener;
    if-eqz v2, :cond_0

    .line 34
    const-string v4, "card_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "merchant_hash"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/payu/india/Interfaces/OneClickPaymentListener;->saveOneClickHash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mOneTapCallBack":Lcom/payu/india/Interfaces/OneClickPaymentListener;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/StoreMerchantHashTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 19
    return-void
.end method
