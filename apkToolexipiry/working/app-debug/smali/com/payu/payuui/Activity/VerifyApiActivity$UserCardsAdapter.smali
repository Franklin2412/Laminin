.class Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VerifyApiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserCardsAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUserCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
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
            "Lcom/payu/india/Model/StoredCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p3, "userCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1387
    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    .line 1388
    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mContext:Landroid/content/Context;

    .line 1389
    return-void
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1433
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Lcom/payu/india/Model/StoredCard;->getCardName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1410
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DROPDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1411
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-virtual {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1412
    const-string v1, "DROPDOWN"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1415
    :cond_1
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1416
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    return-object p2
.end method

.method public getItem(I)Lcom/payu/india/Model/StoredCard;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->mUserCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1382
    invoke-virtual {p0, p1}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->getItem(I)Lcom/payu/india/Model/StoredCard;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1405
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1423
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NON_DROPDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-virtual {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1425
    const-string v1, "NON_DROPDOWN"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1427
    :cond_1
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1428
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/payu/payuui/Activity/VerifyApiActivity$UserCardsAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    return-object p2
.end method
