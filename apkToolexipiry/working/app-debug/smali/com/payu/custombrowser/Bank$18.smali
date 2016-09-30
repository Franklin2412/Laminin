.class Lcom/payu/custombrowser/Bank$18;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->enter_otp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$approveButton:Landroid/widget/Button;

.field final synthetic val$otpSms:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$18;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$18;->val$otpSms:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 2079
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 2057
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2061
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$otpSms:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2062
    .local v0, "otp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 2063
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v1}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$18;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->setView(Landroid/view/View;)V

    .line 2065
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$18;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2066
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2067
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    invoke-static {v3, v1}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 2074
    :goto_0
    return-void

    .line 2070
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2071
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    invoke-static {v3, v1}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 2072
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$18;->val$approveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
