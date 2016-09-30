.class Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;
.super Ljava/lang/Object;
.source "SavedCardItemFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Fragment/SavedCardItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "cvv":Ljava/lang/String;
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-virtual {v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payu/payuui/R$id;->pager:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 124
    .local v0, "activityViewPager":Landroid/support/v4/view/ViewPager;
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->position:I
    invoke-static {v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$000(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$300(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Lcom/payu/india/Payu/PayuUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;
    invoke-static {v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$200(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Lcom/payu/india/Model/StoredCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/StoredCard;->getCardBin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/payu/india/Payu/PayuUtils;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$400(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-virtual {v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$502(Lcom/payu/payuui/Fragment/SavedCardItemFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 135
    :cond_2
    :goto_0
    return-void

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-virtual {v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;->this$0:Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->access$502(Lcom/payu/payuui/Fragment/SavedCardItemFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method
