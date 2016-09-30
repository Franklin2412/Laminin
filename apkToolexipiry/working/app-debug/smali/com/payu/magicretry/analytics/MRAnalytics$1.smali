.class Lcom/payu/magicretry/analytics/MRAnalytics$1;
.super Ljava/lang/Object;
.source "MRAnalytics.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/magicretry/analytics/MRAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/payu/magicretry/analytics/MRAnalytics;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    iput-object p2, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    :cond_0
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z
    invoke-static {v6}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$000(Lcom/payu/magicretry/analytics/MRAnalytics;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->setLock()V
    invoke-static {v6}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$100(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 60
    :try_start_0
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 61
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    .local v0, "c":I
    if-lez v0, :cond_2

    .line 63
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 64
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 65
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$302(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 71
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .end local v0    # "c":I
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->releaseLock()V
    invoke-static {v6}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$400(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 79
    iget-object v6, p0, Lcom/payu/magicretry/analytics/MRAnalytics$1;->val$defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v6, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 80
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
