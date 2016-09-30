.class public Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SavedCardItemFragmentAdapter.java"


# static fields
.field private static mPageReferencce:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/payu/payuui/Fragment/SavedCardItemFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bankStatus:Ljava/lang/String;

.field mBundle:Landroid/os/Bundle;

.field mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mOneClickCardTokens:Ljava/util/HashMap;
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

.field mSavedCardItemFragment:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

.field mStoreOneClickHash:I

.field mStoredCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation
.end field

.field mValueAddedHashMap:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/HashMap;ILjava/util/HashMap;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p4, "storeOneClickHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/CardStatus;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "storedCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    .local p3, "valueAddedHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/CardStatus;>;"
    .local p5, "oneClickCardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->bankStatus:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    .line 46
    iput-object p2, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    .line 47
    iput-object p3, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mValueAddedHashMap:Ljava/util/HashMap;

    .line 48
    iput p4, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoreOneClickHash:I

    .line 49
    iput-object p5, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mOneClickCardTokens:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(I)Lcom/payu/payuui/Fragment/SavedCardItemFragment;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    .line 56
    iget-object v1, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    const-string v2, "store_card"

    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mValueAddedHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mValueAddedHashMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardBin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mValueAddedHashMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardBin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/CardStatus;

    invoke-virtual {v0}, Lcom/payu/india/Model/CardStatus;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoredCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getIssuingBank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is temporarily down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->bankStatus:Ljava/lang/String;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    const-string v1, "Issuing Bank Status"

    iget-object v2, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->bankStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    const-string v1, "store_one_click_hash"

    iget v2, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mStoreOneClickHash:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    const-string v1, "Position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    const-string v1, "one_click_card_tokens"

    iget-object v2, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mOneClickCardTokens:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    new-instance v0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-direct {v0}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mSavedCardItemFragment:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .line 67
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mSavedCardItemFragment:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    iget-object v1, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    sget-object v0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    sget-object v0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mSavedCardItemFragment:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mSavedCardItemFragment:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    return-object v0

    .line 60
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->bankStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 99
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 82
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    sget-object v1, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    sget-object v2, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->mPageReferencce:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v0

    check-cast v1, Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object v0
.end method
