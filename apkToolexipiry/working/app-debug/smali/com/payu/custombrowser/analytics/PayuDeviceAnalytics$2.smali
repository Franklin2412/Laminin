.class Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;
.super Ljava/util/TimerTask;
.source "PayuDeviceAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->resetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    const-wide/16 v6, 0x1388

    # setter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->TIMER_DELAY:J
    invoke-static {v5, v6, v7}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$502(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;J)J

    .line 137
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->setLock()V
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$100(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    .line 138
    const-string v4, ""

    .line 141
    .local v4, "temp":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$600(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$600(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$600(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 146
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, v0

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    :cond_3
    :goto_1
    if-lez v0, :cond_4

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    if-ltz v0, :cond_3

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_3

    .line 159
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 161
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 165
    new-instance v5, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-direct {v5, v6, v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;-><init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V

    new-array v6, v9, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 172
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->resetTimer()V
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$800(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    .line 174
    :cond_5
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->releaseLock()V
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$400(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    .line 175
    return-void

    .line 168
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_6
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$700(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    goto :goto_2

    .line 151
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    .restart local v0    # "c":I
    :cond_7
    :goto_3
    if-lez v0, :cond_8

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    if-ltz v0, :cond_7

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_7

    .line 159
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 161
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 165
    new-instance v5, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-direct {v5, v6, v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;-><init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V

    new-array v6, v9, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 168
    :cond_9
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$700(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_2

    .line 154
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    move-object v6, v5

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    .restart local v0    # "c":I
    :cond_a
    :goto_4
    if-lez v0, :cond_b

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    if-ltz v0, :cond_a

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_a

    .line 159
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 161
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 165
    new-instance v5, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;

    iget-object v7, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-direct {v5, v7, v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;-><init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V

    new-array v7, v9, [Ljava/lang/String;

    aput-object v4, v7, v8

    invoke-virtual {v5, v7}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :goto_5
    throw v6

    :cond_c
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$700(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    goto :goto_5
.end method
