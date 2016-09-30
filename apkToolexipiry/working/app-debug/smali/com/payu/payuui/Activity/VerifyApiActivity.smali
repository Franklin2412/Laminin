.class public Lcom/payu/payuui/Activity/VerifyApiActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payu/india/Interfaces/GetStoredCardApiListener;
.implements Lcom/payu/india/Interfaces/SaveCardApiListener;
.implements Lcom/payu/india/Interfaces/EditCardApiListener;
.implements Lcom/payu/india/Interfaces/DeleteCardApiListener;
.implements Lcom/payu/india/Interfaces/GetCardInformationApiListener;
.implements Lcom/payu/india/Interfaces/GetIbiboCodesApiListener;
.implements Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;
.implements Lcom/payu/india/Interfaces/GetTransactionInfoApiListener;
.implements Lcom/payu/india/Interfaces/GetOfferStatusApiListener;
.implements Lcom/payu/india/Interfaces/VerifyPaymentApiListener;
.implements Lcom/payu/india/Interfaces/DeleteCvvApiListener;
.implements Lcom/payu/india/Interfaces/CheckOfferDetailsApiListener;
.implements Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;
.implements Lcom/payu/india/Interfaces/GetEmiAmountAccordingToInterestApiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;,
        Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
    }
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private checkOfferDetailsButton:Landroid/widget/Button;

.field private deleteCvvButton:Landroid/widget/Button;

.field private deleteUserCard:Ljava/lang/Boolean;

.field private deleteUserCardButton:Landroid/widget/Button;

.field private editUserCard:Ljava/lang/Boolean;

.field private editUserCardButton:Landroid/widget/Button;

.field private getCardInformationButton:Landroid/widget/Button;

.field private getEmiAmoutAccordingToInterest:Landroid/widget/Button;

.field private getIbiboCodeButton:Landroid/widget/Button;

.field private getOfferStatusButton:Landroid/widget/Button;

.field private getTransactionInformationButton:Landroid/widget/Button;

.field private getUserCard:Ljava/lang/Boolean;

.field private getUserCardsButton:Landroid/widget/Button;

.field private getValueAddedServiceButton:Landroid/widget/Button;

.field private mPaymentParams:Lcom/payu/india/Model/PaymentParams;

.field private mPayuHashes:Lcom/payu/india/Model/PayuHashes;

.field private merchantWebService:Lcom/payu/india/Model/MerchantWebService;

.field private netBankingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private postData:Lcom/payu/india/Model/PostData;

.field progressDialog:Landroid/app/ProgressDialog;

.field private selectedUserCard:Lcom/payu/india/Model/StoredCard;

.field private storeUserCardButton:Landroid/widget/Button;

.field private storedCardsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation
.end field

.field private verifyTransactionButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard:Ljava/lang/Boolean;

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCard:Ljava/lang/Boolean;

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCard:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/MerchantWebService;)Lcom/payu/india/Model/MerchantWebService;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;
    .param p1, "x1"    # Lcom/payu/india/Model/MerchantWebService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Activity/VerifyApiActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    return-object v0
.end method

.method static synthetic access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;
    .param p1, "x1"    # Lcom/payu/india/Model/PostData;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuHashes;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    return-object v0
.end method

