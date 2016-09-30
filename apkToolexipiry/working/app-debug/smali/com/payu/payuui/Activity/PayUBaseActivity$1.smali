.class Lcom/payu/payuui/Activity/PayUBaseActivity$1;
.super Ljava/lang/Object;
.source "PayUBaseActivity.java"

# interfaces
.implements Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/PayUBaseActivity;->setupViewPagerAdapter(Lcom/payu/india/Model/PayuResponse;Lcom/payu/india/Model/PayuResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/PayUBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/PayUBaseActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$1;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndicatorColor(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/payu/payuui/Activity/PayUBaseActivity$1;->this$0:Lcom/payu/payuui/Activity/PayUBaseActivity;

    invoke-virtual {v0}, Lcom/payu/payuui/Activity/PayUBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$color;->tabsScrollColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method
