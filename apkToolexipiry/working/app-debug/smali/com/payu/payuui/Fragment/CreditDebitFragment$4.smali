.class Lcom/payu/payuui/Fragment/CreditDebitFragment$4;
.super Ljava/lang/Object;
.source "CreditDebitFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 204
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$4;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    .line 218
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$4;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z
    invoke-static {v0, v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$302(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$4;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    const/4 v1, 0x0

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z
    invoke-static {v0, v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$302(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 207
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 208
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 213
    return-void
.end method
