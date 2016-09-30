.class Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;
.super Landroid/os/AsyncTask;
.source "DeleteCardTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Tasks/DeleteCardTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteMerchantHashTask"
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
.field final synthetic this$0:Lcom/payu/india/Tasks/DeleteCardTask;


# direct methods
.method constructor <init>(Lcom/payu/india/Tasks/DeleteCardTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/india/Tasks/DeleteCardTask;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->this$0:Lcom/payu/india/Tasks/DeleteCardTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x1

    .line 153
    const-string v0, ""

    .line 154
    .local v0, "mCardToken":Ljava/lang/String;
    const-string v5, "var2=([^&]*)"

    .line 155
    .local v5, "patternText":Ljava/lang/String;
    iget-object v7, p0, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->this$0:Lcom/payu/india/Tasks/DeleteCardTask;

    iget-object v7, v7, Lcom/payu/india/Tasks/DeleteCardTask;->mPayuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "searchString":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 157
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 158
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    const-string v2, ""

    .line 162
    .local v2, "mUserCredentials":Ljava/lang/String;
    const-string v5, "var1=([^&]*)"

    .line 163
    iget-object v7, p0, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->this$0:Lcom/payu/india/Tasks/DeleteCardTask;

    iget-object v7, v7, Lcom/payu/india/Tasks/DeleteCardTask;->mPayuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 166
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 172
    :cond_1
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 173
    invoke-static {}, Lcom/payu/india/CallBackHandler/OnetapCallback;->getOneTapCallback()Lcom/payu/india/Interfaces/OneClickPaymentListener;

    move-result-object v1

    .line 174
    .local v1, "mOneTapCallBack":Lcom/payu/india/Interfaces/OneClickPaymentListener;
    if-eqz v1, :cond_2

    .line 175
    invoke-interface {v1, v0, v2}, Lcom/payu/india/Interfaces/OneClickPaymentListener;->deleteOneClickHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v1    # "mOneTapCallBack":Lcom/payu/india/Interfaces/OneClickPaymentListener;
    :cond_2
    const/4 v7, 0x0

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->this$0:Lcom/payu/india/Tasks/DeleteCardTask;

    iget-object v0, v0, Lcom/payu/india/Tasks/DeleteCardTask;->mDeleteCardApiListener:Lcom/payu/india/Interfaces/DeleteCardApiListener;

    iget-object v1, p0, Lcom/payu/india/Tasks/DeleteCardTask$DeleteMerchantHashTask;->this$0:Lcom/payu/india/Tasks/DeleteCardTask;

    iget-object v1, v1, Lcom/payu/india/Tasks/DeleteCardTask;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-interface {v0, v1}, Lcom/payu/india/Interfaces/DeleteCardApiListener;->onDeleteCardApiResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 185
    return-void
.end method
