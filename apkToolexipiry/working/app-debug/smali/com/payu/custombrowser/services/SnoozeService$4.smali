.class Lcom/payu/custombrowser/services/SnoozeService$4;
.super Ljava/lang/Object;
.source "SnoozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService;->downloadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/services/SnoozeService;

.field final synthetic val$imageDownloadTimer:Landroid/os/CountDownTimer;

.field final synthetic val$imageURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Landroid/os/CountDownTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    iput-object p2, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageDownloadTimer:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 297
    :try_start_0
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$200(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/CBUtil;

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v5}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/payu/custombrowser/util/CBUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 298
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->startTime:J
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$902(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 300
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageURL:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 301
    .local v1, "connection":Ljava/net/URLConnection;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 302
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 303
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 304
    .local v3, "imageSize":I
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 306
    .local v4, "input":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 310
    .local v0, "buffer":[B
    :cond_0
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isImageDownloadTimedOut:Z
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$800(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 314
    :cond_1
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isImageDownloadTimedOut:Z
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$800(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 315
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageDownloadTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 316
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 318
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->IMAGE_DOWNLOAD_TIME_OUT:I
    invoke-static {}, Lcom/payu/custombrowser/services/SnoozeService;->access$1100()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1002(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 326
    :goto_0
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$1000(Lcom/payu/custombrowser/services/SnoozeService;)J

    move-result-wide v6

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->IMAGE_DOWNLOAD_TIME_OUT:I
    invoke-static {}, Lcom/payu/custombrowser/services/SnoozeService;->access$1100()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 327
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I
    invoke-static {v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$1300(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v6

    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I
    invoke-static {v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1300(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v7

    add-int/2addr v6, v7

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I
    invoke-static {v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$1302(Lcom/payu/custombrowser/services/SnoozeService;I)I

    .line 329
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$1600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->runnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$1400(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I
    invoke-static {v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1300(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I
    invoke-static {v8}, Lcom/payu/custombrowser/services/SnoozeService;->access$1500(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "imageSize":I
    .end local v4    # "input":Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-void

    .line 320
    .restart local v0    # "buffer":[B
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "imageSize":I
    .restart local v4    # "input":Ljava/io/InputStream;
    :cond_3
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageDownloadTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 321
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->endTime:J
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1202(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 322
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 323
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->endTime:J
    invoke-static {v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$1200(Lcom/payu/custombrowser/services/SnoozeService;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->startTime:J
    invoke-static {v8}, Lcom/payu/custombrowser/services/SnoozeService;->access$900(Lcom/payu/custombrowser/services/SnoozeService;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1002(Lcom/payu/custombrowser/services/SnoozeService;J)J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 346
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "imageSize":I
    .end local v4    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/net/MalformedURLException;
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J
    invoke-static {v5, v10, v11}, Lcom/payu/custombrowser/services/SnoozeService;->access$1002(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 348
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageDownloadTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 349
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 331
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "imageSize":I
    .restart local v4    # "input":Ljava/io/InputStream;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$600(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v6, "snooze_notification_type"

    const-string v7, "internet_restored"

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1700(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->verifyPaymentCheck:Z
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$1800(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v6, "snooze_verify_api_status"

    const-string v7, "snooze_verify_api_called"

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1700(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->verifyPayment:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$1900(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 350
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "imageSize":I
    .end local v4    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 353
    .local v2, "e":Ljavax/net/ssl/SSLException;
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$1600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->runnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$1400(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I
    invoke-static {v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1300(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I
    invoke-static {v8}, Lcom/payu/custombrowser/services/SnoozeService;->access$1500(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    goto/16 :goto_1

    .line 339
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "imageSize":I
    .restart local v4    # "input":Ljava/io/InputStream;
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z
    invoke-static {v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$2000(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v6

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->launchNotification(Z)V
    invoke-static {v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$2100(Lcom/payu/custombrowser/services/SnoozeService;Z)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 355
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "imageSize":I
    .end local v4    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 356
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J
    invoke-static {v5, v10, v11}, Lcom/payu/custombrowser/services/SnoozeService;->access$1002(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 357
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageDownloadTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 358
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 344
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->access$1600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->runnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/payu/custombrowser/services/SnoozeService;->access$1400(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I
    invoke-static {v7}, Lcom/payu/custombrowser/services/SnoozeService;->access$1300(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I
    invoke-static {v8}, Lcom/payu/custombrowser/services/SnoozeService;->access$1500(Lcom/payu/custombrowser/services/SnoozeService;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 359
    :catch_3
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J
    invoke-static {v5, v10, v11}, Lcom/payu/custombrowser/services/SnoozeService;->access$1002(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 361
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$4;->val$imageDownloadTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    goto/16 :goto_1
.end method