.method static synthetic access$600(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/StoredCard;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;

    return-object v0
.end method

.method static synthetic access$802(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/StoredCard;)Lcom/payu/india/Model/StoredCard;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;
    .param p1, "x1"    # Lcom/payu/india/Model/StoredCard;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;

    return-object p1
.end method

.method private checkOfferDetails()V
    .locals 29

    .prologue
    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v24

    .line 314
    .local v24, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/payu/payuui/R$layout;->layout_check_offer_details:I

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 315
    .local v28, "viewOfferDetails":Landroid/view/View;
    sget v3, Lcom/payu/payuui/R$id;->edit_text_offer_amount:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    .line 318
    .local v21, "offerAmountEditText":Landroid/widget/EditText;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_card_number_layout:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 319
    .local v5, "cardNumberLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->edit_text_offer_card_number:I

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 322
    .local v14, "offerCardNumberEditText":Landroid/widget/EditText;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_user_credentials:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 323
    .local v6, "userCredentialsLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->edit_text_offer_user_credentials:I

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 324
    .local v10, "userCredentialsEditText":Landroid/widget/EditText;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_user_credentials_and_card_token:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 325
    .local v7, "userCredentialsAndTokenLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_netbanking:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 326
    .local v8, "netBankingLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_bank_code:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 328
    .local v9, "bankCodeLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->spinner_select_offer_mode:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Spinner;

    .line 330
    .local v26, "selectOfferModeSpinner":Landroid/widget/Spinner;
    sget v3, Lcom/payu/payuui/R$id;->spinner_netbanking:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    .line 331
    .local v20, "netBankingSpinner":Landroid/widget/Spinner;
    sget v3, Lcom/payu/payuui/R$id;->spinner_stored_cards:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 335
    .local v17, "storedCardSpinner":Landroid/widget/Spinner;
    sget v3, Lcom/payu/payuui/R$array;->check_offer_details_modes:I

    const v4, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 336
    new-instance v3, Lcom/payu/payuui/Activity/VerifyApiActivity$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/payu/payuui/Activity/VerifyApiActivity$2;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 394
    new-instance v25, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 395
    .local v25, "netBankingAdapter":Landroid/widget/BaseAdapter;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 398
    new-instance v27, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 399
    .local v27, "storedCardsAdapter":Landroid/widget/BaseAdapter;
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 402
    new-instance v23, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v23, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/payu/payuui/R$string;->ok:I

    new-instance v11, Lcom/payu/payuui/Activity/VerifyApiActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity$4;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v3, v4, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v11, Lcom/payu/payuui/Activity/VerifyApiActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity$3;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 408
    invoke-virtual {v3, v4, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 415
    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v22

    .line 416
    .local v22, "checkOfferDetails":Landroid/support/v7/app/AlertDialog;
    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 418
    const/4 v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v11, Lcom/payu/payuui/Activity/VerifyApiActivity$5;

    move-object/from16 v12, p0

    move-object v13, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-direct/range {v11 .. v22}, Lcom/payu/payuui/Activity/VerifyApiActivity$5;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    return-void
.end method

.method private deleteCvv()V
    .locals 11

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1140
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/payu/payuui/R$layout;->layout_delete_stored_card_cvv:I

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1141
    .local v7, "viewDeleteCardCvv":Landroid/view/View;
    sget v8, Lcom/payu/payuui/R$id;->list_view_delete_stored_card_cvv:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1143
    .local v1, "deleteCardCvvListView":Landroid/widget/ListView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v4, "oneTapCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    iget-object v8, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/payu/india/Model/StoredCard;

    .line 1145
    .local v5, "storedCard":Lcom/payu/india/Model/StoredCard;
    invoke-virtual {v5}, Lcom/payu/india/Model/StoredCard;->getOneTapCard()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1146
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1148
    .end local v5    # "storedCard":Lcom/payu/india/Model/StoredCard;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1149
    new-instance v6, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;

    invoke-direct {v6, p0, p0, v4}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1150
    .local v6, "userCardsAdapter":Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1152
    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$32;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$32;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1159
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1160
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/payu/payuui/R$string;->ok:I

    new-instance v10, Lcom/payu/payuui/Activity/VerifyApiActivity$34;

    invoke-direct {v10, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$34;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v10, Lcom/payu/payuui/Activity/VerifyApiActivity$33;

    invoke-direct {v10, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$33;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 1186
    invoke-virtual {v8, v9, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1193
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 1194
    .local v2, "deleteUserCardDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1198
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2    # "deleteUserCardDialog":Landroid/support/v7/app/AlertDialog;
    .end local v6    # "userCardsAdapter":Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
    :goto_1
    return-void

    .line 1196
    :cond_2
    const-string v8, "No one tap card"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private deleteUserCard()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard()V

    .line 502
    return-void
.end method

.method private editUserCard()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard()V

    .line 498
    return-void
.end method

.method private getCardInformation()V
    .locals 9

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 740
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/payu/payuui/R$layout;->layout_get_card_information:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 741
    .local v5, "viewCardInforamtion":Landroid/view/View;
    sget v6, Lcom/payu/payuui/R$id;->edit_text_card_number:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 742
    .local v1, "cardNumberEditText":Landroid/widget/EditText;
    new-instance v4, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v4}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    .line 744
    .local v4, "payuUtils":Lcom/payu/india/Payu/PayuUtils;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/payu/payuui/R$string;->ok:I

    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$19;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$19;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 747
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$18;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$18;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 752
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 759
    .local v2, "getCardInfomationAlertDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 761
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/payu/payuui/Activity/VerifyApiActivity$20;

    invoke-direct {v7, p0, v1, v4, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity$20;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Lcom/payu/india/Payu/PayuUtils;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    return-void
.end method

.method private getEmiAmountAccordingToInterest()V
    .locals 7

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 247
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/payu/payuui/R$layout;->layout_emi_interest:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 248
    .local v4, "viewEmiBankInput":Landroid/view/View;
    sget v5, Lcom/payu/payuui/R$id;->payu_emi_input:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 249
    .local v2, "inputEditText":Landroid/widget/EditText;
    sget v5, Lcom/payu/payuui/R$id;->emi_submit_btn:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 251
    .local v1, "emiSubmitButton":Landroid/widget/Button;
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 253
    const-string v5, "Enter Amount"

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 256
    new-instance v5, Lcom/payu/payuui/Activity/VerifyApiActivity$1;

    invoke-direct {v5, p0, v2, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity$1;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method private getIbiboCodes()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 824
    new-instance v1, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 825
    .local v1, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 826
    const-string v3, "get_merchant_ibibo_codes"

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 827
    const-string v3, "default"

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 828
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuHashes;->getMerchantIbiboCodesHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 830
    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v3, v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    .line 831
    .local v2, "postData":Lcom/payu/india/Model/PostData;
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 832
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 833
    new-instance v0, Lcom/payu/india/Tasks/GetIbiboCodesTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/GetIbiboCodesTask;-><init>(Lcom/payu/india/Interfaces/GetIbiboCodesApiListener;)V

    .line 834
    .local v0, "getIbiboCodesTask":Lcom/payu/india/Tasks/GetIbiboCodesTask;
    new-array v3, v5, [Lcom/payu/india/Model/PayuConfig;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/payu/india/Tasks/GetIbiboCodesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 838
    .end local v0    # "getIbiboCodesTask":Lcom/payu/india/Tasks/GetIbiboCodesTask;
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getOfferStatus()V
    .locals 21

    .prologue
    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 945
    .local v15, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/payu/payuui/R$layout;->layout_get_offer_status:I

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 947
    .local v19, "viewOfferStatus":Landroid/view/View;
    sget v3, Lcom/payu/payuui/R$id;->edit_text_offer_card_number:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 948
    .local v9, "offerCardNumberEditText":Landroid/widget/EditText;
    sget v3, Lcom/payu/payuui/R$id;->edit_text_offer_name_on_card:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 949
    .local v10, "offerNameOnCardEditText":Landroid/widget/EditText;
    sget v3, Lcom/payu/payuui/R$id;->edit_text_offer_card_mode:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 951
    .local v8, "offerPaymentModeEditText":Landroid/widget/EditText;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_new_card:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 952
    .local v7, "newCardLinearLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_netbanking:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 953
    .local v5, "netBankingLinearLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->linear_layout_stored_card:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 956
    .local v11, "storedCardLinearLayout":Landroid/widget/LinearLayout;
    sget v3, Lcom/payu/payuui/R$id;->spinner_select_offer_mode:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 958
    .local v17, "selectOfferModeSpinner":Landroid/widget/Spinner;
    sget v3, Lcom/payu/payuui/R$id;->spinner_netbanking:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 959
    .local v6, "netBankingSpinner":Landroid/widget/Spinner;
    sget v3, Lcom/payu/payuui/R$id;->spinner_stored_cards:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 963
    .local v12, "storedCardSpinner":Landroid/widget/Spinner;
    sget v3, Lcom/payu/payuui/R$array;->offer_modes:I

    const v4, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 964
    new-instance v3, Lcom/payu/payuui/Activity/VerifyApiActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v11, v5}, Lcom/payu/payuui/Activity/VerifyApiActivity$25;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 998
    new-instance v16, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 999
    .local v16, "netBankingAdapter":Landroid/widget/BaseAdapter;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1002
    new-instance v18, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1003
    .local v18, "storedCardsAdapter":Landroid/widget/BaseAdapter;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1006
    new-instance v14, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1007
    .local v14, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/payu/payuui/R$string;->ok:I

    new-instance v20, Lcom/payu/payuui/Activity/VerifyApiActivity$27;

    invoke-direct/range {v20 .. v21}, Lcom/payu/payuui/Activity/VerifyApiActivity$27;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v20, Lcom/payu/payuui/Activity/VerifyApiActivity$26;

    invoke-direct/range {v20 .. v21}, Lcom/payu/payuui/Activity/VerifyApiActivity$26;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 1012
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1019
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v13

    .line 1020
    .local v13, "getOfferDetailsDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v13}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1022
    const/4 v3, -0x1

    invoke-virtual {v13, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v20

    new-instance v3, Lcom/payu/payuui/Activity/VerifyApiActivity$28;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/payu/payuui/Activity/VerifyApiActivity$28;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/support/v7/app/AlertDialog;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    return-void
.end method

.method private getPaymentRelatedDetails()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 844
    new-instance v1, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 845
    .local v1, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 846
    const-string v3, "payment_related_details_for_mobile_sdk"

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "default"

    :goto_0
    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 848
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuHashes;->getPaymentRelatedDetailsForMobileSdkHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 850
    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v3, v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    .line 851
    .local v2, "postData":Lcom/payu/india/Model/PostData;
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 852
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 853
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 854
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v4, "Fetching bank information please wait."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 856
    new-instance v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;-><init>(Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;)V

    .line 857
    .local v0, "getPaymentRelatedDetailsTask":Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;
    new-array v3, v5, [Lcom/payu/india/Model/PayuConfig;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 861
    .end local v0    # "getPaymentRelatedDetailsTask":Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;
    :goto_1
    return-void

    .line 847
    .end local v2    # "postData":Lcom/payu/india/Model/PostData;
    :cond_0
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 859
    .restart local v2    # "postData":Lcom/payu/india/Model/PostData;
    :cond_1
    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getTransactionInformation()V
    .locals 9

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 885
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/payu/payuui/R$layout;->layout_get_transaction_information:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 887
    .local v3, "layoutGetTransactionInformation":Landroid/view/View;
    sget v6, Lcom/payu/payuui/R$id;->edit_text_from_date:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 888
    .local v1, "fromDateEditText":Landroid/widget/EditText;
    sget v6, Lcom/payu/payuui/R$id;->edit_text_to_date:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 890
    .local v5, "toDateEditText":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/payu/payuui/R$string;->ok:I

    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$23;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$23;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 893
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$22;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$22;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 898
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 905
    .local v2, "getTransactionInformationAlertDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 907
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/payu/payuui/Activity/VerifyApiActivity$24;

    invoke-direct {v7, p0, v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity$24;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    return-void
.end method

.method private getUserCard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 476
    new-instance v1, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 477
    .local v1, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 478
    const-string v2, "get_user_cards"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getStoredCardsHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 482
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    .line 483
    new-instance v2, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v2, v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    .line 485
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 488
    new-instance v0, Lcom/payu/india/Tasks/GetStoredCardTask;

    invoke-direct {v0, p0}, Lcom/payu/india/Tasks/GetStoredCardTask;-><init>(Lcom/payu/india/Interfaces/GetStoredCardApiListener;)V

    .line 489
    .local v0, "getStoredCardTask":Lcom/payu/india/Tasks/GetStoredCardTask;
    new-array v2, v4, [Lcom/payu/india/Model/PayuConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/payu/india/Tasks/GetStoredCardTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 493
    .end local v0    # "getStoredCardTask":Lcom/payu/india/Tasks/GetStoredCardTask;
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getValueAddedService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 864
    new-instance v0, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v0}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 865
    .local v0, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 866
    const-string v2, "vas_for_mobile_sdk"

    invoke-virtual {v0, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getVasForMobileSdkHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 868
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 869
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 870
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 872
    new-instance v2, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v2, v0}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 873
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 874
    new-instance v1, Lcom/payu/india/Tasks/ValueAddedServiceTask;

    invoke-direct {v1, p0}, Lcom/payu/india/Tasks/ValueAddedServiceTask;-><init>(Lcom/payu/india/Interfaces/ValueAddedServiceApiListener;)V

    .line 875
    .local v1, "valueAddedServiceTask":Lcom/payu/india/Tasks/ValueAddedServiceTask;
    new-array v2, v4, [Lcom/payu/india/Model/PayuConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/payu/india/Tasks/ValueAddedServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 879
    .end local v1    # "valueAddedServiceTask":Lcom/payu/india/Tasks/ValueAddedServiceTask;
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private saveUserCard()V
    .locals 13

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 506
    .local v10, "layoutInflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/payu/payuui/R$layout;->layout_store_user_cards:I

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 507
    .local v11, "viewStoreUserCard":Landroid/view/View;
    sget v0, Lcom/payu/payuui/R$id;->edit_text_card_number:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 508
    .local v4, "cardNumberEditText":Landroid/widget/EditText;
    sget v0, Lcom/payu/payuui/R$id;->edit_text_card_holder_name:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 509
    .local v2, "cardHolderNameEditText":Landroid/widget/EditText;
    sget v0, Lcom/payu/payuui/R$id;->edit_text_expiry_month:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 510
    .local v5, "cardExpiryMonthEditText":Landroid/widget/EditText;
    sget v0, Lcom/payu/payuui/R$id;->edit_text_expiry_year:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 511
    .local v6, "cardExpiryYearEditText":Landroid/widget/EditText;
    sget v0, Lcom/payu/payuui/R$id;->edit_text_cvv:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 512
    .local v9, "cvvEditText":Landroid/widget/EditText;
    sget v0, Lcom/payu/payuui/R$id;->edit_text_card_name:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 514
    .local v3, "cardNameEditText":Landroid/widget/EditText;
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    .local v8, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v8, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$string;->ok:I

    new-instance v12, Lcom/payu/payuui/Activity/VerifyApiActivity$7;

    invoke-direct {v12, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$7;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v0, v1, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v12, Lcom/payu/payuui/Activity/VerifyApiActivity$6;

    invoke-direct {v12, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$6;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 520
    invoke-virtual {v0, v1, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 527
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 528
    .local v7, "saveUserCardDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 531
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v12

    new-instance v0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/payu/payuui/Activity/VerifyApiActivity$8;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    return-void
.end method

.method private showDeleteUserCardsDialog(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "userCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    const/4 v7, 0x0

    .line 569
    iput-object v7, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;

    .line 570
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 571
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/payu/payuui/R$layout;->layout_delete_user_cards:I

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 572
    .local v5, "viewDeleteUserCard":Landroid/view/View;
    sget v6, Lcom/payu/payuui/R$id;->list_view_delete_user_card:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 575
    .local v2, "deleteUserCardListView":Landroid/widget/ListView;
    new-instance v4, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;

    invoke-direct {v4, p0, p0, p1}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 576
    .local v4, "userCardsAdapter":Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    new-instance v6, Lcom/payu/payuui/Activity/VerifyApiActivity$9;

    invoke-direct {v6, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$9;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 585
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/payu/payuui/R$string;->ok:I

    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$11;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$11;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v8, Lcom/payu/payuui/Activity/VerifyApiActivity$10;

    invoke-direct {v8, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$10;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 612
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 619
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 620
    .local v1, "deleteUserCardDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 621
    return-void
.end method

.method private showEditUserCardsDialog(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "userCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    .line 628
    .local v20, "layoutInflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/payu/payuui/R$layout;->layout_edit_user_cards:I

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 629
    .local v23, "viewEditUserCard":Landroid/view/View;
    sget v4, Lcom/payu/payuui/R$id;->spinner_edit_card:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    .line 631
    .local v22, "userCardsSpinner":Landroid/widget/Spinner;
    new-instance v21, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 633
    .local v21, "userCardsAdapter":Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 635
    sget v4, Lcom/payu/payuui/R$id;->edit_text_card_number:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 636
    .local v6, "cardNumberEditText":Landroid/widget/EditText;
    sget v4, Lcom/payu/payuui/R$id;->edit_text_card_holder_name:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 637
    .local v7, "cardHolderNameEditText":Landroid/widget/EditText;
    sget v4, Lcom/payu/payuui/R$id;->edit_text_expiry_month:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 638
    .local v9, "cardExpiryMonthEditText":Landroid/widget/EditText;
    sget v4, Lcom/payu/payuui/R$id;->edit_text_expiry_year:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 639
    .local v10, "cardExpiryYearEditText":Landroid/widget/EditText;
    sget v4, Lcom/payu/payuui/R$id;->edit_text_card_name:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 642
    .local v8, "cardNameEditText":Landroid/widget/EditText;
    new-instance v4, Lcom/payu/payuui/Activity/VerifyApiActivity$12;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/payu/payuui/Activity/VerifyApiActivity$12;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 660
    new-instance v19, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    .local v19, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$string;->ok:I

    new-instance v11, Lcom/payu/payuui/Activity/VerifyApiActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity$14;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    invoke-virtual {v4, v5, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v11, Lcom/payu/payuui/Activity/VerifyApiActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity$13;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 666
    invoke-virtual {v4, v5, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 673
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v18

    .line 674
    .local v18, "editUserCardDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 676
    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    new-instance v11, Lcom/payu/payuui/Activity/VerifyApiActivity$15;

    move-object/from16 v12, p0

    move-object v13, v8

    move-object v14, v7

    move-object v15, v6

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v18}, Lcom/payu/payuui/Activity/VerifyApiActivity$15;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    return-void
.end method

.method private showUserCardsDialog(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "userCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 715
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/payu/payuui/R$layout;->layout_get_user_cards:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 716
    .local v4, "viewUserCards":Landroid/view/View;
    sget v5, Lcom/payu/payuui/R$id;->list_view_user_card:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 717
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v3, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;

    invoke-direct {v3, p0, p0, p1}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 718
    .local v3, "userCardsAdapter":Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 720
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/payu/payuui/R$string;->ok:I

    new-instance v7, Lcom/payu/payuui/Activity/VerifyApiActivity$17;

    invoke-direct {v7, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$17;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 723
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v7, Lcom/payu/payuui/Activity/VerifyApiActivity$16;

    invoke-direct {v7, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$16;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 728
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 734
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 735
    return-void
.end method

.method private showValueAddedServiceResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 5
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    const/4 v3, 0x1

    .line 801
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isIssuingBankStatusAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isNetBankingStatusAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 803
    .local v0, "issuingBankStatus":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getIssuingBankStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 804
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bank code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bank Name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getIssuingBankStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/CardStatus;

    invoke-virtual {v2}, Lcom/payu/india/Model/CardStatus;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bank status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getIssuingBankStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/CardStatus;

    invoke-virtual {v2}, Lcom/payu/india/Model/CardStatus;->getStatusCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 808
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 809
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Netbanking status: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 810
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getNetBankingDownStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "issuing bank status: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/payu/payuui/Activity/VerifyApiActivity$21;

    invoke-direct {v4, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$21;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 811
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 815
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 821
    .end local v0    # "issuingBankStatus":Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 816
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 817
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 819
    :cond_3
    const-string v2, "Something went wrong!"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private verifyPayment()V
    .locals 8

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1082
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/payu/payuui/R$layout;->layout_verify_payment:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1084
    .local v2, "layoutVerifyPayment":Landroid/view/View;
    sget v5, Lcom/payu/payuui/R$id;->edit_text_verify_payment_transaction_id:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1086
    .local v4, "verifyPaymentTransactionIdEditText":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1087
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/payu/payuui/R$string;->ok:I

    new-instance v7, Lcom/payu/payuui/Activity/VerifyApiActivity$30;

    invoke-direct {v7, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$30;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 1089
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/payu/payuui/R$string;->cancel:I

    new-instance v7, Lcom/payu/payuui/Activity/VerifyApiActivity$29;

    invoke-direct {v7, p0}, Lcom/payu/payuui/Activity/VerifyApiActivity$29;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V

    .line 1094
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1100
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 1101
    .local v3, "verifyPaymentDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1103
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/payu/payuui/Activity/VerifyApiActivity$31;

    invoke-direct {v6, p0, v4, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity$31;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 3

    .prologue
    .line 237
    const-string v2, "connectivity"

    .line 238
    invoke-virtual {p0, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 240
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCheckOfferDetailsApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1280
    if-eqz p1, :cond_0

    .line 1281
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getStatus()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1302
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_store_user_card:I

    if-ne v0, v1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->saveUserCard()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_delete_user_card:I

    if-ne v0, v1, :cond_2

    .line 193
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCard:Ljava/lang/Boolean;

    .line 194
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCard:Ljava/lang/Boolean;

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard:Ljava/lang/Boolean;

    .line 196
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCard()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_edit_user_card:I

    if-ne v0, v1, :cond_3

    .line 198
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCard:Ljava/lang/Boolean;

    .line 199
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCard:Ljava/lang/Boolean;

    .line 200
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard:Ljava/lang/Boolean;

    .line 201
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCard()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_user_cards:I

    if-ne v0, v1, :cond_4

    .line 203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCard:Ljava/lang/Boolean;

    .line 204
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCard:Ljava/lang/Boolean;

    .line 205
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard:Ljava/lang/Boolean;

    .line 206
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard()V

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_card_information:I

    if-ne v0, v1, :cond_5

    .line 208
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getCardInformation()V

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_ibibo_codes:I

    if-ne v0, v1, :cond_6

    .line 210
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getIbiboCodes()V

    goto :goto_0

    .line 211
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_value_added_services:I

    if-ne v0, v1, :cond_7

    .line 212
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getValueAddedService()V

    goto :goto_0

    .line 213
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_transaction_information:I

    if-ne v0, v1, :cond_8

    .line 214
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getTransactionInformation()V

    goto/16 :goto_0

    .line 215
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_offer_status:I

    if-ne v0, v1, :cond_9

    .line 216
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getOfferStatus()V

    goto/16 :goto_0

    .line 217
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_verify_transaction:I

    if-ne v0, v1, :cond_a

    .line 218
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->verifyPayment()V

    goto/16 :goto_0

    .line 219
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_delete_cvv:I

    if-ne v0, v1, :cond_b

    .line 220
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteCvv()V

    goto/16 :goto_0

    .line 221
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_check_offer_details:I

    if-ne v0, v1, :cond_d

    .line 222
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 223
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->checkOfferDetails()V

    goto/16 :goto_0

    .line 225
    :cond_c
    const-string v0, "not able to fetch netbanking details"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 226
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/payuui/R$id;->button_get_emi_as_per_interest:I

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getEmiAmountAccordingToInterest()V

    goto/16 :goto_0

    .line 230
    :cond_e
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No Network Connectivity"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    sget v0, Lcom/payu/payuui/R$layout;->activity_verify_api:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->setContentView(I)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    .line 133
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "payu_hashes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuHashes;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;

    .line 134
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "payment_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PaymentParams;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 135
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "payuConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuConfig;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 137
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "netbanking"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "store_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getPaymentRelatedDetails()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    :goto_0
    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 148
    sget v0, Lcom/payu/payuui/R$id;->button_store_user_card:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storeUserCardButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget v0, Lcom/payu/payuui/R$id;->button_get_user_cards:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCardsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lcom/payu/payuui/R$id;->button_delete_user_card:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCardButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget v0, Lcom/payu/payuui/R$id;->button_edit_user_card:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCardButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget v0, Lcom/payu/payuui/R$id;->button_get_card_information:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getCardInformationButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/payu/payuui/R$id;->button_get_ibibo_codes:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getIbiboCodeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget v0, Lcom/payu/payuui/R$id;->button_get_value_added_services:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getValueAddedServiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/payu/payuui/R$id;->button_get_transaction_information:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getTransactionInformationButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/payu/payuui/R$id;->button_get_offer_status:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getOfferStatusButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lcom/payu/payuui/R$id;->button_verify_transaction:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->verifyTransactionButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v0, Lcom/payu/payuui/R$id;->button_delete_cvv:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteCvvButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v0, Lcom/payu/payuui/R$id;->button_check_offer_details:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->checkOfferDetailsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget v0, Lcom/payu/payuui/R$id;->button_get_emi_as_per_interest:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getEmiAmoutAccordingToInterest:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void

    .line 144
    :cond_1
    new-instance v0, Lcom/payu/india/Model/PayuConfig;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuConfig;-><init>()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteCardApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1228
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1229
    return-void
.end method

.method public onDeleteCvvApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 0
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1269
    return-void
.end method

.method public onEditCardApiListener(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1223
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1224
    return-void
.end method

.method public onGetCardInformationResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 3
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    const/4 v2, 0x1

    .line 1233
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->isCardInformationAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is Domestic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getCardInformation()Lcom/payu/india/Model/CardInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/CardInformation;->getIsDomestic()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Issuing Bank: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getCardInformation()Lcom/payu/india/Model/CardInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/CardInformation;->getIssuingBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Card Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getCardInformation()Lcom/payu/india/Model/CardInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/CardInformation;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Card Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getCardInformation()Lcom/payu/india/Model/CardInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/CardInformation;->getCardCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1238
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onGetEmiAmountAccordingToInterestApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 18
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1319
    invoke-virtual/range {p1 .. p1}, Lcom/payu/india/Model/PayuResponse;->getPayuEmiAmountAccordingToInterest()Ljava/util/HashMap;

    move-result-object v6

    .line 1320
    .local v6, "emiResponse":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;>;"
    const-string v2, ""

    .line 1321
    .local v2, "bankCode":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v3, "bankCodeEmiMonthsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1324
    .local v12, "perBankEmiResponseIterator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bankCode":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1325
    .restart local v2    # "bankCode":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1326
    .local v7, "emiResponseIterator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1334
    .end local v7    # "emiResponseIterator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    .end local v12    # "perBankEmiResponseIterator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;>;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 1335
    .local v11, "layoutInflater":Landroid/view/LayoutInflater;
    sget v14, Lcom/payu/payuui/R$layout;->layout_emi_interest_filter:I

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1336
    .local v13, "viewEmiFilter":Landroid/view/View;
    sget v14, Lcom/payu/payuui/R$id;->filter_txt:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1337
    .local v10, "inputEditText":Landroid/widget/EditText;
    sget v14, Lcom/payu/payuui/R$id;->filtered_results:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1338
    .local v9, "filteredResults":Landroid/widget/TextView;
    sget v14, Lcom/payu/payuui/R$id;->emi_api_response:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1339
    .local v5, "emiApiResponse":Landroid/widget/TextView;
    sget v14, Lcom/payu/payuui/R$id;->filter_submit_button:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1341
    .local v8, "filterSubmitButton":Landroid/widget/Button;
    const-string v14, "\n"

    invoke-static {v14, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1345
    new-instance v4, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1346
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1348
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1351
    new-instance v14, Lcom/payu/payuui/Activity/VerifyApiActivity$35;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v10, v1, v9}, Lcom/payu/payuui/Activity/VerifyApiActivity$35;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Lcom/payu/india/Model/PayuResponse;Landroid/widget/TextView;)V

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1379
    return-void
.end method

.method public onGetIbiboCodesApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1243
    return-void
.end method

.method public onGetOfferStatusApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Discount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getPayuOffer()Lcom/payu/india/Model/PayuOffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PayuOffer;->getDiscount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1259
    return-void
.end method

.method public onGetStoredCardApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1203
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1204
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->getUserCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->showUserCardsDialog(Ljava/util/ArrayList;)V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->editUserCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->showEditUserCardsDialog(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteUserCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->showDeleteUserCardsDialog(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1211
    :cond_3
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onGetTransactionApiListener(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1254
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 180
    .local v0, "id":I
    sget v1, Lcom/payu/payuui/R$id;->action_settings:I

    if-ne v0, v1, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 184
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPaymentRelatedDetailsResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1273
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getNetBanks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;

    .line 1274
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getStoredCards()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;

    .line 1275
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1276
    return-void
.end method

.method public onSaveCardResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1218
    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1219
    return-void
.end method

.method public onValueAddedServiceApiResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 0
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->showValueAddedServiceResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 1249
    return-void
.end method

.method public onVerifyPaymentResponse(Lcom/payu/india/Model/PayuResponse;)V
    .locals 2
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1264
    return-void
.end method
