.class Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;
.super Ljava/lang/Object;
.source "PayuUploadDeviceAnalytics.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

.field final synthetic val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    iput-object p2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    :cond_0
    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z
    invoke-static {v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$000(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-virtual {v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->setLock()V

    .line 58
    :try_start_0
    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 59
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "c":I
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-virtual {v4}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->releaseLock()V

    .line 68
    iget-object v4, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
