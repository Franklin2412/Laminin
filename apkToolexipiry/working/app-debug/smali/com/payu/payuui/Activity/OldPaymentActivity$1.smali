.class Lcom/payu/payuui/Activity/OldPaymentActivity$1;
.super Lcom/payu/custombrowser/Bank;
.source "OldPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/OldPaymentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/OldPaymentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackApproved()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const-string v1, "payment activity onBackApproved"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method

.method public onBackCancelled()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const-string v1, "payment activity onBackCancelled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    return-void
.end method

.method public onBackPressed(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "alertDialog"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const-string v1, "payment activity onBackPressed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method

.method public onBankError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 126
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    sget v1, Lcom/payu/payuui/R$id;->parent:I

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    sget v1, Lcom/payu/payuui/R$id;->trans_overlay:I

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public onHelpAvailable()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    sget v1, Lcom/payu/payuui/R$id;->parent:I

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public onHelpUnavailable()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 120
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    sget v1, Lcom/payu/payuui/R$id;->parent:I

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    sget v1, Lcom/payu/payuui/R$id;->trans_overlay:I

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # setter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, p1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$002(Lcom/payu/payuui/Activity/OldPaymentActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 107
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/payu/payuui/Activity/OldPaymentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method public unregisterBroadcast(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # getter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$000(Lcom/payu/payuui/Activity/OldPaymentActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # getter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$000(Lcom/payu/payuui/Activity/OldPaymentActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$1;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const/4 v1, 0x0

    # setter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$002(Lcom/payu/payuui/Activity/OldPaymentActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 116
    :cond_0
    return-void
.end method
