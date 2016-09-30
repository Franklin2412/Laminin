.class Lcom/payu/payuui/Fragment/SavedCardsFragment$3;
.super Ljava/lang/Object;
.source "SavedCardsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Fragment/SavedCardsFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/payu/payuui/Fragment/SavedCardsFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Fragment/SavedCardsFragment;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    iput p2, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    iget-object v0, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;->this$0:Lcom/payu/payuui/Fragment/SavedCardsFragment;

    # getter for: Lcom/payu/payuui/Fragment/SavedCardsFragment;->mStoreCards:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$100(Lcom/payu/payuui/Fragment/SavedCardsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/payu/payuui/Fragment/SavedCardsFragment$3;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    # invokes: Lcom/payu/payuui/Fragment/SavedCardsFragment;->deleteCard(Lcom/payu/india/Model/StoredCard;)V
    invoke-static {v1, v0}, Lcom/payu/payuui/Fragment/SavedCardsFragment;->access$400(Lcom/payu/payuui/Fragment/SavedCardsFragment;Lcom/payu/india/Model/StoredCard;)V

    .line 218
    return-void
.end method
