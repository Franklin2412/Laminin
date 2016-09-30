.class Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;
.super Ljava/util/TimerTask;
.source "PayuUploadDeviceAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->resetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 133
    :cond_0
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$000(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const-wide/16 v6, 0x1388

    # setter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->TIMER_DELAY:J
    invoke-static {v6, v7}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$402(J)J

    .line 135
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-virtual {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->setLock()V

    .line 136
    const-string v4, ""

    .line 139
    .local v4, "temp":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 144
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 145
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

    .line 148
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    :cond_3
    :goto_1
    if-lez v0, :cond_4

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

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

    .line 156
    if-ltz v0, :cond_3

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_3

    .line 157
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 164
    new-instance v5, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;

    iget-object v6, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-direct {v5, v6, v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;-><init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;Ljava/lang/String;)V

    new-array v6, v9, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 169
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # invokes: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->resetTimer()V
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$500(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)V

    .line 171
    :cond_6
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-virtual {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->releaseLock()V

    .line 172
    return-void

    .line 149
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    .restart local v0    # "c":I
    :cond_7
    :goto_3
    if-lez v0, :cond_8

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

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

    .line 156
    if-ltz v0, :cond_7

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_7

    .line 157
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 159
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 164
    new-instance v5, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;

    iget-object v6, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-direct {v5, v6, v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;-><init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;Ljava/lang/String;)V

    new-array v6, v9, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 152
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    move-object v6, v5

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    .restart local v0    # "c":I
    :cond_9
    :goto_4
    if-lez v0, :cond_a

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

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

    .line 156
    if-ltz v0, :cond_9

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_9

    .line 157
    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 159
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 164
    new-instance v5, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;

    iget-object v7, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-direct {v5, v7, v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;-><init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;Ljava/lang/String;)V

    new-array v7, v9, [Ljava/lang/String;

    aput-object v4, v7, v8

    invoke-virtual {v5, v7}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_b
    throw v6
.end method
