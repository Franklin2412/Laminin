.class Lcom/payu/custombrowser/CustomBrowserMain$6;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain;->onMerchantUrlFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CustomBrowserMain;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CustomBrowserMain;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 841
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-virtual {v2}, Lcom/payu/custombrowser/CustomBrowserMain;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-boolean v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->cbOldFlow:Z

    if-eqz v2, :cond_3

    .line 843
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_result:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/CustomBrowserMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v3, v3, Lcom/payu/custombrowser/CustomBrowserMain;->merchantResponse:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_payu_response:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/CustomBrowserMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v3, v3, Lcom/payu/custombrowser/CustomBrowserMain;->payuReponse:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->isSuccessTransaction:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 847
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->storeOneClickHash:I

    if-ne v2, v4, :cond_0

    .line 848
    new-instance v1, Lcom/payu/custombrowser/StoreMerchantHashTask;

    invoke-direct {v1}, Lcom/payu/custombrowser/StoreMerchantHashTask;-><init>()V

    .line 849
    .local v1, "mStoreMerchantHashTask":Lcom/payu/custombrowser/StoreMerchantHashTask;
    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v3, v3, Lcom/payu/custombrowser/CustomBrowserMain;->payuReponse:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/StoreMerchantHashTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 851
    .end local v1    # "mStoreMerchantHashTask":Lcom/payu/custombrowser/StoreMerchantHashTask;
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 867
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 869
    :cond_1
    return-void

    .line 853
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 856
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->isSuccessTransaction:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 857
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getStoreOneClickHash()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 858
    new-instance v1, Lcom/payu/custombrowser/StoreMerchantHashTask;

    invoke-direct {v1}, Lcom/payu/custombrowser/StoreMerchantHashTask;-><init>()V

    .line 859
    .restart local v1    # "mStoreMerchantHashTask":Lcom/payu/custombrowser/StoreMerchantHashTask;
    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v3, v3, Lcom/payu/custombrowser/CustomBrowserMain;->payuReponse:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/StoreMerchantHashTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 861
    .end local v1    # "mStoreMerchantHashTask":Lcom/payu/custombrowser/StoreMerchantHashTask;
    :cond_4
    sget-object v2, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v3, v3, Lcom/payu/custombrowser/CustomBrowserMain;->payuReponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v4, v4, Lcom/payu/custombrowser/CustomBrowserMain;->merchantResponse:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :cond_5
    sget-object v2, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v3, v3, Lcom/payu/custombrowser/CustomBrowserMain;->payuReponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/custombrowser/CustomBrowserMain$6;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v4, v4, Lcom/payu/custombrowser/CustomBrowserMain;->merchantResponse:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
