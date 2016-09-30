.class Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabClickListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;
    .param p2, "x1"    # Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabClickListener;-><init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabClickListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabClickListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabClickListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$500(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 323
    :cond_0
    return-void

    .line 317
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
