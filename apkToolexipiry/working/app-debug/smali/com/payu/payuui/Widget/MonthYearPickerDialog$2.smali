.class Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;
.super Ljava/lang/Object;
.source "MonthYearPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Widget/MonthYearPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Widget/MonthYearPickerDialog;

.field final synthetic val$monthPicker:Landroid/widget/NumberPicker;

.field final synthetic val$yearPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Widget/MonthYearPickerDialog;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;->this$0:Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    iput-object p2, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;->val$monthPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;->val$yearPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;->this$0:Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    # getter for: Lcom/payu/payuui/Widget/MonthYearPickerDialog;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v0}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->access$000(Lcom/payu/payuui/Widget/MonthYearPickerDialog;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;->val$monthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;->val$yearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 56
    return-void
.end method
