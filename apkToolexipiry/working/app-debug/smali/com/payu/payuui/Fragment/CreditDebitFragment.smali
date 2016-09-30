.class public Lcom/payu/payuui/Fragment/CreditDebitFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreditDebitFragment.java"

# interfaces
.implements Lcom/payu/india/Interfaces/GetOfferStatusApiListener;


# instance fields
.field private activityBundle:Landroid/os/Bundle;

.field private amexLength:I

.field private amountText:Landroid/widget/TextView;

.field private cardCvvEditText:Landroid/widget/EditText;

.field private cardExpiryMonthEditText:Landroid/widget/EditText;

.field private cardExpiryYearEditText:Landroid/widget/EditText;

.field private cardImage:Landroid/widget/ImageView;

.field private cardName:Ljava/lang/String;

.field private cardNameEditText:Landroid/widget/EditText;

.field private cardNumber:Ljava/lang/String;

.field private cardNumberCheck:Ljava/lang/Boolean;

.field private cardNumberEditText:Landroid/widget/EditText;

.field cardNumberPosition:I

.field private cvv:Ljava/lang/String;

.field private cvvImage:Landroid/widget/ImageView;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;

.field private expiryMonth:Ljava/lang/String;

.field private expiryYear:Ljava/lang/String;

.field flag:I

.field private fragmentBundle:Landroid/os/Bundle;

.field private fragmentPosition:I

.field globalSpacesAdded:I

.field private isCardNumberValid:Z

.field private isCvvValid:Z

.field private isExpiryMonthValid:Z

.field private isExpiryYearValid:Z

.field private issuer:Ljava/lang/String;

.field private issuingBankDown:Landroid/widget/TextView;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPaymentParams:Lcom/payu/india/Model/PaymentParams;

.field private mPayuHashes:Lcom/payu/india/Model/PayuHashes;

.field private merchantWebService:Lcom/payu/india/Model/MerchantWebService;

.field private myTestImageButton:Landroid/widget/ImageButton;

.field private nameOnCard:Ljava/lang/String;

.field private nameOnCardEditText:Landroid/widget/EditText;

.field private payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private payuUtils:Lcom/payu/india/Payu/PayuUtils;

.field private postData:Lcom/payu/india/Model/PostData;

.field private saveCardCheckBox:Landroid/widget/CheckBox;

.field storeOneClickHash:I

.field private valueAddedHashMap:Ljava/util/HashMap;
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

.field private view:Landroid/view/View;

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z

    .line 62
    iput-boolean v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryMonthValid:Z

    .line 63
    iput-boolean v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z

    .line 64
    iput-boolean v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z

    .line 70
    const-string v0, "20"

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->expiryYear:Ljava/lang/String;

    .line 77
    const/4 v0, 0x4

    iput v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->amexLength:I

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberCheck:Ljava/lang/Boolean;

    .line 102
    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberPosition:I

    .line 103
    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->globalSpacesAdded:I

    .line 104
    iput v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->flag:I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryYearEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getIssuerImage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->valueAddedHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/payu/payuui/Fragment/CreditDebitFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryMonthEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvvImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z

    return p1
.end method

