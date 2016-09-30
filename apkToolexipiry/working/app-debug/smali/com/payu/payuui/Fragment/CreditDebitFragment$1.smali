.class Lcom/payu/payuui/Fragment/CreditDebitFragment$1;
.super Ljava/lang/Object;
.source "CreditDebitFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 151
    iput-object p1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$1;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 156
    new-instance v0, Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    invoke-direct {v0}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;-><init>()V

    .line 157
    .local v0, "newFragment":Lcom/payu/payuui/Widget/MonthYearPickerDialog;
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$1;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    invoke-virtual {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DatePicker"

    invoke-virtual {v0, v1, v2}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/payu/payuui/Fragment/CreditDebitFragment$1;->this$0:Lcom/payu/payuui/Fragment/CreditDebitFragment;

    # getter for: Lcom/payu/payuui/Fragment/CreditDebitFragment;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v1}, Lcom/payu/payuui/Fragment/CreditDebitFragment;->access$000(Lcom/payu/payuui/Fragment/CreditDebitFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->setListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 160
    return-void
.end method
