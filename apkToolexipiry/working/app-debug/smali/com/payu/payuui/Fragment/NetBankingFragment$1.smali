.class Lcom/payu/payuui/Fragment/NetBankingFragment$1;
.super Ljava/lang/Object;
.source "NetBankingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Fragment/NetBankingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Fragment/NetBankingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Fragment/NetBankingFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x8

    .line 125
    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$100(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v1}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->bankcode:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$002(Lcom/payu/payuui/Fragment/NetBankingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->valueAddedHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$200(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->valueAddedHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$200(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$100(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v1}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    invoke-virtual {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->valueAddedHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$200(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->bankcode:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$000(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    .local v0, "statusCode":I
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->bankDownText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$300(Lcom/payu/payuui/Fragment/NetBankingFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->bankDownText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$300(Lcom/payu/payuui/Fragment/NetBankingFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->netBankingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$100(Lcom/payu/payuui/Fragment/NetBankingFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v1}, Lcom/payu/india/Model/PaymentDetails;->getBankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is temporarily down"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .end local v0    # "statusCode":I
    :goto_0
    return-void

    .line 134
    .restart local v0    # "statusCode":I
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->bankDownText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$300(Lcom/payu/payuui/Fragment/NetBankingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 138
    .end local v0    # "statusCode":I
    :cond_1
    iget-object v1, p0, Lcom/payu/payuui/Fragment/NetBankingFragment$1;->this$0:Lcom/payu/payuui/Fragment/NetBankingFragment;

    # getter for: Lcom/payu/payuui/Fragment/NetBankingFragment;->bankDownText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/NetBankingFragment;->access$300(Lcom/payu/payuui/Fragment/NetBankingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
