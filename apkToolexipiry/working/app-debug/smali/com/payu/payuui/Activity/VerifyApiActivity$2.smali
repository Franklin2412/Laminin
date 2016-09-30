.class Lcom/payu/payuui/Activity/VerifyApiActivity$2;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->checkOfferDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$bankCodeLayout:Landroid/widget/LinearLayout;

.field final synthetic val$cardNumberLayout:Landroid/widget/LinearLayout;

.field final synthetic val$netBankingLayout:Landroid/widget/LinearLayout;

.field final synthetic val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

.field final synthetic val$userCredentialsEditText:Landroid/widget/EditText;

.field final synthetic val$userCredentialsLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 339
    packed-switch p3, :pswitch_data_0

    .line 378
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 357
    :pswitch_2
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 371
    :pswitch_4
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$2;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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
    .line 390
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
