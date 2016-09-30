.class Lcom/payu/payuui/Fragment/CreditDebitFragment$5;
.super Ljava/lang/Object;
.source "CreditDebitFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Fragment/CreditDebitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    iget v0, v0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->storeOneClickHash:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$500(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$700(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$700(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
