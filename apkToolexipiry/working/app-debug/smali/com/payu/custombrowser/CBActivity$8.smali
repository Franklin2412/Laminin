.class Lcom/payu/custombrowser/CBActivity$8;
.super Ljava/lang/Object;
.source "CBActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CBActivity;->setCheckFURLSURL(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CBActivity;

.field final synthetic val$postData:Ljava/lang/String;

.field final synthetic val$surl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CBActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CBActivity;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/payu/custombrowser/CBActivity$8;->this$0:Lcom/payu/custombrowser/CBActivity;

    iput-object p2, p0, Lcom/payu/custombrowser/CBActivity$8;->val$surl:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/CBActivity$8;->val$postData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 381
    const-string v4, ""

    .line 383
    .local v4, "responseStringBuffer":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity$8;->val$surl:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 385
    .local v0, "conn":Ljava/net/HttpURLConnection;
    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity$8;->val$postData:Ljava/lang/String;

    .line 386
    .local v2, "post":Ljava/lang/String;
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 387
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v6, "Content-Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 390
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 391
    .local v3, "postParamsByte":[B
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "post":Ljava/lang/String;
    .end local v3    # "postParamsByte":[B
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
