.class Lcom/payu/custombrowser/Bank$9$1;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/Bank$9;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$9;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/Bank$9;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$9$1;->this$1:Lcom/payu/custombrowser/Bank$9;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$9$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9$1;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$9$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z
    invoke-static {v0, v1}, Lcom/payu/custombrowser/Bank;->access$202(Lcom/payu/custombrowser/Bank;Z)Z

    .line 1106
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9$1;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$200(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9$1;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->USER_NAME_CHECKBOX_STATUS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9$1;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->USER_NAME_CHECKBOX_STATUS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
