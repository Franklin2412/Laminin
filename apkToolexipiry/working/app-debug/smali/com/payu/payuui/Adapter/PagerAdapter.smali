.class public Lcom/payu/payuui/Adapter/PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PagerAdapter.java"


# instance fields
.field private mPageReference:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private payuResponse:Lcom/payu/india/Model/PayuResponse;

.field private storeOneClickHash:I

.field private valueAddedResponse:Lcom/payu/india/Model/PayuResponse;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;ILjava/util/HashMap;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;
    .param p4, "valueAddedResponse"    # Lcom/payu/india/Model/PayuResponse;
    .param p5, "storeOneClickHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/payu/india/Model/PayuResponse;",
            "Lcom/payu/india/Model/PayuResponse;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "oneClickCardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mPageReference:Ljava/util/HashMap;

    .line 35
    iput-object p2, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mTitles:Ljava/util/ArrayList;

    .line 36
    iput-object p3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->payuResponse:Lcom/payu/india/Model/PayuResponse;

    .line 37
    iput-object p4, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    .line 38
    iput p5, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->storeOneClickHash:I

    .line 39
    iput-object p6, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->oneClickCardTokens:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mTitles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mPageReference:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 100
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 50
    :sswitch_0
    const-string v4, "Saved Cards"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "Credit/Debit Cards"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "Net Banking"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "PayU Money"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 52
    :pswitch_0
    new-instance v1, Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/payu/payuui/Fragment/SavedCardsFragment;-><init>()V

    .line 53
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    const-string v2, "store_card"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    const-string v2, "Value Added Services"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getIssuingBankStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    const-string v2, "Position"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v2, "store_one_click_hash"

    iget v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->storeOneClickHash:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v2, "one_click_card_tokens"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->oneClickCardTokens:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    iget-object v2, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mPageReference:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 60
    goto :goto_1

    .line 63
    :pswitch_1
    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;-><init>()V

    .line 64
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    const-string v2, "creditcard"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getCreditCard()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    const-string v2, "debitcard"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getDebitCard()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    const-string v2, "Value Added Services"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getIssuingBankStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    const-string v2, "Position"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v2, "store_one_click_hash"

    iget v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->storeOneClickHash:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    iget-object v2, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mPageReference:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 71
    goto/16 :goto_1

    .line 74
    :pswitch_2
    new-instance v1, Lcom/payu/payuui/Fragment/NetBankingFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;-><init>()V

    .line 75
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    const-string v2, "netbanking"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getNetBanks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 76
    const-string v2, "Value Added Services"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->valueAddedResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getNetBankingDownStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iget-object v2, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mPageReference:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 79
    goto/16 :goto_1

    .line 82
    :pswitch_3
    new-instance v1, Lcom/payu/payuui/Fragment/PayuMoneyFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/payu/payuui/Fragment/PayuMoneyFragment;-><init>()V

    .line 83
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    const-string v2, "PAYU_MONEY"

    iget-object v3, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuResponse;->getPaisaWallet()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    iget-object v2, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mPageReference:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 85
    goto/16 :goto_1

    .line 50
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

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/payu/payuui/Adapter/PagerAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
