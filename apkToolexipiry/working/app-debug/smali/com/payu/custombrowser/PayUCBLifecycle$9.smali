.class Lcom/payu/custombrowser/PayUCBLifecycle$9;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->getInitializeJS()V
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
    .line 893
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 896
    const-string v2, "initialize"

    .line 897
    .local v2, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://mobiletest.payu.in/js/sdk_js/v3/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, "strURL":Ljava/lang/String;
    invoke-static {v4}, Lcom/payu/custombrowser/util/CBUtil;->getHttpsConn(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 900
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 901
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v7, v7, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v2, v8}, Lcom/payu/custombrowser/util/CBUtil;->writeFileOutputStream(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 909
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v7, v7, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/payu/custombrowser/util/CBUtil;->decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    .line 910
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->setUrlString()V

    .line 911
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v6, ""

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/payu/custombrowser/PayUCBLifecycle;->checkVisibilityCB(Ljava/lang/String;Z)V

    .line 914
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v6, "snooze_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v7, "snooze_config"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, "snoozeConfig":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v6, "snooze_image_download_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v6, "snooze_image_download_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    .line 918
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.payu.custombrowser.payucustombrowser"

    const-string v7, "sp_image_download_time_out"

    sget v8, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    invoke-static {v5, v6, v7, v8}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->addIntToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 921
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;

    invoke-direct {v6, p0, v3}, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 930
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-boolean v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mPageReady:Z

    if-eqz v5, :cond_1

    .line 931
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 932
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;

    invoke-direct {v6, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 950
    .end local v3    # "snoozeConfig":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 914
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 915
    .restart local v3    # "snoozeConfig":Ljava/lang/String;
    :cond_3
    const-string v5, "0"
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 941
    .end local v3    # "snoozeConfig":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 942
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->communicationError()V

    .line 943
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 945
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->communicationError()V

    .line 946
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 904
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 905
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 908
    :try_start_3
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 909
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v7, v7, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/payu/custombrowser/util/CBUtil;->decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    .line 910
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->setUrlString()V

    .line 911
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v6, ""

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/payu/custombrowser/PayUCBLifecycle;->checkVisibilityCB(Ljava/lang/String;Z)V

    .line 914
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v6, "snooze_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v7, "snooze_config"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    .restart local v3    # "snoozeConfig":Ljava/lang/String;
    :goto_4
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v6, "snooze_image_download_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v6, "snooze_image_download_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    .line 918
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.payu.custombrowser.payucustombrowser"

    const-string v7, "sp_image_download_time_out"

    sget v8, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    invoke-static {v5, v6, v7, v8}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->addIntToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 921
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;

    invoke-direct {v6, p0, v3}, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 930
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-boolean v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->mPageReady:Z

    if-eqz v5, :cond_1

    .line 931
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 932
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v5, v5, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;

    invoke-direct {v6, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_2

    .line 941
    .end local v3    # "snoozeConfig":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 942
    :goto_6
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->communicationError()V

    .line 943
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 914
    :cond_4
    :try_start_4
    const-string v3, ""

    goto :goto_4

    .line 915
    .restart local v3    # "snoozeConfig":Ljava/lang/String;
    :cond_5
    const-string v5, "0"
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 944
    .end local v3    # "snoozeConfig":Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 945
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->communicationError()V

    .line 946
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 907
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 908
    :try_start_5
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 909
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v8, v8, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/payu/custombrowser/util/CBUtil;->decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    .line 910
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v6}, Lcom/payu/custombrowser/PayUCBLifecycle;->setUrlString()V

    .line 911
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v7, ""

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/payu/custombrowser/PayUCBLifecycle;->checkVisibilityCB(Ljava/lang/String;Z)V

    .line 914
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v7, "snooze_config"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v7, v7, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v8, "snooze_config"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    .restart local v3    # "snoozeConfig":Ljava/lang/String;
    :goto_7
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v7, "snooze_image_download_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mBankJS:Lorg/json/JSONObject;

    const-string v7, "snooze_image_download_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    .line 918
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.payu.custombrowser.payucustombrowser"

    const-string v8, "sp_image_download_time_out"

    sget v9, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    invoke-static {v6, v7, v8, v9}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->addIntToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 921
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;

    invoke-direct {v7, p0, v3}, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 930
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-boolean v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->mPageReady:Z

    if-eqz v6, :cond_6

    .line 931
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 932
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v6, v6, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$9$2;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 947
    .end local v3    # "snoozeConfig":Ljava/lang/String;
    :cond_6
    :goto_9
    throw v5

    .line 914
    :cond_7
    :try_start_6
    const-string v3, ""

    goto :goto_7

    .line 915
    .restart local v3    # "snoozeConfig":Ljava/lang/String;
    :cond_8
    const-string v6, "0"
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    .line 941
    .end local v3    # "snoozeConfig":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 942
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_a
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v6}, Lcom/payu/custombrowser/PayUCBLifecycle;->communicationError()V

    .line 943
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 945
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v6}, Lcom/payu/custombrowser/PayUCBLifecycle;->communicationError()V

    .line 946
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 941
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto :goto_a

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    goto/16 :goto_6

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    goto/16 :goto_3
.end method
