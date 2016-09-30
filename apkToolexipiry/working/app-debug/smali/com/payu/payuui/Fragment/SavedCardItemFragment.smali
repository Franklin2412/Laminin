.class public final Lcom/payu/payuui/Fragment/SavedCardItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "SavedCardItemFragment.java"


# instance fields
.field private cvvEditText:Landroid/widget/EditText;

.field private cvvTextView:Landroid/widget/TextView;

.field private enableOneClickPayment:Landroid/widget/CheckBox;

.field private isCvvValid:Ljava/lang/Boolean;

.field private issuingBankDownText:Landroid/widget/TextView;

.field private issuingBankStatus:Ljava/lang/String;

.field private mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

.field private mStoredCard:Lcom/payu/india/Model/StoredCard;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field oneClickCardTokens:Ljava/util/HashMap;
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

.field private oneClickPayment:Ljava/lang/Boolean;

.field private position:I

.field private storeOneClickHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->position:I

    return v0
.end method

.method static synthetic access$100(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Lcom/payu/india/Model/StoredCard;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Lcom/payu/india/Payu/PayuUtils;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/payu/payuui/Fragment/SavedCardItemFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/SavedCardItemFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;

    return-object p1
.end method

.method static getDrawableUI(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIssuerImage(Ljava/lang/String;)I
    .locals 7
    .param p1, "issuer"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 239
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_1
    return v0

    .line 240
    :sswitch_0
    const-string v2, "VISA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "LASER"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "DISCOVER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "MAESTRO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "MASTERCARD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "AMEX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "DINR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "JCB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "SMAE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "RUPAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    .line 242
    :pswitch_0
    sget v0, Lcom/payu/payuui/R$drawable;->logo_visa:I

    goto :goto_1

    .line 244
    :pswitch_1
    sget v0, Lcom/payu/payuui/R$drawable;->laser:I

    goto :goto_1

    .line 246
    :pswitch_2
    sget v0, Lcom/payu/payuui/R$drawable;->discover:I

    goto :goto_1

    .line 248
    :pswitch_3
    sget v0, Lcom/payu/payuui/R$drawable;->mas_icon:I

    goto :goto_1

    .line 250
    :pswitch_4
    sget v0, Lcom/payu/payuui/R$drawable;->mc_icon:I

    goto :goto_1

    .line 252
    :pswitch_5
    sget v0, Lcom/payu/payuui/R$drawable;->amex:I

    goto :goto_1

    .line 254
    :pswitch_6
    sget v0, Lcom/payu/payuui/R$drawable;->diner:I

    goto :goto_1

    .line 256
    :pswitch_7
    sget v0, Lcom/payu/payuui/R$drawable;->jcb:I

    goto :goto_1

    .line 258
    :pswitch_8
    sget v0, Lcom/payu/payuui/R$drawable;->maestro:I

    goto/16 :goto_1

    .line 260
    :pswitch_9
    sget v0, Lcom/payu/payuui/R$drawable;->rupay:I

    goto/16 :goto_1

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 268
    :pswitch_a
    sget v0, Lcom/payu/payuui/R$drawable;->logo_visa:I

    goto/16 :goto_1

    .line 266
    :sswitch_a
    const-string v2, "VISA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_2

    :sswitch_b
    const-string v3, "LASER"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_2

    :sswitch_c
    const-string v2, "DISCOVER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_2

    :sswitch_d
    const-string v2, "MAESTRO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_2

    :sswitch_e
    const-string v2, "MASTERCARD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_f
    const-string v2, "AMEX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_10
    const-string v2, "DINR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_11
    const-string v2, "JCB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_12
    const-string v2, "SMAE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_13
    const-string v2, "RUPAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x9

    goto :goto_2

    .line 270
    :pswitch_b
    sget v0, Lcom/payu/payuui/R$drawable;->laser:I

    goto/16 :goto_1

    .line 272
    :pswitch_c
    sget v0, Lcom/payu/payuui/R$drawable;->discover:I

    goto/16 :goto_1

    .line 274
    :pswitch_d
    sget v0, Lcom/payu/payuui/R$drawable;->mas_icon:I

    goto/16 :goto_1

    .line 276
    :pswitch_e
    sget v0, Lcom/payu/payuui/R$drawable;->mc_icon:I

    goto/16 :goto_1

    .line 278
    :pswitch_f
    sget v0, Lcom/payu/payuui/R$drawable;->amex:I

    goto/16 :goto_1

    .line 280
    :pswitch_10
    sget v0, Lcom/payu/payuui/R$drawable;->diner:I

    goto/16 :goto_1

    .line 282
    :pswitch_11
    sget v0, Lcom/payu/payuui/R$drawable;->jcb:I

    goto/16 :goto_1

    .line 284
    :pswitch_12
    sget v0, Lcom/payu/payuui/R$drawable;->maestro:I

    goto/16 :goto_1

    .line 286
    :pswitch_13
    sget v0, Lcom/payu/payuui/R$drawable;->rupay:I

    goto/16 :goto_1

    .line 240
    :sswitch_data_0
    .sparse-switch
        -0x5c9a6f8e -> :sswitch_4
        0x11e29 -> :sswitch_7
        0x1eb5df -> :sswitch_5
        0x200509 -> :sswitch_6
        0x26e3fe -> :sswitch_8
        0x283441 -> :sswitch_0
        0x44dc6ab -> :sswitch_1
        0x4ab5f65 -> :sswitch_9
        0x3eee67e9 -> :sswitch_2
        0x5c1e290f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 266
    :sswitch_data_1
    .sparse-switch
        -0x5c9a6f8e -> :sswitch_e
        0x11e29 -> :sswitch_11
        0x1eb5df -> :sswitch_f
        0x200509 -> :sswitch_10
        0x26e3fe -> :sswitch_12
        0x283441 -> :sswitch_a
        0x44dc6ab -> :sswitch_b
        0x4ab5f65 -> :sswitch_13
        0x3eee67e9 -> :sswitch_c
        0x5c1e290f -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private getIssuingBankImage(Ljava/lang/String;)I
    .locals 5
    .param p1, "issuingBank"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "resID":I
    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    .end local v0    # "resID":I
    :cond_0
    return v0
.end method


# virtual methods
.method public cvvValidation()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 303
    const-string v0, ""

    .line 304
    .local v0, "cvv":Ljava/lang/String;
    new-instance v1, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v1}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    .line 305
    .local v1, "myPayuUtils":Lcom/payu/india/Payu/PayuUtils;
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getCardBin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/payu/india/Payu/PayuUtils;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 309
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;

    .line 317
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;

    return-object v2

    .line 313
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->isCvvValid:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableOneClickPaymentChecked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->enableOneClickPayment:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "store_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/StoredCard;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    .line 61
    const-string v1, "Issuing Bank Status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankStatus:Ljava/lang/String;

    .line 62
    const-string v1, "one_click_payment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->oneClickPayment:Ljava/lang/Boolean;

    .line 63
    const-string v1, "Position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->position:I

    .line 64
    const-string v1, "store_one_click_hash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->storeOneClickHash:I

    .line 65
    const-string v1, "one_click_card_tokens"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->oneClickCardTokens:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 72
    sget v1, Lcom/payu/payuui/R$layout;->layout_saved_card:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    check-cast p2, Landroid/support/v4/view/ViewPager;

    .end local p2    # "container":Landroid/view/ViewGroup;
    iput-object p2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 76
    sget v1, Lcom/payu/payuui/R$id;->text_view_saved_card_bank_down_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankDownText:Landroid/widget/TextView;

    .line 78
    new-instance v1, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v1}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    .line 80
    sget v1, Lcom/payu/payuui/R$id;->edit_text_cvv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    .line 81
    sget v1, Lcom/payu/payuui/R$id;->check_box_save_card_enable_one_click_payment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->enableOneClickPayment:Landroid/widget/CheckBox;

    .line 82
    sget v1, Lcom/payu/payuui/R$id;->cvv_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvTextView:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getCardBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMEX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    :cond_0
    iget v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->storeOneClickHash:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getOneTapCard()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 92
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->enableOneClickPayment:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvTextView:Landroid/widget/TextView;

    const-string v2, "Click Pay Now to Pay through this card"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getMaskedCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getCardBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMAE"

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;

    invoke-direct {v2, p0}, Lcom/payu/payuui/Fragment/SavedCardItemFragment$1;-><init>(Lcom/payu/payuui/Fragment/SavedCardItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    sget v1, Lcom/payu/payuui/R$id;->text_view_masked_card_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getMaskedCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget v1, Lcom/payu/payuui/R$id;->text_view_card_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget v1, Lcom/payu/payuui/R$id;->text_view_card_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getCardMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    sget v1, Lcom/payu/payuui/R$id;->card_type_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getCardBrand()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getIssuerImage(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getIssuingBank()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getIssuingBankImage(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    sget v1, Lcom/payu/payuui/R$id;->bank_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getIssuingBank()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getIssuingBankImage(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankStatus:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 150
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankDownText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankDownText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_1
    return-object v0

    .line 95
    :cond_4
    iget v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->storeOneClickHash:I

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getEnableOneClickPayment()I

    move-result v1

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->mStoredCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v3}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/india/Payu/PayuUtils;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 97
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->enableOneClickPayment:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->cvvTextView:Landroid/widget/TextView;

    const-string v2, "Click Pay Now to Pay through this card"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    :cond_5
    iget v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->storeOneClickHash:I

    if-eq v1, v6, :cond_6

    iget v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->storeOneClickHash:I

    if-ne v1, v8, :cond_7

    .line 101
    :cond_6
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->enableOneClickPayment:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 103
    :cond_7
    iget v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->storeOneClickHash:I

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->enableOneClickPayment:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 153
    :cond_8
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardItemFragment;->issuingBankDownText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
