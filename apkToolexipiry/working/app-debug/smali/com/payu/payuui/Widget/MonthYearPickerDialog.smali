.class public Lcom/payu/payuui/Widget/MonthYearPickerDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "MonthYearPickerDialog.java"


# static fields
.field private static final MAX_YEAR:I = 0x833


# instance fields
.field private listener:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Widget/MonthYearPickerDialog;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Widget/MonthYearPickerDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 35
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 37
    .local v1, "cal":Ljava/util/Calendar;
    sget v7, Lcom/payu/payuui/R$layout;->date_picker_dialog:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "dialog":Landroid/view/View;
    sget v7, Lcom/payu/payuui/R$id;->picker_month:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 39
    .local v4, "monthPicker":Landroid/widget/NumberPicker;
    sget v7, Lcom/payu/payuui/R$id;->picker_year:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    .line 41
    .local v6, "yearPicker":Landroid/widget/NumberPicker;
    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 42
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 43
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 45
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 46
    .local v5, "year":I
    invoke-virtual {v6, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 47
    const/16 v7, 0x833

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 48
    invoke-virtual {v6, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/payu/payuui/R$string;->ok:I

    new-instance v9, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;

    invoke-direct {v9, p0, v4, v6}, Lcom/payu/payuui/Widget/MonthYearPickerDialog$2;-><init>(Lcom/payu/payuui/Widget/MonthYearPickerDialog;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    .line 52
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/payu/payuui/R$string;->Cancel:I

    new-instance v9, Lcom/payu/payuui/Widget/MonthYearPickerDialog$1;

    invoke-direct {v9, p0}, Lcom/payu/payuui/Widget/MonthYearPickerDialog$1;-><init>(Lcom/payu/payuui/Widget/MonthYearPickerDialog;)V

    .line 58
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public setListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/payu/payuui/Widget/MonthYearPickerDialog;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 27
    return-void
.end method
