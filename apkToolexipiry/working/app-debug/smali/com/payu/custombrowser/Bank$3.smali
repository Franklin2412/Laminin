.class Lcom/payu/custombrowser/Bank$3;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onMerchantHashReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$3;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 552
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->this$0:Lcom/payu/custombrowser/Bank;

    iget v2, v2, Lcom/payu/custombrowser/Bank;->storeOneClickHash:I

    packed-switch v2, :pswitch_data_0

    .line 569
    :goto_0
    :pswitch_0
    return-void

    .line 555
    :pswitch_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->val$result:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, "hashObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$3;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v3}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "card_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "merchant_hash"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/payu/custombrowser/util/CBUtil;->storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    .end local v1    # "hashObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
