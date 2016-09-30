.class public Lcom/payu/custombrowser/custombar/CustomProgressBar;
.super Ljava/lang/Object;
.source "CustomProgressBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showProgressDialogNew(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    sget v1, Lcom/payu/custombrowser/R$id;->dotsProgressBar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .line 54
    .local v0, "progressBar":Lcom/payu/custombrowser/custombar/DotsProgressBar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->setDotsCount(I)V

    .line 55
    invoke-virtual {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->start()V

    .line 56
    return-void
.end method


# virtual methods
.method public removeDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public removeProgressDialog(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    sget v1, Lcom/payu/custombrowser/R$id;->dotsProgressBar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .line 61
    .local v0, "progressBar":Lcom/payu/custombrowser/custombar/DotsProgressBar;
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->stop()V

    .line 63
    return-void
.end method

.method public showDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->showProgressDialogNew(Landroid/view/View;)V

    .line 44
    return-void
.end method
