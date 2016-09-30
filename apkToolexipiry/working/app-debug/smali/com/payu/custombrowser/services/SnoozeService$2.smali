.class Lcom/payu/custombrowser/services/SnoozeService$2;
.super Ljava/lang/Object;
.source "SnoozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService;->calculateInternetSpeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$2;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$2;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z
    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->access$600(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$2;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->downloadImage()V
    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->access$700(Lcom/payu/custombrowser/services/SnoozeService;)V

    .line 263
    :cond_0
    return-void
.end method
