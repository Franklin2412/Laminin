.class Lcom/payu/custombrowser/CBActivity$3;
.super Ljava/lang/Object;
.source "CBActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CBActivity;->showTransactionStatusDialog(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CBActivity;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CBActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CBActivity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/payu/custombrowser/CBActivity$3;->this$0:Lcom/payu/custombrowser/CBActivity;

    iput-object p2, p0, Lcom/payu/custombrowser/CBActivity$3;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 257
    :try_start_0
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity$3;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 264
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity$3;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 265
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity$3;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v1}, Lcom/payu/custombrowser/CBActivity;->finish()V

    .line 267
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
