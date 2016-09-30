.class public Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;
.super Landroid/os/AsyncTask;
.source "CustomBrowserAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCustomBrowserAsyncTaskInterface:Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;)V
    .locals 0
    .param p1, "customBrowserAsyncTaskInterface"    # Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;->mCustomBrowserAsyncTaskInterface:Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;->doInBackground([Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;)Ljava/lang/String;
    .locals 13
    .param p1, "customBrowserAsyncTaskData"    # [Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    .prologue
    const/4 v9, 0x0

    .line 44
    aget-object v4, p1, v9

    .line 46
    .local v4, "mCustomBrowserAsyncTaskData":Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 48
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->getHttpMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const-string v10, "Content-Type"

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v10, "Content-Length"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :cond_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 52
    .local v5, "postParamsByte":[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/OutputStream;->write([B)V

    .line 53
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 54
    .local v6, "responseInputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v7, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 56
    .local v0, "byteContainer":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "i":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1

    .line 57
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "byteContainer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v5    # "postParamsByte":[B
    .end local v6    # "responseInputStream":Ljava/io/InputStream;
    .end local v7    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v9

    .line 59
    .restart local v0    # "byteContainer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v5    # "postParamsByte":[B
    .restart local v6    # "responseInputStream":Ljava/io/InputStream;
    .restart local v7    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;->mCustomBrowserAsyncTaskInterface:Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;

    invoke-interface {v0, p1}, Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;->onCustomBrowserAsyncTaskResponse(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    return-void
.end method
