.class Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;
.super Landroid/widget/BaseAdapter;
.source "VerifyApiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayUNetBankingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNetBankingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;


# direct methods
.method public constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1441
    .local p3, "netBankingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1442
    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mContext:Landroid/content/Context;

    .line 1443
    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mNetBankingList:Ljava/util/ArrayList;

    .line 1444
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mNetBankingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mNetBankingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mNetBankingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1454
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1459
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1464
    const/4 v1, 0x0

    .line 1465
    .local v1, "netbankingViewHolder":Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
    if-nez p2, :cond_0

    .line 1466
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1467
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/payu/payuui/R$layout;->netbanking_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1468
    new-instance v1, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;

    .end local v1    # "netbankingViewHolder":Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
    invoke-direct {v1, p0, p2}, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;-><init>(Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;Landroid/view/View;)V

    .line 1469
    .restart local v1    # "netbankingViewHolder":Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1474
    .end local v0    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter;->mNetBankingList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payu/india/Model/PaymentDetails;

    .line 1477
    .local v2, "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    iget-object v3, v1, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;->netbankingTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentDetails;->getBankName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    return-object p2

    .line 1471
    .end local v2    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "netbankingViewHolder":Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
    check-cast v1, Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;

    .restart local v1    # "netbankingViewHolder":Lcom/payu/payuui/Activity/VerifyApiActivity$PayUNetBankingAdapter$NetbankingViewHolder;
    goto :goto_0
.end method
