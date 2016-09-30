.class Lcom/payu/payuui/Fragment/CreditDebitFragment$6;
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


# static fields
.field private static final space:C = ' '


# instance fields
.field afterTextPosition:I

.field cardLength:I

.field private ccNumber:Ljava/lang/String;

.field currentPosition:I

.field image:I

.field len:I

.field setSpacesIndex:I

.field final synthetic this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x4

    iput v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->setSpacesIndex:I

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->ccNumber:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->len:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    iget v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 367
    iget v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    iget v3, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    div-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 371
    :cond_0
    const/4 v1, 0x0

    .line 373
    .local v1, "pos":I
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 382
    const/4 v1, 0x4

    .line 384
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 393
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    .line 394
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 397
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget v3, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_8

    .line 398
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-virtual {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardValidation()V

    .line 406
    :cond_2
    :goto_2
    return-void

    .line 374
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v6, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 375
    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 377
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_6
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 387
    .local v0, "c":C
    const-string v2, "0123456789"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_7

    .line 388
    const-string v2, " "

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 390
    :cond_7
    add-int/lit8 v1, v1, 0x5

    .line 391
    goto :goto_1

    .line 400
    .end local v0    # "c":C
    :cond_8
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z
    invoke-static {v2, v5}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1702(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z

    .line 401
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->viewpager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentPosition:I
    invoke-static {v3}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1900(Lcom/payu/payuui/Fragment/CreditDebitFragment;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 402
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-virtual {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 292
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x7

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 297
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_8

    .line 298
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$900(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Lcom/payu/india/Payu/PayuUtils;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Payu/PayuUtils;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$802(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 302
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/payu/payuui/Fragment/CreditDebitFragment;->getIssuerImage(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1000(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->image:I

    .line 303
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->image:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMEX"

    if-ne v1, v2, :cond_4

    .line 312
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1200(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 315
    :goto_0
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMAE"

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAES"

    if-ne v1, v2, :cond_5

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 317
    const/16 v1, 0x17

    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    .line 339
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v9, :cond_b

    .line 340
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->valueAddedHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1500(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 341
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->valueAddedHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1500(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/CardStatus;

    invoke-virtual {v1}, Lcom/payu/india/Model/CardStatus;->getStatusCode()I

    move-result v0

    .line 343
    .local v0, "statusCode":I
    if-nez v0, :cond_9

    .line 344
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->valueAddedHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1500(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/CardStatus;

    invoke-virtual {v1}, Lcom/payu/india/Model/CardStatus;->getBankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is temporarily down"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .end local v0    # "statusCode":I
    :cond_3
    :goto_2
    return-void

    .line 314
    :cond_4
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1200(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 318
    :cond_5
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMEX"

    if-ne v1, v2, :cond_6

    .line 319
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 320
    const/16 v1, 0x12

    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    goto/16 :goto_1

    .line 322
    :cond_6
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DINR"

    if-ne v1, v2, :cond_7

    .line 323
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 324
    iput v10, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    goto/16 :goto_1

    .line 327
    :cond_7
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 328
    const/16 v1, 0x14

    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->cardLength:I

    goto/16 :goto_1

    .line 332
    :cond_8
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    const/4 v2, 0x0

    # setter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$802(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1400(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/payu/payuui/R$id;->layout_expiry_cvv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/payu/payuui/R$drawable;->icon_card:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1200(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto/16 :goto_1

    .line 348
    .restart local v0    # "statusCode":I
    :cond_9
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 353
    .end local v0    # "statusCode":I
    :cond_a
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 356
    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v1, v9, :cond_3

    .line 357
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$1600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
