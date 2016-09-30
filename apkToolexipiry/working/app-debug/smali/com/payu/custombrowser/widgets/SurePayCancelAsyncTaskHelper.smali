.class public Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;
.super Ljava/lang/Object;
.source "SurePayCancelAsyncTaskHelper.java"

# interfaces
.implements Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;


# instance fields
.field private mPostData:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;->mPostData:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 34
    :try_start_0
    iget-object v5, p0, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;->mPostData:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;->mPostData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 36
    new-instance v1, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    invoke-direct {v1}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;-><init>()V

    .line 37
    .local v1, "customBrowserAsyncTaskData":Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
    const-string v5, "POST"

    invoke-virtual {v1, v5}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->setHttpMethod(Ljava/lang/String;)V

    .line 38
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 39
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;->mPostData:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command=EventAnalytics&data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->setPostData(Ljava/lang/String;)V

    .line 42
    const-string v5, "http://10.50.23.170:6543/MobileAnalytics"

    invoke-virtual {v1, v5}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;-><init>(Lcom/payu/custombrowser/cbinterface/CustomBrowserAsyncTaskInterface;)V

    .line 44
    .local v0, "customBrowserAsyncTask":Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v5}, Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "customBrowserAsyncTask":Lcom/payu/custombrowser/util/CustomBrowserAsyncTask;
    .end local v1    # "customBrowserAsyncTaskData":Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCustomBrowserAsyncTaskResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "cbAsyncTaskResponse"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method
