.class Lcom/payu/custombrowser/PayUCBLifecycle$4;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->updateSnoozeDialogWithSnoozeServiceStatus()V
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
    .line 281
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$4;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$4;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 286
    return-void
.end method
