.class Lcom/payu/magicretry/analytics/MRAnalytics$2;
.super Landroid/os/AsyncTask;
.source "MRAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/magicretry/analytics/MRAnalytics;->log(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    iput-object p2, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/payu/magicretry/analytics/MRAnalytics$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 105
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->setLock()V
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$100(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 107
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "newobject":Lorg/json/JSONObject;
    const-string v7, ""

    .line 111
    .local v7, "temp":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 113
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 115
    :cond_0
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 116
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-char v9, v0

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 120
    :cond_1
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 125
    .local v5, "jsonArray":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 126
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 127
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 129
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newobject":Lorg/json/JSONObject;
    .end local v7    # "temp":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->releaseLock()V
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$400(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 143
    const/4 v8, 0x0

    return-object v8

    .line 123
    .restart local v0    # "c":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "newobject":Lorg/json/JSONObject;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 130
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newobject":Lorg/json/JSONObject;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    iget-object v8, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/magicretry/analytics/MRAnalytics$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
