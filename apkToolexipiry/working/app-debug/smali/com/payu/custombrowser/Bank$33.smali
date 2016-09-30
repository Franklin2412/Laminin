.class Lcom/payu/custombrowser/Bank$33;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->showBackButtonDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 2872
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$33;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$33;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    const-string v2, "back_button_cancel"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2878
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackDismiss()V

    .line 2879
    return-void
.end method
