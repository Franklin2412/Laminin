.class Lcom/payu/payuui/Activity/PayUBaseActivity$2;
.super Ljava/lang/Object;
.source "PayUBaseActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/PayUBaseActivity;->setupViewPagerAdapter(Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

.field final synthetic val$payuResponse:Lcom/payu/india/Model/PayuResponse;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/PayUBaseActivity;Lcom/payu/india/Model/PayuResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->val$payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 306
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onPageSelected(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 255
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v6, v6, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    move v6, v8

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 301
    :cond_1
    :goto_1
    return-void

    .line 255
    :sswitch_0
    const-string v11, "Saved Cards"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string v11, "Credit/Debit Cards"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_0

    :sswitch_2
    const-string v11, "Net Banking"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v10

    goto :goto_0

    :sswitch_3
    const-string v11, "PayU Money"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    sget v8, Lcom/payu/payuui/R$id;->pager_saved_card:I

    invoke-virtual {v6, v8}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    .line 258
    .local v4, "myViewPager":Landroid/support/v4/view/ViewPager;
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    sget v8, Lcom/payu/payuui/R$id;->pager_saved_card:I

    invoke-virtual {v6, v8}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 259
    .local v0, "currentPosition":I
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v8, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->val$payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v8}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v8

    # setter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6, v8}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$002(Lcom/payu/payuui/Activity/PayUBaseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 260
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 261
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 266
    :cond_2
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$200(Lcom/payu/payuui/Activity/PayUBaseActivity;)I

    move-result v6

    if-ne v6, v10, :cond_3

    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v6}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v6

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v8, v6, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    iget-object v10, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v6}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v10, v6}, Lcom/payu/india/Payu/PayuUtils;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 267
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 268
    :cond_3
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$200(Lcom/payu/payuui/Activity/PayUBaseActivity;)I

    move-result v6

    if-ne v6, v9, :cond_4

    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v6}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v6

    if-ne v6, v9, :cond_4

    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v6}, Lcom/payu/india/Model/StoredCard;->getOneTapCard()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 269
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 270
    :cond_4
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v6}, Lcom/payu/india/Model/StoredCard;->getCardType()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SMAE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 271
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 273
    :cond_5
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

    .line 274
    .local v2, "mSaveAdapter":Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;
    invoke-virtual {v2, v0}, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->getFragment(I)Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    move-result-object v3

    .line 276
    .local v3, "mSaveFragment":Lcom/payu/payuui/Fragment/SavedCardItemFragment;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvValidation()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 277
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 278
    :cond_6
    if-eqz v3, :cond_1

    .line 282
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 287
    .end local v0    # "currentPosition":I
    .end local v2    # "mSaveAdapter":Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;
    .end local v3    # "mSaveFragment":Lcom/payu/payuui/Fragment/SavedCardItemFragment;
    .end local v4    # "myViewPager":Landroid/support/v4/view/ViewPager;
    :pswitch_1
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$300(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/payu/payuui/Adapter/PagerAdapter;

    .line 288
    .local v1, "mPagerAdapter":Lcom/payu/payuui/Adapter/PagerAdapter;
    invoke-virtual {v1, p1}, Lcom/payu/payuui/Adapter/PagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .line 289
    .local v5, "tempCreditDebitFragment":Lcom/payu/payuui/Fragment/CreditDebitFragment;
    invoke-virtual {v5}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->checkData()V

    goto/16 :goto_1

    .line 292
    .end local v1    # "mPagerAdapter":Lcom/payu/payuui/Adapter/PagerAdapter;
    .end local v5    # "tempCreditDebitFragment":Lcom/payu/payuui/Fragment/CreditDebitFragment;
    :pswitch_2
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    invoke-virtual {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->hide_keyboard()V

    goto/16 :goto_1

    .line 296
    :pswitch_3
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    # getter for: Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$2;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    invoke-virtual {v6}, Lcom/payu/payuui/Activity/PayUBaseActivity;->hide_keyboard()V

    goto/16 :goto_1

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc3e04a -> :sswitch_0
        0x151bfcf9 -> :sswitch_1
        0x38f1b063 -> :sswitch_2
        0x69cd8f8d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
