.class public Lcom/payu/payuui/Fragment/NetBankingFragment;
.super Landroid/support/v4/app/Fragment;
.source "NetBankingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private axisImageButton:Landroid/widget/ImageButton;

.field private bankDownText:Landroid/widget/TextView;

.field private bankcode:Ljava/lang/String;

.field private citiImageButton:Landroid/widget/ImageButton;

.field private hdfcImageButton:Landroid/widget/ImageButton;

.field private iciciImageButton:Landroid/widget/ImageButton;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/Bundle;

.field private mPaymentParams:Lcom/payu/india/Model/PaymentParams;

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

.field private netBanksCodesArray:[Ljava/lang/String;

.field private netBanksNamesArray:[Ljava/lang/String;

.field private payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private payuHashes:Lcom/payu/india/Model/PayuHashes;

.field private postData:Lcom/payu/india/Model/PostData;

.field private sbiImageButton:Landroid/widget/ImageButton;

.field private spinnerNetbanking:Landroid/widget/Spinner;

.field private valueAddedHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/NetBankingFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->bankcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/payu/payuui/Fragment/NetBankingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/NetBankingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->bankcode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/NetBankingFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/NetBankingFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->valueAddedHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/payuui/Fragment/NetBankingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/NetBankingFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->bankDownText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 161
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 171
    .local v1, "id":I
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v5, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v5}, Lcom/payu/india/Model/PayuHashes;->getPaymentHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payu/india/Model/PaymentParams;->setHash(Ljava/lang/String;)V

    .line 176
    sget v4, Lcom/payu/payuui/R$id;->image_button_axis:I

    if-ne v1, v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v5, "AXIB"

    invoke-virtual {v4, v5}, Lcom/payu/india/Model/PaymentParams;->setBankCode(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    :try_start_0
    new-instance v4, Lcom/payu/india/PostParams/PaymentPostParams;

    iget-object v5, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v6, "NB"

    invoke-direct {v4, v5, v6}, Lcom/payu/india/PostParams/PaymentPostParams;-><init>(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/payu/india/PostParams/PaymentPostParams;->getPaymentPostParams()Lcom/payu/india/Model/PostData;

    move-result-object v4

    iput-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->postData:Lcom/payu/india/Model/PostData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_1
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v4}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v4

    if-nez v4, :cond_5

    .line 205
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v5, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v5}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 206
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/payu/payuui/Activity/PaymentsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "payuConfig"

    iget-object v5, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4}, Lcom/payu/payuui/Fragment/NetBankingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 179
    :cond_1
    sget v4, Lcom/payu/payuui/R$id;->image_button_hdfc:I

    if-ne v1, v4, :cond_2

    .line 180
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v5, "HDFB"

    invoke-virtual {v4, v5}, Lcom/payu/india/Model/PaymentParams;->setBankCode(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    sget v4, Lcom/payu/payuui/R$id;->image_button_citi:I

    if-ne v1, v4, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->pager:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    .line 186
    .local v3, "mPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 189
    .end local v3    # "mPager":Landroid/support/v4/view/ViewPager;
    :cond_3
    sget v4, Lcom/payu/payuui/R$id;->image_button_sbi:I

    if-ne v1, v4, :cond_4

    .line 190
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v5, "SBIB"

    invoke-virtual {v4, v5}, Lcom/payu/india/Model/PaymentParams;->setBankCode(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    sget v4, Lcom/payu/payuui/R$id;->image_button_icici:I

    if-ne v1, v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    const-string v5, "ICIB"

    invoke-virtual {v4, v5}, Lcom/payu/india/Model/PaymentParams;->setBankCode(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v5}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "netbanking"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Value Added Services"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->valueAddedHashMap:Ljava/util/HashMap;

    .line 220
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    sget v2, Lcom/payu/payuui/R$layout;->fragment_net_banking:I

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    .line 78
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->text_view_bank_down_error:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->bankDownText:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->image_button_axis:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->axisImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->image_button_hdfc:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->hdfcImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->image_button_citi:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->citiImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->image_button_sbi:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->sbiImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->image_button_icici:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->iciciImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v2, v2, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mBundle:Landroid/os/Bundle;

    .line 88
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mBundle:Landroid/os/Bundle;

    const-string v5, "payment_params"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PaymentParams;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 89
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mBundle:Landroid/os/Bundle;

    const-string v5, "payu_hashes"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PayuHashes;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuHashes:Lcom/payu/india/Model/PayuHashes;

    .line 90
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mBundle:Landroid/os/Bundle;

    const-string v5, "payuConfig"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PayuConfig;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 91
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    :goto_0
    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 92
    new-instance v2, Lcom/payu/india/Model/PostData;

    invoke-direct {v2}, Lcom/payu/india/Model/PostData;-><init>()V

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->postData:Lcom/payu/india/Model/PostData;

    .line 95
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "spinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentDetails;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 98
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "i":I
    .end local v1    # "spinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Lcom/payu/india/Model/PayuConfig;

    invoke-direct {v2}, Lcom/payu/india/Model/PayuConfig;-><init>()V

    goto :goto_0

    .line 100
    .restart local v0    # "i":I
    .restart local v1    # "spinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_0
    const-string v6, "AXIB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_2

    :sswitch_1
    const-string v6, "HDFB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_2

    :sswitch_2
    const-string v6, "SBIB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string v6, "ICIB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    .line 102
    :pswitch_0
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->layout_axis:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 105
    :pswitch_1
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->layout_hdfc:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 108
    :pswitch_2
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->layout_sbi:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 111
    :pswitch_3
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v5, Lcom/payu/payuui/R$id;->layout_icici:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    sget v3, Lcom/payu/payuui/R$id;->spinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->spinnerNetbanking:Landroid/widget/Spinner;

    .line 119
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 121
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->spinnerNetbanking:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 122
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->spinnerNetbanking:Landroid/widget/Spinner;

    new-instance v3, Lcom/payu/payuui/Fragment/NetBankingFragment$1;

    invoke-direct {v3, p0}, Lcom/payu/payuui/Fragment/NetBankingFragment$1;-><init>(Lcom/payu/payuui/Fragment/NetBankingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 151
    .end local v0    # "i":I
    .end local v1    # "spinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment;->view:Landroid/view/View;

    return-object v2

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Could not get netbanking list Data from the previous activity"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x1edf90 -> :sswitch_0
        0x21c2b8 -> :sswitch_1
        0x2233b3 -> :sswitch_3
        0x26bba8 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
