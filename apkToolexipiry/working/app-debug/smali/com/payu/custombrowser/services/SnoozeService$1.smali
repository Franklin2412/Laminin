.class Lcom/payu/custombrowser/services/SnoozeService$1;
.super Ljava/lang/Object;
.source "SnoozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/services/SnoozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 131
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->verifyURL:Ljava/lang/String;
    invoke-static {v8}, Lcom/payu/custombrowser/services/SnoozeService;->access$000(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 133
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "command=verifyTxnStatus&var1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v9}, Lcom/payu/custombrowser/services/SnoozeService;->access$200(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->postData:Ljava/lang/String;
    invoke-static {v10}, Lcom/payu/custombrowser/services/SnoozeService;->access$100(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "txnid"

    invoke-virtual {v9, v10, v11}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v9}, Lcom/payu/custombrowser/services/SnoozeService;->access$200(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->postData:Ljava/lang/String;
    invoke-static {v10}, Lcom/payu/custombrowser/services/SnoozeService;->access$100(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "key"

    invoke-virtual {v9, v10, v11}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&protityparam="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->verifyParam:Ljava/lang/String;
    invoke-static {v9}, Lcom/payu/custombrowser/services/SnoozeService;->access$300(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "post":Ljava/lang/String;
    const-string v8, "POST"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 135
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v8, "Content-Length"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v8, "Cookie"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PHPSESSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v10}, Lcom/payu/custombrowser/services/SnoozeService;->access$200(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v10

    const-string v11, "PHPSESSID"

    iget-object v12, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v12}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/payu/custombrowser/util/CBUtil;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; PAYUID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;
    invoke-static {v10}, Lcom/payu/custombrowser/services/SnoozeService;->access$200(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/CBUtil;

    move-result-object v10

    const-string v11, "PAYUID"

    iget-object v12, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v12}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/payu/custombrowser/util/CBUtil;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 141
    .local v5, "postParamsByte":[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    .line 143
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 145
    .local v0, "buffer":[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/payu/custombrowser/util/CBUtil;->getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 148
    .local v6, "responseStringBuffer":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_0

    .line 149
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->payuResponse:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->access$402(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->launchNotificationTransactionUpdate(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->access$500(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "post":Ljava/lang/String;
    .end local v5    # "postParamsByte":[B
    .end local v6    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v7    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
