.class Lcom/payu/custombrowser/Bank$20;
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
    .line 2161
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$20;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$20;->val$otpSms:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 2189
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 2166
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 2170
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->val$otpSms:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2171
    .local v0, "otp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 2172
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$20;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->setView(Landroid/view/View;)V

    .line 2173
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$20;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v3}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2174
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 2175
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 2184
    :goto_0
    return-void

    .line 2179
    :cond_0
    const v1, 0x3e99999a    # 0.3f

    .line 2180
    .local v1, "val":F
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 2181
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 2182
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->val$approveButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
