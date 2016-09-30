.class Lcom/payu/custombrowser/analytics/CBAnalytics$1;
.super Ljava/lang/Object;
.source "CBAnalytics.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/analytics/CBAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

.field final synthetic val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    iput-object p2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    :cond_0
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$000(Lcom/payu/custombrowser/analytics/CBAnalytics;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->setLock()V
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$100(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 81
    :try_start_0
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 82
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    .local v0, "c":I
    if-lez v0, :cond_2

    .line 84
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 85
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 86
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 90
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$402(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 92
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v0    # "c":I
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->releaseLock()V
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$500(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 100
    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v6, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 101
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
