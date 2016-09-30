.class Lcom/payu/custombrowser/CBActivity$1;
.super Ljava/lang/Object;
.source "CBActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CBActivity;->showBackButtonDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CBActivity;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CBActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CBActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/payu/custombrowser/CBActivity$1;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackApprove()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$1;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$000(Lcom/payu/custombrowser/CBActivity;)Lcom/payu/custombrowser/Bank;

    move-result-object v0

    const-string v1, "user_input"

    const-string v2, "back_button_ok"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$1;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v0}, Lcom/payu/custombrowser/CBActivity;->finish()V

    .line 83
    return-void
.end method
