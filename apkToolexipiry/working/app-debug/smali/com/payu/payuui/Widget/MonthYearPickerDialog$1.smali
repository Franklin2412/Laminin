.class Lcom/payu/payuui/Widget/MonthYearPickerDialog$1;
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


# direct methods
.method constructor <init>(Lcom/payu/payuui/Widget/MonthYearPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$1;->this$0:Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog$1;->this$0:Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    invoke-virtual {v0}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 61
    return-void
.end method
