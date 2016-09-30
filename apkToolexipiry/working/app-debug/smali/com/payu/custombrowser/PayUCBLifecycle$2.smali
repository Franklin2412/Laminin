.class Lcom/payu/custombrowser/PayUCBLifecycle$2;
.super Landroid/content/BroadcastReceiver;
.source "PayUCBLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->onCreate(Landroid/os/Bundle;)V
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
    .line 191
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    const-string v1, "broadcaststatus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v1, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    const-class v2, Lcom/payu/custombrowser/CBActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "cbIntent":Landroid/content/Intent;
    const-string v1, "sender"

    const-string v2, "snoozeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "verificationMsgReceived"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v1, "payu_response"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "payu_response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->startActivity(Landroid/content/Intent;)V

    .line 205
    .end local v0    # "cbIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    # getter for: Lcom/payu/custombrowser/PayUCBLifecycle;->SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->access$000(Lcom/payu/custombrowser/PayUCBLifecycle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v1, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v1, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    # getter for: Lcom/payu/custombrowser/PayUCBLifecycle;->SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->access$000(Lcom/payu/custombrowser/PayUCBLifecycle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->updateWebviewStatus(Ljava/lang/String;)V

    .line 211
    :cond_1
    const-string v1, "BROAD_CAST_FROM_SNOOZE_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v2, "event_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_value"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_2
    const-string v1, "snoozeServiceStatus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$2;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    # invokes: Lcom/payu/custombrowser/PayUCBLifecycle;->updateSnoozeDialogWithSnoozeServiceStatus()V
    invoke-static {v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->access$100(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    .line 218
    :cond_3
    return-void
.end method
