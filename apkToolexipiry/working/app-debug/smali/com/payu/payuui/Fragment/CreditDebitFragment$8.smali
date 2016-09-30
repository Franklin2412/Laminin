.class Lcom/payu/payuui/Fragment/CreditDebitFragment$8;
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
    .line 423
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 448
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 426
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 427
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    const/16 v4, 0xb

    .line 431
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvv:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$2002(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$900(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Lcom/payu/india/Payu/PayuUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvv:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$2000(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/india/Payu/PayuUtils;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    .line 434
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvvImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$2100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    const/4 v1, 0x1

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z
    invoke-static {v0, v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$2202(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z

    .line 436
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-virtual {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->uiValidation()V

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    .line 439
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvvImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$2100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    const/4 v1, 0x0

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z
    invoke-static {v0, v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$2202(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z

    .line 441
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-virtual {v0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->uiValidation()V

    goto :goto_0
.end method
