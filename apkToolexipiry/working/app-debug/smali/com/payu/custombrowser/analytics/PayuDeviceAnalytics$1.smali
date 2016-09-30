.class Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;
.super Ljava/lang/Object;
.source "PayuDeviceAnalytics.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

.field final synthetic val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    iput-object p2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    :cond_0
    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z
    invoke-static {v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->setLock()V
    invoke-static {v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$100(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->val$fileName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 58
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;

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

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "c":I
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->releaseLock()V
    invoke-static {v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$400(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    .line 67
    iget-object v4, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
