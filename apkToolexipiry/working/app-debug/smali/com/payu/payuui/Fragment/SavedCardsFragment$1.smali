.class Lcom/payu/payuui/Fragment/SavedCardsFragment$1;
.super Ljava/lang/Object;
.source "SavedCardsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Fragment/SavedCardsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Fragment/SavedCardsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    .line 137
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->pager:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 138
    .local v1, "activityViewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/payu/payuui/Adapter/PagerAdapter;

    .line 139
    .local v0, "activityAdapter":Lcom/payu/payuui/Adapter/PagerAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/payu/payuui/Adapter/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Saved Cards"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$000(Lcom/payu/payuui/Fragment/SavedCardsFragment;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v4}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$200(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Lcom/payu/india/Payu/PayuUtils;

    move-result-object v5

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v4}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/payu/india/Payu/PayuUtils;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->storeOneClickHash:I
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$000(Lcom/payu/payuui/Fragment/SavedCardsFragment;)I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v4}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v4}, Lcom/payu/india/Model/StoredCard;->getOneTapCard()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 146
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v4}, Lcom/payu/india/Model/StoredCard;->getCardType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMAE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$300(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;

    .line 151
    .local v2, "mSaveAdapter":Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$300(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/payu/payuui/Adapter/SavedCardItemFragmentAdapter;->getFragment(I)Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    move-result-object v3

    .line 152
    .local v3, "mSaveFragment":Lcom/payu/payuui/Fragment/SavedCardItemFragment;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvValidation()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 153
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 155
    :cond_4
    iget-object v4, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    invoke-virtual {v4}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0
.end method
