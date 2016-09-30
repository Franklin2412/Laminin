.class public Lcom/payu/payuui/Fragment/SavedCardsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SavedCardsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payu/india/Interfaces/DeleteCardApiListener;


# instance fields
.field private deleteButton:Landroid/widget/ImageButton;

.field private indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

.field private mAdapter:Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

.field private mBundle:Landroid/os/Bundle;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPaymentParams:Lcom/payu/india/Model/PaymentParams;

.field private mStoreCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private oneClickCardTokens:Ljava/util/HashMap;
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

.field private payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private payuHashes:Lcom/payu/india/Model/PayuHashes;

.field private payuUtils:Lcom/payu/india/Payu/PayuUtils;

.field private storeOneClickHash:I

.field private titleText:Landroid/widget/TextView;

.field private valueAddedHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/CardStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Fragment/SavedCardsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I

    return v0
.end method

.method static synthetic access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Lcom/payu/india/Payu/PayuUtils;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/payu/payuui/Fragment/SavedCardsFragment;Lcom/payu/india/Model/StoredCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;
    .param p1, "x1"    # Lcom/payu/india/Model/StoredCard;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteCard(Lcom/payu/india/Model/StoredCard;)V

    return-void
.end method

.method private deleteCard(Lcom/payu/india/Model/StoredCard;)V
    .locals 7
    .param p1, "storedCard"    # Lcom/payu/india/Model/StoredCard;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 232
    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 233
    new-instance v1, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 234
    .local v1, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 235
    const-string v3, "delete_user_card"

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuHashes;->getDeleteCardHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "postData":Lcom/payu/india/Model/PostData;
    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v3, v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v4}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PayuConfig;->setEnvironment(I)V

    .line 249
    new-instance v0, Lcom/payu/india/Tasks/DeleteCardTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/DeleteCardTask;-><init>(Lcom/payu/india/Interfaces/DeleteCardApiListener;)V

    .line 250
    .local v0, "deleteCardTask":Lcom/payu/india/Tasks/DeleteCardTask;
    new-array v3, v6, [Lcom/payu/india/Model/PayuConfig;

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/payu/india/Tasks/DeleteCardTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    .end local v0    # "deleteCardTask":Lcom/payu/india/Tasks/DeleteCardTask;
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 208
    .local v0, "id":I
    sget v2, Lcom/payu/payuui/R$id;->button_delete:I

    if-ne v0, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 211
    .local v1, "position":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Delete"

    .line 212
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Are you sure you want to delete this card?"

    .line 213
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;-><init>(Lcom/payu/payuui/Fragment/SavedCardsFragment;I)V

    .line 214
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/payu/payuui/Fragment/SavedCardsFragment$2;

    invoke-direct {v4, p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment$2;-><init>(Lcom/payu/payuui/Fragment/SavedCardsFragment;)V

    .line 220
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    .line 225
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    .end local v1    # "position":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "fragmentBundle":Landroid/os/Bundle;
    const-string v1, "store_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    .line 78
    const-string v1, "Value Added Services"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->valueAddedHashMap:Ljava/util/HashMap;

    .line 79
    const-string v1, "store_one_click_hash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I

    .line 80
    const-string v1, "one_click_card_tokens"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->oneClickCardTokens:Ljava/util/HashMap;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 93
    sget v0, Lcom/payu/payuui/R$layout;->fragment_saved_cards:I

    invoke-virtual {p1, v0, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v0, v0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mBundle:Landroid/os/Bundle;

    .line 95
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "payu_hashes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuHashes;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuHashes:Lcom/payu/india/Model/PayuHashes;

    .line 96
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "payment_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PaymentParams;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 97
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "payuConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuConfig;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 99
    new-instance v0, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v0}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    .line 103
    new-instance v0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->valueAddedHashMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I

    iget-object v5, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->oneClickCardTokens:Ljava/util/HashMap;

    invoke-direct/range {v0 .. v5}, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/HashMap;ILjava/util/HashMap;)V

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mAdapter:Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

    .line 104
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->pager_saved_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 105
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mAdapter:Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 107
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->button_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->titleText:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/payu/payuui/Widget/ZoomOutPageTransformer;

    invoke-direct {v1}, Lcom/payu/payuui/Widget/ZoomOutPageTransformer;-><init>()V

    invoke-virtual {v0, v9, v1}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 117
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payu/payuui/Widget/CirclePageIndicator;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    .line 118
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 122
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 123
    .local v8, "density":F
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setRadius(F)V

    .line 125
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    const v1, -0x39393a

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setPageColor(I)V

    .line 126
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    const v1, -0xc9cacb

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setFillColor(I)V

    .line 128
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;-><init>(Lcom/payu/payuui/Fragment/SavedCardsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v11}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    invoke-virtual {v0, v11}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->titleText:Landroid/widget/TextView;

    const-string v1, "You have no Stored Cards"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 181
    .local v7, "activityViewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    check-cast v6, Lcom/payu/payuui/Adapter/PagerAdapter;

    .line 183
    .local v6, "activityAdapter":Lcom/payu/payuui/Adapter/PagerAdapter;
    if-eqz v6, :cond_3

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/payu/payuui/Adapter/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saved Cards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    :cond_1
    iget v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v0

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getOneTapCard()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    :cond_2
    iget v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/payu/india/Payu/PayuUtils;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCardApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 5
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 259
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isResponseAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_cvv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 268
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->check_box_save_card_enable_one_click_payment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 269
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 271
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->indicator:Lcom/payu/payuui/Widget/CirclePageIndicator;

    invoke-virtual {v0, v3}, Lcom/payu/payuui/Widget/CirclePageIndicator;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->titleText:Landroid/widget/TextView;

    const-string v1, "You have no Stored Cards"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 284
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 286
    return-void

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Error While Deleting Card"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
