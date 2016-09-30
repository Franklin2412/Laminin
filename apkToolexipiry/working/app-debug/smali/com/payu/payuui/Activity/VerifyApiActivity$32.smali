.class Lcom/payu/payuui/Activity/VerifyApiActivity$32;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteCvv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$32;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1155
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$32;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;
    invoke-static {v1, v0}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$802(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/StoredCard;)Lcom/payu/india/Model/StoredCard;

    .line 1156
    return-void
.end method
