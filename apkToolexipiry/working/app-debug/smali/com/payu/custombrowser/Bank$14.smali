.class Lcom/payu/custombrowser/Bank$14;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->bankFound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$bank:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$14;->val$bank:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1297
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v6, 0x1

    # setter for: Lcom/payu/custombrowser/Bank;->mLoadingJS:Z
    invoke-static {v5, v6}, Lcom/payu/custombrowser/Bank;->access$402(Lcom/payu/custombrowser/Bank;Z)Z

    .line 1300
    :try_start_0
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 1301
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->val$bank:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1302
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1303
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1305
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://mobiletest.payu.in/js/sdk_js/v3/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1308
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1309
    const-string v5, "Accept-Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 1311
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/payu/custombrowser/util/CBUtil;->writeFileOutputStream(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 1321
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->val$bank:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1322
    .restart local v3    # "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/payu/custombrowser/util/CBUtil;->decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    .line 1323
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v5, v5, Lcom/payu/custombrowser/Bank;->mPageReady:Z

    if-eqz v5, :cond_1

    .line 1324
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 1325
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/payu/custombrowser/Bank$14$1;

    invoke-direct {v6, p0}, Lcom/payu/custombrowser/Bank$14$1;-><init>(Lcom/payu/custombrowser/Bank$14;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1333
    :cond_1
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v6, 0x0

    # setter for: Lcom/payu/custombrowser/Bank;->mLoadingJS:Z
    invoke-static {v5, v6}, Lcom/payu/custombrowser/Bank;->access$402(Lcom/payu/custombrowser/Bank;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1341
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v1

    .line 1336
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1337
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1338
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1316
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1317
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1320
    :try_start_3
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 1321
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->val$bank:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1322
    .restart local v3    # "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/payu/custombrowser/util/CBUtil;->decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    .line 1323
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v5, v5, Lcom/payu/custombrowser/Bank;->mPageReady:Z

    if-eqz v5, :cond_3

    .line 1324
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 1325
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/payu/custombrowser/Bank$14$1;

    invoke-direct {v6, p0}, Lcom/payu/custombrowser/Bank$14$1;-><init>(Lcom/payu/custombrowser/Bank$14;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1333
    :cond_3
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v6, 0x0

    # setter for: Lcom/payu/custombrowser/Bank;->mLoadingJS:Z
    invoke-static {v5, v6}, Lcom/payu/custombrowser/Bank;->access$402(Lcom/payu/custombrowser/Bank;Z)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 1335
    .end local v3    # "fileName":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 1336
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1337
    :catch_4
    move-exception v1

    .line 1338
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1319
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1320
    :try_start_4
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_5

    .line 1321
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$14;->val$bank:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1322
    .restart local v3    # "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/payu/custombrowser/util/CBUtil;->decodeContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    .line 1323
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v6, v6, Lcom/payu/custombrowser/Bank;->mPageReady:Z

    if-eqz v6, :cond_4

    .line 1324
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_4

    .line 1325
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/payu/custombrowser/Bank$14$1;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/Bank$14$1;-><init>(Lcom/payu/custombrowser/Bank$14;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1333
    :cond_4
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v7, 0x0

    # setter for: Lcom/payu/custombrowser/Bank;->mLoadingJS:Z
    invoke-static {v6, v7}, Lcom/payu/custombrowser/Bank;->access$402(Lcom/payu/custombrowser/Bank;Z)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1339
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_5
    :goto_3
    throw v5

    .line 1335
    :catch_5
    move-exception v1

    .line 1336
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1337
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 1338
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1335
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto :goto_4

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    goto/16 :goto_1
.end method
