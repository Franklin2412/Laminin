.class public Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;
.super Landroid/os/AsyncTask;
.source "PayuDeviceAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private temp:Ljava/lang/String;

.field final synthetic this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;
    .param p2, "temp"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "strarr"    # [Ljava/lang/String;

    .prologue
    .line 216
    :try_start_0
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->isTimerCancelled:Z
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$900(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 217
    new-instance v5, Lorg/json/JSONArray;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-direct {v5, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 218
    .local v5, "jsonArray":Lorg/json/JSONArray;
    move-object v3, v5

    .line 219
    .local v3, "editorJsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 220
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v14, "merchant_key"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v14, "txnid"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v13}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/payu/custombrowser/util/CBUtil;->getBooleanSharedPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 221
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->removeJsonObjectAtJsonArrayIndex(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    invoke-static {v11, v3, v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1100(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v5

    .line 219
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 226
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "command=DeviceAnalytics&data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "postData":Ljava/lang/String;
    const-string v0, "http://10.50.23.170:6543/MobileAnalytics"

    .line 228
    .local v0, "analyticsURL":Ljava/lang/String;
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v11

    invoke-virtual {v11, v0, v7}, Lcom/payu/custombrowser/util/CBUtil;->getHttpsConn(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 229
    .local v1, "conn":Ljava/net/HttpURLConnection;
    if-eqz v1, :cond_5

    .line 230
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 232
    .local v8, "responseCode":I
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_4

    .line 234
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 235
    .local v9, "responseInputStream":Ljava/io/InputStream;
    invoke-static {v9}, Lcom/payu/custombrowser/util/CBUtil;->getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 236
    .local v10, "responseStringBuffer":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_3

    .line 237
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "status"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 239
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;
    invoke-static {v12}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$600(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 240
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 241
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v14, "merchant_key"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v14, "txnid"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v14}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12, v11, v13, v14}, Lcom/payu/custombrowser/util/CBUtil;->setBooleanSharedPreference(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    :cond_2
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    iget-object v12, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->updateFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 269
    .end local v0    # "analyticsURL":Ljava/lang/String;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "postData":Ljava/lang/String;
    .end local v8    # "responseCode":I
    .end local v9    # "responseInputStream":Ljava/io/InputStream;
    .end local v10    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_3
    :goto_2
    const/4 v11, 0x0

    return-object v11

    .line 247
    .restart local v0    # "analyticsURL":Ljava/lang/String;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "j":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "postData":Ljava/lang/String;
    .restart local v8    # "responseCode":I
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    iget-object v12, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->updateFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 260
    .end local v0    # "analyticsURL":Ljava/lang/String;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "postData":Ljava/lang/String;
    .end local v8    # "responseCode":I
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 261
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 252
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "analyticsURL":Ljava/lang/String;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "j":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "postData":Ljava/lang/String;
    .restart local v8    # "responseCode":I
    :cond_4
    :try_start_4
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    iget-object v12, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->updateFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$1200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V

    goto :goto_2

    .line 260
    .end local v0    # "analyticsURL":Ljava/lang/String;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "postData":Ljava/lang/String;
    .end local v8    # "responseCode":I
    :catch_3
    move-exception v11

    move-object v2, v11

    goto :goto_3

    .line 256
    .restart local v0    # "analyticsURL":Ljava/lang/String;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "j":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "postData":Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # getter for: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;
    invoke-static {v12}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$600(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 262
    .end local v0    # "analyticsURL":Ljava/lang/String;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "postData":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v11, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->this$0:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    # invokes: Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->resetTimer()V
    invoke-static {v11}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->access$800(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    .line 264
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 210
    return-void
.end method
