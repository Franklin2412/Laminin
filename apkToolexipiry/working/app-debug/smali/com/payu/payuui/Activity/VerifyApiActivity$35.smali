.class Lcom/payu/payuui/Activity/VerifyApiActivity$35;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->onGetEmiAmountAccordingToInterestApiResponse(Lcom/payu/india/Model/PayuResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$filteredResults:Landroid/widget/TextView;

.field final synthetic val$inputEditText:Landroid/widget/EditText;

.field final synthetic val$payuResponse:Lcom/payu/india/Model/PayuResponse;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Lcom/payu/india/Model/PayuResponse;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$inputEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$payuResponse:Lcom/payu/india/Model/PayuResponse;

    iput-object p4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$filteredResults:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1355
    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1356
    .local v2, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1358
    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1359
    .local v0, "bankCodeEmiMonths":[Ljava/lang/String;
    const-string v1, "No results found"

    .line 1361
    .local v1, "filteredResult":Ljava/lang/String;
    array-length v4, v0

    if-lt v4, v6, :cond_0

    .line 1363
    aget-object v4, v0, v7

    const/4 v5, 0x1

    aget-object v5, v0, v5

    iget-object v6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v6}, Lcom/payu/india/Model/PayuResponse;->getPayuEmiAmountAccordingToInterest()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->payuEmiAmountAccordingToInterestResponseHelper(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;

    move-result-object v3

    .line 1364
    .local v3, "payuEmiAmountAccordingToInterest":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    if-eqz v3, :cond_0

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$payuResponse:Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {v5}, Lcom/payu/india/Model/PayuResponse;->getResponseStatus()Lcom/payu/india/Model/PostData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/india/Model/PostData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nemiBankInterest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getEmiBankInterest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nbankRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1366
    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getBankRate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nbankCharge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1367
    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getBankCharge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\namount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1368
    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ncardType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1369
    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getCardType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nemiValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1370
    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getEmiValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nemiInterestPaid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1371
    invoke-virtual {v3}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->getEmiInterestPaid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1375
    .end local v3    # "payuEmiAmountAccordingToInterest":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    :cond_0
    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$filteredResults:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$35;->val$filteredResults:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    return-void
.end method
