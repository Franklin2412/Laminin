.class public Lcom/payu/payuui/Activity/MerchantCheckoutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MerchantCheckoutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget v1, Lcom/payu/payuui/R$layout;->activity_merchant_checkout:I

    invoke-virtual {p0, v1}, Lcom/payu/payuui/Activity/MerchantCheckoutActivity;->setContentView(I)V

    .line 16
    sget v1, Lcom/payu/payuui/R$id;->text_view_post_params:I

    invoke-virtual {p0, v1}, Lcom/payu/payuui/Activity/MerchantCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    .local v0, "postParamsTextView":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Merchant\'s post data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/payu/payuui/Activity/MerchantCheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "postData"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method
