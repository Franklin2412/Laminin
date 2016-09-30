.class Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;
.super Ljava/lang/Object;
.source "OldPaymentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/OldPaymentActivity$2;->onMerchantHashReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/OldPaymentActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iput-object p2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 252
    iget-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v2, v2, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # getter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->storeOneClickHash:I
    invoke-static {v2}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$100(Lcom/payu/payuui/Activity/OldPaymentActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 255
    :pswitch_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->val$result:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "hashObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v2}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    iget-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v3, v3, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const-string v4, "card_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "merchant_hash"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/payu/india/Payu/PayuUtils;->storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v1    # "hashObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_1
    iget-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v2, v2, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    iget-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;->val$result:Ljava/lang/String;

    # setter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$202(Lcom/payu/payuui/Activity/OldPaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
