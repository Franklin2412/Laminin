.class Lcom/payu/custombrowser/analytics/CBAnalytics$2;
.super Landroid/os/AsyncTask;
.source "CBAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/analytics/CBAnalytics;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    iput-object p2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 141
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->setLock()V
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$100(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 143
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, "newobject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$600(Lcom/payu/custombrowser/analytics/CBAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/payu/custombrowser/util/CBUtil;->readFileInputStream(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "temp":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 151
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :goto_0
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 152
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "newobject":Lorg/json/JSONObject;
    .end local v4    # "temp":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/CBAnalytics;->releaseLock()V
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$500(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    .line 168
    const/4 v5, 0x0

    return-object v5

    .line 149
    .restart local v3    # "newobject":Lorg/json/JSONObject;
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 155
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "newobject":Lorg/json/JSONObject;
    .end local v4    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    iget-object v5, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->this$0:Lcom/payu/custombrowser/analytics/CBAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/payu/custombrowser/analytics/CBAnalytics;->access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
