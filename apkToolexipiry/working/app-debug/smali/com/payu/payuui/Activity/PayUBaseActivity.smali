.class public Lcom/payu/payuui/Activity/PayUBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PayUBaseActivity.java"

# interfaces
.implements Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;
.implements Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private amountTextView:Landroid/widget/TextView;

.field private bankCode:Ljava/lang/String;

.field public bundle:Landroid/os/Bundle;

.field mPayUHashes:Lcom/payu/india/Model/PayuHashes;

.field mPaymentParams:Lcom/payu/india/Model/PaymentParams;

.field mPayuResponse:Lcom/payu/india/Model/PayuResponse;

.field mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

.field private mPostData:Lcom/payu/india/Model/PostData;

.field private mTabCount:I

.field private netBankingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field oneClickCardTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pagerAdapter:Lcom/payu/payuui/Adapter/PagerAdapter;

.field private payNowButton:Landroid/widget/Button;

.field paymentOptionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field paymentOptionsSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private postData:Lcom/payu/india/Model/PostData;

.field private savedCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation
.end field

.field private slidingTabLayout:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

.field private smsPermission:Ljava/lang/Boolean;

.field private spinnerNetbanking:Landroid/widget/Spinner;

.field private storeOneClickHash:I

.field private transactionIdTextView:Landroid/widget/TextView;

.field valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

.field private valueAddedServiceTask:Lcom/payu/india/Tasks/ValueAddedServiceTask;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsSet:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Activity/PayUBaseActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/payu/payuui/Activity/PayUBaseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->savedCards:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Activity/PayUBaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    return v0
.end method

