.class Lcom/payu/custombrowser/Bank$26;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
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
    .line 2555
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$26;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$26;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->hideCB()V

    .line 2561
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$26;->this$0:Lcom/payu/custombrowser/Bank;

    # invokes: Lcom/payu/custombrowser/Bank;->retryPayment(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/payu/custombrowser/Bank;->access$1200(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V

    .line 2595
    return-void
.end method
