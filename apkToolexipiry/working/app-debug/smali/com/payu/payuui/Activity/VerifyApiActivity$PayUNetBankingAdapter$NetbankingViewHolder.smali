.class Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetbankingViewHolder"
.end annotation


# instance fields
.field netbankingTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;->this$1:Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    sget v0, Lcom/payu/payuui/R$id;->text_view_netbanking:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;->netbankingTextView:Landroid/widget/TextView;

    .line 1487
    return-void
.end method
