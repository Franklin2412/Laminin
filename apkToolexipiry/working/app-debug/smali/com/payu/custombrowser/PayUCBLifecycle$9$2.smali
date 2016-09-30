.class Lcom/payu/custombrowser/PayUCBLifecycle$9$2;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/PayUCBLifecycle$9;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/PayUCBLifecycle$9;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$9;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->onPageStarted()V

    .line 936
    return-void
.end method
