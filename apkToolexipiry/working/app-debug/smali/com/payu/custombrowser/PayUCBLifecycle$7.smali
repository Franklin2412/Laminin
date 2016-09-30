.class Lcom/payu/custombrowser/PayUCBLifecycle$7;
.super Landroid/content/BroadcastReceiver;
.source "PayUCBLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->prepareSmsListener()V
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
    .line 652
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 656
    :try_start_0
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v10, v10, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    if-nez v10, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 660
    .local v8, "myBundle":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v10}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 661
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 662
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 666
    const/4 v6, 0x0

    .line 667
    .local v6, "msgBody":Ljava/lang/String;
    const/4 v5, 0x0

    .line 668
    .local v5, "msgAddress":Ljava/lang/String;
    const-string v10, "pdus"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 669
    .local v9, "pdus":[Ljava/lang/Object;
    if-eqz v9, :cond_3

    .line 670
    array-length v10, v9

    new-array v7, v10, [Landroid/telephony/SmsMessage;

    .line 671
    .local v7, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_3

    .line 672
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_2

    .line 673
    const-string v10, "format"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "format":Ljava/lang/String;
    aget-object v10, v9, v4

    check-cast v10, [B

    check-cast v10, [B

    invoke-static {v10, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v7, v4

    .line 679
    .end local v3    # "format":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v4

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 680
    aget-object v10, v7, v4

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 671
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 676
    :cond_2
    aget-object v10, v9, v4

    check-cast v10, [B

    check-cast v10, [B

    invoke-static {v10}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 701
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v5    # "msgAddress":Ljava/lang/String;
    .end local v6    # "msgBody":Ljava/lang/String;
    .end local v7    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v8    # "myBundle":Landroid/os/Bundle;
    .end local v9    # "pdus":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 702
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 686
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v5    # "msgAddress":Ljava/lang/String;
    .restart local v6    # "msgBody":Ljava/lang/String;
    .restart local v8    # "myBundle":Landroid/os/Bundle;
    .restart local v9    # "pdus":[Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v11, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v11, v11, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v12, v12, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v6, v12}, Lcom/payu/custombrowser/util/CBUtil;->filterSMS(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    .line 689
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v10, v10, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 690
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v10, p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->fillOTP(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 692
    :cond_4
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-boolean v10, v10, Lcom/payu/custombrowser/PayUCBLifecycle;->payuPG:Z

    if-eqz v10, :cond_5

    .line 693
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v11, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    # invokes: Lcom/payu/custombrowser/PayUCBLifecycle;->checkConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v5, v6}, Lcom/payu/custombrowser/PayUCBLifecycle;->access$300(Lcom/payu/custombrowser/PayUCBLifecycle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/payu/custombrowser/PayUCBLifecycle;->verificationMsgReceived:Z

    .line 694
    :cond_5
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-boolean v10, v10, Lcom/payu/custombrowser/PayUCBLifecycle;->verificationMsgReceived:Z

    if-eqz v10, :cond_0

    .line 695
    iget-object v10, p0, Lcom/payu/custombrowser/PayUCBLifecycle$7;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    sget-object v11, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->SNOOZE_BACKWARD_WINDOW_SMS_RECEIVED:Ljava/lang/String;

    sget-object v12, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->RECEIVED:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
