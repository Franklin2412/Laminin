.class Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;
    .param p2, "x1"    # Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 293
    iget-object v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$400(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$400(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 270
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 271
    .local v2, "tabStripChildCount":I
    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 277
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "selectedTitle":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v0, v3

    .line 281
    .local v0, "extraOffset":I
    :goto_1
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # invokes: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->scrollToTab(II)V
    invoke-static {v3, p1, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$300(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;II)V

    .line 283
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$400(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$400(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 279
    .end local v0    # "extraOffset":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 300
    iget v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 302
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # invokes: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->scrollToTab(II)V
    invoke-static {v1, p1, v2}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$300(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;II)V

    .line 304
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mTabStrip:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$200(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 305
    goto :goto_1

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$400(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;

    # getter for: Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;->access$400(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 310
    :cond_3
    return-void
.end method
