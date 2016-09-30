.class Lcom/payu/custombrowser/PayUCBLifecycle$1;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;
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
    .line 93
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$1;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 96
    move-object v0, p2

    check-cast v0, Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;

    .line 97
    .local v0, "snoozeBinder":Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$1;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;->getSnoozeService()Lcom/payu/custombrowser/services/SnoozeService;

    move-result-object v2

    iput-object v2, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    .line 98
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$1;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    .line 103
    return-void
.end method