.method static synthetic access$302(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z

    return p1
.end method

.method static synthetic access$402(Lcom/payu/payuui/Fragment/CreditDebitFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryMonthValid:Z

    return p1
.end method

.method static synthetic access$500(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Lcom/payu/india/Model/PaymentParams;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    return-object v0
.end method

.method static synthetic access$600(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/payu/payuui/Fragment/CreditDebitFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Lcom/payu/india/Payu/PayuUtils;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Fragment/CreditDebitFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    return-object v0
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

    .line 462
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 512
    :goto_1
    return v0

    .line 463
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
    const-string v2, "MAES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "MAST"

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

    .line 465
    :pswitch_0
    sget v0, Lcom/payu/payuui/R$drawable;->logo_visa:I

    goto :goto_1

    .line 467
    :pswitch_1
    sget v0, Lcom/payu/payuui/R$drawable;->laser:I

    goto :goto_1

    .line 469
    :pswitch_2
    sget v0, Lcom/payu/payuui/R$drawable;->discover:I

    goto :goto_1

    .line 471
    :pswitch_3
    sget v0, Lcom/payu/payuui/R$drawable;->mas_icon:I

    goto :goto_1

    .line 473
    :pswitch_4
    sget v0, Lcom/payu/payuui/R$drawable;->mc_icon:I

    goto :goto_1

    .line 475
    :pswitch_5
    sget v0, Lcom/payu/payuui/R$drawable;->amex:I

    goto :goto_1

    .line 477
    :pswitch_6
    sget v0, Lcom/payu/payuui/R$drawable;->diner:I

    goto :goto_1

    .line 479
    :pswitch_7
    sget v0, Lcom/payu/payuui/R$drawable;->jcb:I

    goto :goto_1

    .line 481
    :pswitch_8
    sget v0, Lcom/payu/payuui/R$drawable;->maestro:I

    goto/16 :goto_1

    .line 483
    :pswitch_9
    sget v0, Lcom/payu/payuui/R$drawable;->rupay:I

    goto/16 :goto_1

    .line 489
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 491
    :pswitch_a
    sget v0, Lcom/payu/payuui/R$drawable;->logo_visa:I

    goto/16 :goto_1

    .line 489
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
    const-string v2, "MAES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_2

    :sswitch_e
    const-string v2, "MAST"

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

    .line 493
    :pswitch_b
    sget v0, Lcom/payu/payuui/R$drawable;->laser:I

    goto/16 :goto_1

    .line 495
    :pswitch_c
    sget v0, Lcom/payu/payuui/R$drawable;->discover:I

    goto/16 :goto_1

    .line 497
    :pswitch_d
    sget v0, Lcom/payu/payuui/R$drawable;->mas_icon:I

    goto/16 :goto_1

    .line 499
    :pswitch_e
    sget v0, Lcom/payu/payuui/R$drawable;->mc_icon:I

    goto/16 :goto_1

    .line 501
    :pswitch_f
    sget v0, Lcom/payu/payuui/R$drawable;->amex:I

    goto/16 :goto_1

    .line 503
    :pswitch_10
    sget v0, Lcom/payu/payuui/R$drawable;->diner:I

    goto/16 :goto_1

    .line 505
    :pswitch_11
    sget v0, Lcom/payu/payuui/R$drawable;->jcb:I

    goto/16 :goto_1

    .line 507
    :pswitch_12
    sget v0, Lcom/payu/payuui/R$drawable;->maestro:I

    goto/16 :goto_1

    .line 509
    :pswitch_13
    sget v0, Lcom/payu/payuui/R$drawable;->rupay:I

    goto/16 :goto_1

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x11e29 -> :sswitch_7
        0x1eb5df -> :sswitch_5
        0x200509 -> :sswitch_6
        0x23fd42 -> :sswitch_3
        0x23fef5 -> :sswitch_4
        0x26e3fe -> :sswitch_8
        0x283441 -> :sswitch_0
        0x44dc6ab -> :sswitch_1
        0x4ab5f65 -> :sswitch_9
        0x3eee67e9 -> :sswitch_2
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

    .line 489
    :sswitch_data_1
    .sparse-switch
        0x11e29 -> :sswitch_11
        0x1eb5df -> :sswitch_f
        0x200509 -> :sswitch_10
        0x23fd42 -> :sswitch_d
        0x23fef5 -> :sswitch_e
        0x26e3fe -> :sswitch_12
        0x283441 -> :sswitch_a
        0x44dc6ab -> :sswitch_b
        0x4ab5f65 -> :sswitch_13
        0x3eee67e9 -> :sswitch_c
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

.method private getOfferStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 544
    new-instance v1, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    iput-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    .line 545
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    const-string v2, "check_offer_status"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getCheckOfferStatusHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar4(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar5(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar6(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    const-string v2, "abc"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar7(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    const-string v2, "abc@gmail.com"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar8(Ljava/lang/String;)V

    .line 557
    new-instance v1, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1, v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->postData:Lcom/payu/india/Model/PostData;

    .line 559
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 562
    new-instance v0, Lcom/payu/india/Tasks/GetOfferStatusTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/GetOfferStatusTask;-><init>(Lcom/payu/india/Interfaces/GetOfferStatusApiListener;)V

    .line 563
    .local v0, "getOfferStatusTask":Lcom/payu/india/Tasks/GetOfferStatusTask;
    new-array v1, v5, [Lcom/payu/india/Model/PayuConfig;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/GetOfferStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 570
    .end local v0    # "getOfferStatusTask":Lcom/payu/india/Tasks/GetOfferStatusTask;
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public cardValidation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 524
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Payu/PayuUtils;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardImage:Landroid/widget/ImageView;

    sget v1, Lcom/payu/payuui/R$drawable;->error_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    iput-boolean v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z

    .line 527
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->amountText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->uiValidation()V

    .line 540
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Payu/PayuUtils;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z

    .line 532
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getOfferStatus()V

    goto :goto_0

    .line 536
    :cond_2
    iput-boolean v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z

    goto :goto_0
.end method

.method public checkData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 611
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryYearEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryMonthEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iput-boolean v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z

    .line 613
    iput-boolean v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryMonthValid:Z

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/india/Payu/PayuUtils;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iput-boolean v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardValidation()V

    .line 619
    return-void
.end method

.method public onClickFunction()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentBundle:Landroid/os/Bundle;

    .line 115
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentBundle:Landroid/os/Bundle;

    const-string v1, "Value Added Services"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->valueAddedHashMap:Ljava/util/HashMap;

    .line 116
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentBundle:Landroid/os/Bundle;

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentPosition:I

    .line 117
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentBundle:Landroid/os/Bundle;

    const-string v1, "store_one_click_hash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->storeOneClickHash:I

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 127
    sget v0, Lcom/payu/payuui/R$layout;->fragment_credit_debit:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 132
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_name_on_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->nameOnCardEditText:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_card_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    .line 134
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_card_cvv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_expiry_month:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryMonthEditText:Landroid/widget/EditText;

    .line 136
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_expiry_year:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryYearEditText:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->edit_text_card_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNameEditText:Landroid/widget/EditText;

    .line 138
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->check_box_save_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->saveCardCheckBox:Landroid/widget/CheckBox;

    .line 139
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->check_box_enable_oneclick_payment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;

    .line 140
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->image_card_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardImage:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->image_cvv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cvvImage:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->layout_expiry_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    sget v1, Lcom/payu/payuui/R$id;->text_view_issuing_bank_down_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuingBankDown:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->textview_amount:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->amountText:Landroid/widget/TextView;

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryMonthEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$1;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$1;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryYearEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$2;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$2;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Lcom/payu/payuui/Fragment/CreditDebitFragment$3;

    invoke-direct {v0, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$3;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->enableOneClickPaymentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->saveCardCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$5;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/payu/payuui/Activity/PayUBaseActivity;

    iget-object v0, v0, Lcom/payu/payuui/Activity/PayUBaseActivity;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->activityBundle:Landroid/os/Bundle;

    .line 255
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->activityBundle:Landroid/os/Bundle;

    const-string v1, "payment_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PaymentParams;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 256
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->activityBundle:Landroid/os/Bundle;

    const-string v1, "payu_hashes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuHashes;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    .line 262
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->activityBundle:Landroid/os/Bundle;

    const-string v1, "payuConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuConfig;

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 263
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    :goto_1
    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 266
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->saveCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 275
    :goto_2
    new-instance v0, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v0}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->payuUtils:Lcom/payu/india/Payu/PayuUtils;

    .line 277
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$6;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 412
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardNumberEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$7;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$7;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 423
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardCvvEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$8;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 454
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->view:Landroid/view/View;

    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryYearEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 202
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryMonthEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 204
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->cardExpiryYearEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/payu/payuui/Fragment/CreditDebitFragment$4;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment$4;-><init>(Lcom/payu/payuui/Fragment/CreditDebitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 263
    :cond_2
    new-instance v0, Lcom/payu/india/Model/PayuConfig;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuConfig;-><init>()V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->saveCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public onGetOfferStatusApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 6
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getPayuOffer()Lcom/payu/india/Model/PayuOffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuOffer;->getDiscount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Discount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getPayuOffer()Lcom/payu/india/Model/PayuOffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/india/Model/PayuOffer;->getDiscount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 599
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getPayuOffer()Lcom/payu/india/Model/PayuOffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/india/Model/PayuOffer;->getDiscount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 600
    .local v0, "amount":Ljava/lang/Double;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "discountedAmount":Ljava/lang/String;
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->amountText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    .end local v0    # "amount":Ljava/lang/Double;
    .end local v1    # "discountedAmount":Ljava/lang/String;
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->amountText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v4}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public uiValidation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 574
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->issuer:Ljava/lang/String;

    const-string v1, "SMAE"

    if-ne v0, v1, :cond_0

    .line 576
    iput-boolean v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z

    .line 577
    iput-boolean v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryMonthValid:Z

    .line 578
    iput-boolean v2, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z

    .line 582
    :cond_0
    iget-boolean v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCardNumberValid:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isCvvValid:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryYearValid:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->isExpiryMonthValid:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentPosition:I

    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 583
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment;->fragmentPosition:I

    if-ne v0, v1, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$id;->button_pay_now:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
