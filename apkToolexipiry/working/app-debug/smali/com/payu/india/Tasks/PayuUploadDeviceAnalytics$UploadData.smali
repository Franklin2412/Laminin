.class public Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;
.super Landroid/os/AsyncTask;
.source "PayuUploadDeviceAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;
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

.field final synthetic this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;
    .param p2, "temp"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "strarr"    # [Ljava/lang/String;

    .prologue
    .line 223
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 224
    .local v11, "jsonArray":Lorg/json/JSONArray;
    move-object v7, v11

    .line 225
    .local v7, "editorJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    const-string v22, "merchant_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    const-string v22, "txnid"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->getbooleanSharedPreference(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 229
    invoke-static {v7, v10}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->removeJsonObjectAtJsonArrayIndex(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v11

    .line 225
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 235
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mobile_data="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, "postData":Ljava/lang/String;
    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 237
    .local v14, "postParamsByte":[B
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->ANALYTICS_URL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$600(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 238
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 239
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 240
    const-string v19, "Content-Type"

    const-string v20, "application/x-www-form-urlencoded"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v19, "Content-Length"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 243
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 244
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 246
    .local v15, "responseCode":I
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 247
    .local v16, "responseInputStream":Ljava/io/InputStream;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v17, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 249
    .local v3, "byteContainer":[B
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "i":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_3

    .line 250
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v3, v1, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    goto :goto_1

    .line 309
    .end local v3    # "byteContainer":[B
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "postData":Ljava/lang/String;
    .end local v14    # "postParamsByte":[B
    .end local v15    # "responseCode":I
    .end local v16    # "responseInputStream":Ljava/io/InputStream;
    .end local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 310
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 319
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    const/16 v19, 0x0

    return-object v19

    .line 252
    .restart local v3    # "byteContainer":[B
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "editorJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v13    # "postData":Ljava/lang/String;
    .restart local v14    # "postParamsByte":[B
    .restart local v15    # "responseCode":I
    .restart local v16    # "responseInputStream":Ljava/io/InputStream;
    .restart local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_3
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v15, v0, :cond_7

    .line 255
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 258
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "-1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 259
    :cond_4
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    const-string v22, "merchant_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    const-string v22, "txnid"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->setBooleanSharedPreference(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 259
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 265
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 266
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 268
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 269
    .local v6, "e1":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_3

    .line 282
    .end local v6    # "e1":Ljava/io/IOException;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 284
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 286
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 287
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 288
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_3

    .line 289
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .line 290
    .restart local v6    # "e1":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_3

    .line 309
    .end local v3    # "byteContainer":[B
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/io/IOException;
    .end local v7    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "postData":Ljava/lang/String;
    .end local v14    # "postParamsByte":[B
    .end local v15    # "responseCode":I
    .end local v16    # "responseInputStream":Ljava/io/InputStream;
    .end local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "url":Ljava/net/URL;
    :catch_4
    move-exception v19

    move-object/from16 v5, v19

    goto/16 :goto_2

    .line 274
    .restart local v3    # "byteContainer":[B
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "editorJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "postData":Ljava/lang/String;
    .restart local v14    # "postParamsByte":[B
    .restart local v15    # "responseCode":I
    .restart local v16    # "responseInputStream":Ljava/io/InputStream;
    .restart local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 275
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 276
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 277
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    .line 278
    .restart local v6    # "e1":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 312
    .end local v3    # "byteContainer":[B
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e1":Ljava/io/IOException;
    .end local v7    # "editorJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "postData":Ljava/lang/String;
    .end local v14    # "postParamsByte":[B
    .end local v15    # "responseCode":I
    .end local v16    # "responseInputStream":Ljava/io/InputStream;
    .end local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    .line 313
    .local v5, "e":Ljava/io/IOException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # invokes: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->resetTimer()V
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$500(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)V

    .line 314
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_3

    .line 316
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 317
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 296
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "byteContainer":[B
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "editorJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v13    # "postData":Ljava/lang/String;
    .restart local v14    # "postParamsByte":[B
    .restart local v15    # "responseCode":I
    .restart local v16    # "responseInputStream":Ljava/io/InputStream;
    .restart local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 297
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->temp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 298
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_3

    .line 299
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    .line 301
    .restart local v6    # "e1":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 306
    .end local v3    # "byteContainer":[B
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "e1":Ljava/io/IOException;
    .end local v9    # "i":I
    .end local v13    # "postData":Ljava/lang/String;
    .end local v14    # "postParamsByte":[B
    .end local v15    # "responseCode":I
    .end local v16    # "responseInputStream":Ljava/io/InputStream;
    .end local v17    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "url":Ljava/net/URL;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v19, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;
    invoke-static/range {v19 .. v19}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->this$0:Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    move-object/from16 v20, v0

    # getter for: Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    return-void
.end method
