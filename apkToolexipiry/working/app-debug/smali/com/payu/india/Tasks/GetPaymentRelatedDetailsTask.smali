.class public Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;
.super Landroid/os/AsyncTask;
.source "GetPaymentRelatedDetailsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/payu/india/Model/PayuConfig;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field mOneClickCardTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaymentRelatedDetailsListener:Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;

.field payuConfig:Lcom/payu/india/Model/PayuConfig;


# direct methods
.method public constructor <init>(Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;)V
    .locals 0
    .param p1, "paymentRelatedDetailsListener"    # Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->mPaymentRelatedDetailsListener:Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;

    .line 71
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Ljava/util/HashMap;
    .locals 7
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/payu/india/Model/PayuConfig;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v6, 0x0

    aget-object v6, p1, v6

    iput-object v6, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 79
    const-string v1, ""

    .line 80
    .local v1, "mUserCredentials":Ljava/lang/String;
    const-string v4, "var1=([^&]*)"

    .line 81
    .local v4, "patternText":Ljava/lang/String;
    iget-object v6, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v6}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "searchString":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 83
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 84
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_0
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "default"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 91
    invoke-static {}, Lcom/payu/india/CallBackHandler/OnetapCallback;->getOneTapCallback()Lcom/payu/india/Interfaces/OneClickPaymentListener;

    move-result-object v0

    .line 92
    .local v0, "mOneTapCallBack":Lcom/payu/india/Interfaces/OneClickPaymentListener;
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, v1}, Lcom/payu/india/Interfaces/OneClickPaymentListener;->getAllOneClickHash(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 95
    .end local v0    # "mOneTapCallBack":Lcom/payu/india/Interfaces/OneClickPaymentListener;
    :goto_1
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 4
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
    .line 100
    .local p1, "oneClickCardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->mOneClickCardTokens:Ljava/util/HashMap;

    .line 102
    new-instance v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;-><init>(Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;)V

    .line 103
    .local v0, "mTask":Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/payu/india/Model/PayuConfig;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method
