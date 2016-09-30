.class Lcom/payu/magicretry/analytics/MRAnalytics$3;
.super Ljava/util/TimerTask;
.source "MRAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/magicretry/analytics/MRAnalytics;->resetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/magicretry/analytics/MRAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/magicretry/analytics/MRAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 163
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$000(Lcom/payu/magicretry/analytics/MRAnalytics;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->setLock()V
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$100(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->isOnline()Z
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$600(Lcom/payu/magicretry/analytics/MRAnalytics;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 166
    const-string v16, ""

    .line 169
    .local v16, "temp":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    .line 174
    .local v8, "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v8}, Ljava/io/FileInputStream;->read()I

    move-result v4

    .local v4, "c":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_2

    .line 175
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    int-to-char v0, v4

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 189
    .local v17, "tempJsonArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 190
    .local v2, "bufferJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 191
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 192
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v10, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 205
    .end local v9    # "i":I
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 206
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "command=EventAnalytics&data="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, "postData":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 214
    .local v12, "postParamsByte":[B
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->ANALYTICS_URL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$700(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 216
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    const-string v19, "Content-Type"

    const-string v20, "application/x-www-form-urlencoded"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v19, "Content-Length"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 221
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 222
    .local v13, "responseCode":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 223
    .local v14, "responseInputStream":Ljava/io/InputStream;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v15, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 225
    .local v3, "byteContainer":[B
    :goto_2
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .restart local v9    # "i":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_6

    .line 226
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v3, v1, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    .line 244
    .end local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "i":I
    .end local v11    # "postData":Ljava/lang/String;
    .end local v12    # "postParamsByte":[B
    .end local v13    # "responseCode":I
    .end local v14    # "responseInputStream":Ljava/io/InputStream;
    .end local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 245
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 259
    .end local v4    # "c":I
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v16    # "temp":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->resetTimer()V
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$800(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 262
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # invokes: Lcom/payu/magicretry/analytics/MRAnalytics;->releaseLock()V
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$400(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    .line 264
    return-void

    .line 230
    .restart local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .restart local v3    # "byteContainer":[B
    .restart local v4    # "c":I
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "i":I
    .restart local v11    # "postData":Ljava/lang/String;
    .restart local v12    # "postParamsByte":[B
    .restart local v13    # "responseCode":I
    .restart local v14    # "responseInputStream":Ljava/io/InputStream;
    .restart local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v16    # "temp":Ljava/lang/String;
    .restart local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_6
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v13, v0, :cond_4

    .line 232
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$302(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 238
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_3

    .line 246
    .end local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    .end local v11    # "postData":Ljava/lang/String;
    .end local v12    # "postParamsByte":[B
    .end local v13    # "responseCode":I
    .end local v14    # "responseInputStream":Ljava/io/InputStream;
    .end local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .end local v18    # "url":Ljava/net/URL;
    :catch_2
    move-exception v6

    .line 247
    .local v6, "e":Ljava/net/ProtocolException;
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_3

    .line 248
    .end local v6    # "e":Ljava/net/ProtocolException;
    :catch_3
    move-exception v6

    .line 249
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 250
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v6

    .line 251
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 252
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 253
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 254
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v6

    .line 255
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 179
    .end local v4    # "c":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    .line 180
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :try_start_5
    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v17    # "tempJsonArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 190
    .restart local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_7

    .line 191
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_7

    .line 192
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 205
    .end local v9    # "i":I
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 206
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "command=EventAnalytics&data="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 210
    .restart local v11    # "postData":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 214
    .restart local v12    # "postParamsByte":[B
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->ANALYTICS_URL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$700(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v18    # "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 216
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    const-string v19, "Content-Type"

    const-string v20, "application/x-www-form-urlencoded"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v19, "Content-Length"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 221
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 222
    .restart local v13    # "responseCode":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 223
    .restart local v14    # "responseInputStream":Ljava/io/InputStream;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .restart local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 225
    .restart local v3    # "byteContainer":[B
    :goto_5
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .restart local v9    # "i":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_8

    .line 226
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v3, v1, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    goto :goto_5

    .line 244
    .end local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "i":I
    .end local v11    # "postData":Ljava/lang/String;
    .end local v12    # "postParamsByte":[B
    .end local v13    # "responseCode":I
    .end local v14    # "responseInputStream":Ljava/io/InputStream;
    .end local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .end local v18    # "url":Ljava/net/URL;
    :catch_8
    move-exception v6

    .line 245
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_3

    .line 230
    .restart local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .restart local v3    # "byteContainer":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .local v6, "e":Ljava/io/IOException;
    .restart local v9    # "i":I
    .restart local v11    # "postData":Ljava/lang/String;
    .restart local v12    # "postParamsByte":[B
    .restart local v13    # "responseCode":I
    .restart local v14    # "responseInputStream":Ljava/io/InputStream;
    .restart local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_8
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v13, v0, :cond_4

    .line 232
    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v20}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$302(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_d

    goto/16 :goto_3

    .line 238
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_9
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    goto/16 :goto_3

    .line 246
    .end local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    .end local v11    # "postData":Ljava/lang/String;
    .end local v12    # "postParamsByte":[B
    .end local v13    # "responseCode":I
    .end local v14    # "responseInputStream":Ljava/io/InputStream;
    .end local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .end local v18    # "url":Ljava/net/URL;
    :catch_a
    move-exception v6

    .line 247
    .local v6, "e":Ljava/net/ProtocolException;
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_3

    .line 248
    .end local v6    # "e":Ljava/net/ProtocolException;
    :catch_b
    move-exception v6

    .line 249
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 250
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_c
    move-exception v6

    .line 251
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 252
    .end local v6    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v6

    .line 253
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 254
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_e
    move-exception v6

    .line 255
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 186
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    move-object/from16 v20, v19

    .line 188
    :try_start_8
    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v17    # "tempJsonArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 190
    .restart local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 191
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_9

    .line 192
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 205
    .end local v9    # "i":I
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_a

    .line 206
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "command=EventAnalytics&data="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 210
    .restart local v11    # "postData":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 214
    .restart local v12    # "postParamsByte":[B
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->ANALYTICS_URL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$700(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v18    # "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 216
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    const-string v19, "Content-Type"

    const-string v21, "application/x-www-form-urlencoded"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v19, "Content-Length"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 221
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 222
    .restart local v13    # "responseCode":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 223
    .restart local v14    # "responseInputStream":Ljava/io/InputStream;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .restart local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 225
    .restart local v3    # "byteContainer":[B
    :goto_7
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .restart local v9    # "i":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_b

    .line 226
    new-instance v19, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v3, v1, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15

    goto :goto_7

    .line 244
    .end local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "i":I
    .end local v11    # "postData":Ljava/lang/String;
    .end local v12    # "postParamsByte":[B
    .end local v13    # "responseCode":I
    .end local v14    # "responseInputStream":Ljava/io/InputStream;
    .end local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .end local v18    # "url":Ljava/net/URL;
    :catch_f
    move-exception v6

    .line 245
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 256
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :cond_a
    :goto_8
    throw v20

    .line 230
    .restart local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .restart local v3    # "byteContainer":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "i":I
    .restart local v11    # "postData":Ljava/lang/String;
    .restart local v12    # "postParamsByte":[B
    .restart local v13    # "responseCode":I
    .restart local v14    # "responseInputStream":Ljava/io/InputStream;
    .restart local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_b
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v13, v0, :cond_a

    .line 232
    :try_start_9
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v21, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v21, v0

    # getter for: Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/magicretry/analytics/MRAnalytics$3;->this$0:Lcom/payu/magicretry/analytics/MRAnalytics;

    move-object/from16 v19, v0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    # setter for: Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/payu/magicretry/analytics/MRAnalytics;->access$302(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_14

    goto :goto_8

    .line 238
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :catch_10
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15

    goto :goto_8

    .line 246
    .end local v2    # "bufferJsonArray":Lorg/json/JSONArray;
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    .end local v11    # "postData":Ljava/lang/String;
    .end local v12    # "postParamsByte":[B
    .end local v13    # "responseCode":I
    .end local v14    # "responseInputStream":Ljava/io/InputStream;
    .end local v15    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "tempJsonArray":Lorg/json/JSONArray;
    .end local v18    # "url":Ljava/net/URL;
    :catch_11
    move-exception v6

    .line 247
    .local v6, "e":Ljava/net/ProtocolException;
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_8

    .line 248
    .end local v6    # "e":Ljava/net/ProtocolException;
    :catch_12
    move-exception v6

    .line 249
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_8

    .line 250
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_13
    move-exception v6

    .line 251
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 252
    .end local v6    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v6

    .line 253
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    .line 254
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_15
    move-exception v6

    .line 255
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method
