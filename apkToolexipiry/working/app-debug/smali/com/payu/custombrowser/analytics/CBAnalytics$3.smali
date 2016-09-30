.class Lcom/payu/custombrowser/analytics/CBAnalytics$3;
.super Ljava/util/TimerTask;
.source "CBAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/analytics/CBAnalytics;->resetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/analytics/CBAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0xc8

    .line 187
    :cond_0
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$000(Lcom/payu/custombrowser/analytics/CBAnalytics;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 188
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->setLock()V
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$100(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 189
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->isOnline()Z
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$700(Lcom/payu/custombrowser/analytics/CBAnalytics;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 190
    const-string v7, ""

    .line 192
    .local v7, "temp":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$600(Lcom/payu/custombrowser/analytics/CBAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;
    invoke-static {v10}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/payu/custombrowser/util/CBUtil;->readFileInputStream(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 199
    :try_start_1
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 200
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 202
    .local v8, "tempJsonArray":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 204
    new-instance v3, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "command=EventAnalytics&data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "postData":Ljava/lang/String;
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$600(Lcom/payu/custombrowser/analytics/CBAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v9

    const-string v10, "http://10.50.23.170:6543/MobileAnalytics"

    invoke-virtual {v9, v10, v4}, Lcom/payu/custombrowser/util/CBUtil;->getHttpsConn(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 211
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 214
    .local v5, "responseCode":I
    if-ne v5, v13, :cond_2

    .line 215
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 216
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/payu/custombrowser/util/CBUtil;->getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 217
    .local v6, "responseStringBuffer":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_2

    .line 218
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 220
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 221
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9, v10}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$402(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "postData":Ljava/lang/String;
    .end local v5    # "responseCode":I
    .end local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "tempJsonArray":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 238
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->resetTimer()V
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$800(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 240
    :cond_3
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->releaseLock()V
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$500(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 242
    return-void

    .line 232
    .restart local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    move-object v10, v9

    .line 199
    :try_start_2
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 200
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v8    # "tempJsonArray":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 203
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 204
    new-instance v3, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    .end local v2    # "i":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command=EventAnalytics&data="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .restart local v4    # "postData":Ljava/lang/String;
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$600(Lcom/payu/custombrowser/analytics/CBAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v9

    const-string v11, "http://10.50.23.170:6543/MobileAnalytics"

    invoke-virtual {v9, v11, v4}, Lcom/payu/custombrowser/util/CBUtil;->getHttpsConn(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 211
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_5

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 214
    .restart local v5    # "responseCode":I
    if-ne v5, v13, :cond_5

    .line 215
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 216
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/payu/custombrowser/util/CBUtil;->getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 217
    .restart local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_5

    .line 218
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 220
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;
    invoke-static {v9}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;

    move-result-object v9

    iget-object v11, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 221
    iget-object v9, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$3;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v9, v11}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$402(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "postData":Ljava/lang/String;
    .end local v5    # "responseCode":I
    .end local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "tempJsonArray":Lorg/json/JSONArray;
    :cond_5
    :goto_3
    throw v10

    .line 232
    :catch_1
    move-exception v1

    .line 233
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
