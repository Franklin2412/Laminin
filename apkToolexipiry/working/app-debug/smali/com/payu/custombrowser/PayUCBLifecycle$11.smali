.class Lcom/payu/custombrowser/PayUCBLifecycle$11;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->showSlowUserWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/PayUCBLifecycle;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$11;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1048
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$11;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1058
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
