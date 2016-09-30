.class Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x3


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .local v0, "density":F
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010030

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 68
    .local v2, "themeForegroundColor":I
    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->setColorAlpha(IB)I

    move-result v3

    iput v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mDefaultBottomBorderColor:I

    .line 71
    new-instance v3, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;-><init>(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$1;)V

    iput-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mDefaultTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;

    .line 72
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mDefaultTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;

    new-array v4, v5, [I

    const v5, -0xcc4a1b

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 74
    const/4 v3, 0x0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mBottomBorderThickness:I

    .line 75
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mDefaultBottomBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedIndicatorThickness:I

    .line 79
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 80
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 153
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, p2

    .line 154
    .local v2, "inverseRation":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 155
    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 156
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 157
    .local v0, "b":F
    float-to-int v4, v3

    float-to-int v5, v1

    float-to-int v6, v0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method private static setColorAlpha(IB)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "alpha"    # B

    .prologue
    .line 143
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getHeight()I

    move-result v8

    .line 103
    .local v8, "height":I
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildCount()I

    move-result v6

    .line 104
    .local v6, "childCount":I
    iget-object v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mCustomTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;

    if-eqz v0, :cond_3

    iget-object v14, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mCustomTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;

    .line 109
    .local v14, "tabColorizer":Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;
    :goto_0
    if-lez v6, :cond_2

    .line 110
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 111
    .local v13, "selectedTitle":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 112
    .local v9, "left":I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v12

    .line 113
    .local v12, "right":I
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedPosition:I

    invoke-interface {v14, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v7

    .line 115
    .local v7, "color":I
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 116
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v14, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v10

    .line 117
    .local v10, "nextColor":I
    if-eq v7, v10, :cond_0

    .line 118
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    invoke-static {v10, v7, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->blendColors(IIF)I

    move-result v7

    .line 122
    :cond_0
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 123
    .local v11, "nextTitle":Landroid/view/View;
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v1, v2

    int-to-float v2, v9

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 125
    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v1, v2

    int-to-float v2, v12

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v12, v0

    .line 129
    .end local v10    # "nextColor":I
    .end local v11    # "nextTitle":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    int-to-float v1, v9

    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedIndicatorThickness:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v12

    int-to-float v4, v8

    iget-object v5, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    .end local v7    # "color":I
    .end local v9    # "left":I
    .end local v12    # "right":I
    .end local v13    # "selectedTitle":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    iget v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mBottomBorderThickness:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    return-void

    .line 104
    .end local v14    # "tabColorizer":Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;
    :cond_3
    iget-object v14, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mDefaultTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;

    goto/16 :goto_0
.end method

.method onViewPagerPageChanged(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectedPosition:I

    .line 96
    iput p2, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mSelectionOffset:F

    .line 97
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->invalidate()V

    .line 98
    return-void
.end method

.method setCustomTabColorizer(Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;)V
    .locals 0
    .param p1, "customTabColorizer"    # Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mCustomTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;

    .line 84
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->invalidate()V

    .line 85
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mCustomTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabLayout$TabColorizer;

    .line 90
    iget-object v0, p0, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->mDefaultTabColorizer:Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 91
    invoke-virtual {p0}, Lcom/payu/payuui/Widget/SwipeTab/SlidingTabStrip;->invalidate()V

    .line 92
    return-void
.end method