.method static synthetic access$300(Lcom/payu/payuui/Activity/PayUBaseActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private makePaymentByCreditCard()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 376
    sget v3, Lcom/payu/payuui/R$id;->check_box_save_card:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 377
    .local v2, "saveCardCheckBox":Landroid/widget/CheckBox;
    sget v3, Lcom/payu/payuui/R$id;->check_box_enable_oneclick_payment:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 379
    .local v1, "enableOneClickPaymentCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3, v7}, Lcom/payu/india/Model/PaymentParams;->setStoreCard(I)V

    .line 385
    :goto_0
    iget v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3, v7}, Lcom/payu/india/Model/PaymentParams;->setEnableOneClickPayment(I)V

    .line 394
    :goto_1
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_card_number:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setCardNumber(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_name_on_card:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setNameOnCard(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_expiry_month:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setExpiryMonth(Ljava/lang/String;)V

    .line 397
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_expiry_year:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setExpiryYear(Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_card_cvv:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setCvv(Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v3

    if-ne v3, v7, :cond_3

    sget v3, Lcom/payu/payuui/R$id;->edit_text_card_label:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 401
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_card_label:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setCardName(Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_2
    :try_start_0
    new-instance v3, Lcom/payu/india/PostParams/PaymentPostParams;

    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v5, "CC"

    invoke-direct {v3, v4, v5}, Lcom/payu/india/PostParams/PaymentPostParams;-><init>(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/PaymentPostParams;->getPaymentPostParams()Lcom/payu/india/Model/PostData;

    move-result-object v3

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_3
    return-void

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PaymentParams;->setStoreCard(I)V

    goto/16 :goto_0

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PaymentParams;->setEnableOneClickPayment(I)V

    goto/16 :goto_1

    .line 402
    :cond_3
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v3

    if-ne v3, v7, :cond_0

    sget v3, Lcom/payu/payuui/R$id;->edit_text_card_label:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    sget v3, Lcom/payu/payuui/R$id;->edit_text_name_on_card:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payu/india/Model/PaymentParams;->setCardName(Ljava/lang/String;)V

    goto :goto_2

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private makePaymentByNB()V
    .locals 5

    .prologue
    .line 416
    sget v2, Lcom/payu/payuui/R$id;->spinner:I

    invoke-virtual {p0, v2}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->spinnerNetbanking:Landroid/widget/Spinner;

    .line 418
    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuResponse;->getNetBanks()Ljava/util/ArrayList;

    move-result-object v1

    .line 421
    .local v1, "netBankingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->spinnerNetbanking:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bankCode:Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bankCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/PaymentParams;->setBankCode(Ljava/lang/String;)V

    .line 426
    :try_start_0
    new-instance v2, Lcom/payu/india/PostParams/PaymentPostParams;

    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v4, "NB"

    invoke-direct {v2, v3, v4}, Lcom/payu/india/PostParams/PaymentPostParams;-><init>(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/payu/india/PostParams/PaymentPostParams;->getPaymentPostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makePaymentByPayUMoney()V
    .locals 4

    .prologue
    .line 367
    :try_start_0
    new-instance v1, Lcom/payu/india/PostParams/PaymentPostParams;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v3, "PAYU_MONEY"

    invoke-direct {v1, v2, v3}, Lcom/payu/india/PostParams/PaymentPostParams;-><init>(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/payu/india/PostParams/PaymentPostParams;->getPaymentPostParams()Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makePaymentByStoredCard()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 435
    sget v7, Lcom/payu/payuui/R$id;->pager_saved_card:I

    invoke-virtual {p0, v7}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    .line 436
    .local v6, "viewPager":Landroid/support/v4/view/ViewPager;
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v7}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/payu/india/Model/StoredCard;

    .line 437
    .local v5, "selectedStoredCard":Lcom/payu/india/Model/StoredCard;
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

    .line 438
    .local v2, "mSaveAdapter":Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->getFragment(I)Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    move-result-object v3

    .line 439
    .local v3, "mSaveFragment":Lcom/payu/payuui/Fragment/SavedCardItemFragment;
    invoke-virtual {v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getCvv()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "cvv":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/payu/india/Model/StoredCard;->setCvv(Ljava/lang/String;)V

    .line 445
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/payu/india/Model/PaymentParams;->setCardToken(Ljava/lang/String;)V

    .line 446
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getNameOnCard()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/payu/india/Model/PaymentParams;->setNameOnCard(Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getCardName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/payu/india/Model/PaymentParams;->setCardName(Ljava/lang/String;)V

    .line 448
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getExpiryMonth()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/payu/india/Model/PaymentParams;->setExpiryMonth(Ljava/lang/String;)V

    .line 449
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/payu/india/Model/PaymentParams;->setExpiryYear(Ljava/lang/String;)V

    .line 452
    iget v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    if-ne v7, v9, :cond_1

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getOneTapCard()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 453
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->oneClickCardTokens:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 462
    .local v4, "merchantHash":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v7

    if-ne v7, v9, :cond_3

    const-string v7, "default"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 463
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7, v4}, Lcom/payu/india/Model/PaymentParams;->setCardCvvMerchant(Ljava/lang/String;)V

    .line 468
    :goto_1
    invoke-virtual {v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isEnableOneClickPaymentChecked()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 469
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7, v9}, Lcom/payu/india/Model/PaymentParams;->setEnableOneClickPayment(I)V

    .line 473
    :cond_0
    :try_start_0
    new-instance v7, Lcom/payu/india/PostParams/PaymentPostParams;

    iget-object v8, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v9, "CC"

    invoke-direct {v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;-><init>(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getPaymentPostParams()Lcom/payu/india/Model/PostData;

    move-result-object v7

    iput-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_2
    return-void

    .line 455
    .end local v4    # "merchantHash":Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 456
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/payu/india/Payu/PayuUtils;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "merchantHash":Ljava/lang/String;
    goto :goto_0

    .line 459
    .end local v4    # "merchantHash":Ljava/lang/String;
    :cond_2
    const-string v4, "default"

    .restart local v4    # "merchantHash":Ljava/lang/String;
    goto :goto_0

    .line 465
    :cond_3
    iget-object v7, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7, v0}, Lcom/payu/india/Model/PaymentParams;->setCvv(Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private setupViewPagerAdapter(Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;)V
    .locals 8
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;
    .param p2, "valueAddedResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isResponseAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v0

    if-nez v0, :cond_5

    .line 206
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isStoredCardsAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    const-string v1, "Saved Cards"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isCreditCardAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isDebitCardAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    const-string v1, "Credit/Debit Cards"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isNetBanksAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    const-string v1, "Net Banking"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isPaisaWalletAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getPaisaWallet()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAYUW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    const-string v1, "PayU Money"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_4
    :goto_0
    new-instance v0, Lcom/payu/payuui/Adapter/PagerAdapter;

    invoke-virtual {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    iget-object v6, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->oneClickCardTokens:Ljava/util/HashMap;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/payu/payuui/Adapter/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;ILjava/util/HashMap;)V

    iput-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->pagerAdapter:Lcom/payu/payuui/Adapter/PagerAdapter;

    .line 230
    sget v0, Lcom/payu/payuui/R$id;->pager:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 231
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->pagerAdapter:Lcom/payu/payuui/Adapter/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 233
    sget v0, Lcom/payu/payuui/R$id;->sliding_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    iput-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->slidingTabLayout:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    .line 234
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->slidingTabLayout:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    invoke-virtual {v0, v7}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 236
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->slidingTabLayout:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    new-instance v1, Lcom/payu/payuui/Activity/PayUBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Activity/PayUBaseActivity$1;-><init>(Lcom/payu/payuui/Activity/PayUBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->setCustomTabColorizer(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;)V

    .line 244
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->slidingTabLayout:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 246
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/payu/payuui/Activity/PayUBaseActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/payu/payuui/Activity/PayUBaseActivity$2;-><init>(Lcom/payu/payuui/Activity/PayUBaseActivity;Lcom/payu/india/Model/PayuResponse;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 309
    sget v0, Lcom/payu/payuui/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    return-void

    .line 225
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public hide_keyboard()V
    .locals 4

    .prologue
    .line 492
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/payu/payuui/Activity/PayUBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 494
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 496
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 497
    new-instance v1, Landroid/view/View;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 499
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 500
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 483
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 485
    invoke-virtual {p0, p2, p3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 486
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->finish()V

    .line 489
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/payu/payuui/R$id;->button_pay_now:I

    if-ne v1, v2, :cond_1

    .line 320
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;

    .line 322
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayUHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getPaymentHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PaymentParams;->setHash(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->paymentOptionsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payu/payuui/Activity/PaymentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "payuConfig"

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    const-string v1, "store_one_click_hash"

    iget v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v1, "sms_permission"

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->smsPermission:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 353
    const-string v1, "magic_retry"

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "magic_retry"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/payu/payuui/Activity/PayUBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 325
    :sswitch_0
    const-string v4, "Saved Cards"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "Credit/Debit Cards"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "Net Banking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "Cash Cards"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "EMI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "PayU Money"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-direct {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->makePaymentByStoredCard()V

    goto/16 :goto_1

    .line 330
    :pswitch_2
    invoke-direct {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->makePaymentByCreditCard()V

    goto/16 :goto_1

    .line 333
    :pswitch_3
    invoke-direct {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->makePaymentByNB()V

    goto/16 :goto_1

    .line 340
    :pswitch_4
    invoke-direct {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->makePaymentByPayUMoney()V

    goto/16 :goto_1

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPostData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x10ca1 -> :sswitch_4
        0xdc3e04a -> :sswitch_0
        0x151bfcf9 -> :sswitch_1
        0x38f1b063 -> :sswitch_2
        0x69cd8f8d -> :sswitch_5
        0x7f4ef036 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget v3, Lcom/payu/payuui/R$layout;->activity_payu_base:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->setContentView(I)V

    .line 86
    sget v3, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payNowButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    .line 90
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "payuConfig"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/payu/india/Model/PayuConfig;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 91
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    :goto_0
    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 93
    new-instance v3, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v3}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    .line 98
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "payment_params"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/payu/india/Model/PaymentParams;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 99
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "payu_hashes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/payu/india/Model/PayuHashes;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayUHashes:Lcom/payu/india/Model/PayuHashes;

    .line 101
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "store_one_click_hash"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->storeOneClickHash:I

    .line 102
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "sms_permission"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->smsPermission:Ljava/lang/Boolean;

    .line 104
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "one_click_card_tokens"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->oneClickCardTokens:Ljava/util/HashMap;

    .line 107
    sget v3, Lcom/payu/payuui/R$id;->textview_amount:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->amountTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Amount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v3, Lcom/payu/payuui/R$id;->textview_txnid:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->transactionIdTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Txnid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v5}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v0}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 112
    .local v0, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 113
    const-string v3, "payment_related_details_for_mobile_sdk"

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "default"

    :goto_1
    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayUHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuHashes;->getPaymentRelatedDetailsForMobileSdkHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v3, v0}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    .line 124
    .local v2, "postData":Lcom/payu/india/Model/PostData;
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 129
    sget v3, Lcom/payu/payuui/R$id;->progress_bar:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 130
    new-instance v1, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    invoke-direct {v1, p0}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;-><init>(Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;)V

    .line 131
    .local v1, "paymentRelatedDetailsForMobileSdkTask":Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;
    new-array v3, v7, [Lcom/payu/india/Model/PayuConfig;

    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    .end local v1    # "paymentRelatedDetailsForMobileSdkTask":Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;
    .end local v2    # "postData":Lcom/payu/india/Model/PostData;
    :cond_0
    :goto_2
    return-void

    .line 91
    .end local v0    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    :cond_1
    new-instance v3, Lcom/payu/india/Model/PayuConfig;

    invoke-direct {v3}, Lcom/payu/india/Model/PayuConfig;-><init>()V

    goto/16 :goto_0

    .line 114
    .restart local v0    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    :cond_2
    iget-object v3, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 133
    .restart local v2    # "postData":Lcom/payu/india/Model/PostData;
    :cond_3
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 135
    sget v3, Lcom/payu/payuui/R$id;->progress_bar:I

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/PayUBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$menu;->menu_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 160
    .local v0, "id":I
    sget v1, Lcom/payu/payuui/R$id;->action_settings:I

    if-ne v0, v1, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPaymentRelatedDetailsResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 5
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    const/4 v3, 0x1

    .line 177
    iput-object p1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    .line 179
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-direct {p0, v1, v2}, Lcom/payu/payuui/Activity/PayUBaseActivity;->setupViewPagerAdapter(Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;)V

    .line 182
    :cond_0
    new-instance v0, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v0}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 183
    .local v0, "valueAddedWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v1}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 184
    const-string v1, "vas_for_mobile_sdk"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayUHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v1}, Lcom/payu/india/Model/PayuHashes;->getVasForMobileSdkHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 186
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 187
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 188
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v1, v0}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/payu/india/Tasks/ValueAddedServiceTask;

    invoke-direct {v1, p0}, Lcom/payu/india/Tasks/ValueAddedServiceTask;-><init>(Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;)V

    iput-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->valueAddedServiceTask:Lcom/payu/india/Tasks/ValueAddedServiceTask;

    .line 193
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->valueAddedServiceTask:Lcom/payu/india/Tasks/ValueAddedServiceTask;

    new-array v2, v3, [Lcom/payu/india/Model/PayuConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/payu/india/Tasks/ValueAddedServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onValueAddedServiceApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    .line 170
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->mPayuResponse:Lcom/payu/india/Model/PayuResponse;

    iget-object v1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-direct {p0, v0, v1}, Lcom/payu/payuui/Activity/PayUBaseActivity;->setupViewPagerAdapter(Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;)V

    .line 173
    :cond_0
    return-void
.end method
