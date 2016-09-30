.class Lcom/payu/custombrowser/CustomBrowserMain$4;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain;->showProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;
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
    .line 573
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$4;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$4;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain$4;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v1, v1, Lcom/payu/custombrowser/CustomBrowserMain;->timerProgress:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 579
    return-void
.end method
