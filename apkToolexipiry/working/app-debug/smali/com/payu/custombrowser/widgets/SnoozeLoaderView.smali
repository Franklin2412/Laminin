.class public Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
.super Landroid/view/View;
.source "SnoozeLoaderView.java"


# instance fields
.field private activeBarPaint:Landroid/graphics/Paint;

.field private blinkPosition:I

.field private firstBar:Landroid/graphics/Rect;

.field private firstBarPaint:Landroid/graphics/Paint;

.field private inActiveBarPaint:Landroid/graphics/Paint;

.field private mActiveColor:I

.field mActivity:Landroid/app/Activity;

.field private mAnimationSpeed:I

.field private mBarHeight:I

.field private mBarHeightRatio:I

.field private mBarSpace:I

.field private mBarWidth:I

.field private mInActiveColor:I

.field private secondBar:Landroid/graphics/Rect;

.field private secondBarPaint:Landroid/graphics/Paint;

.field private shouldStartAnimation:Z

.field private thirdBar:Landroid/graphics/Rect;

.field private thirdBarPaint:Landroid/graphics/Paint;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    const/16 v0, 0x28

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    .line 48
    const/16 v0, 0x78

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    .line 50
    const/16 v0, 0x46

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    .line 52
    iget v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    .line 54
    iput-boolean v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 56
    const-string v0, "#00adf2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    .line 58
    const-string v0, "#b0eafc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mAnimationSpeed:I

    .line 62
    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I

    .line 67
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActivity:Landroid/app/Activity;

    .line 68
    invoke-direct {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v1, 0x28

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    .line 48
    const/16 v1, 0x78

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    .line 50
    const/16 v1, 0x46

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    .line 52
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    .line 54
    iput-boolean v3, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 56
    const-string v1, "#00adf2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    .line 58
    const-string v1, "#b0eafc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    .line 60
    const/16 v1, 0xc8

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mAnimationSpeed:I

    .line 62
    iput v3, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I

    move-object v1, p1

    .line 74
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActivity:Landroid/app/Activity;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "snoozeLoaderArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_startAnimate:I

    iget-boolean v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 80
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_activeBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    .line 81
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_inActiveBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    .line 82
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barWidth:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    .line 83
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barHeight:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    .line 84
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    .line 85
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barSpace:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    .line 86
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_animationSpeed:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mAnimationSpeed:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mAnimationSpeed:I

    .line 87
    invoke-direct {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void

    .line 89
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/16 v1, 0x28

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    .line 48
    const/16 v1, 0x78

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    .line 50
    const/16 v1, 0x46

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    .line 52
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    .line 54
    iput-boolean v3, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 56
    const-string v1, "#00adf2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    .line 58
    const-string v1, "#b0eafc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    .line 60
    const/16 v1, 0xc8

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mAnimationSpeed:I

    .line 62
    iput v3, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I

    move-object v1, p1

    .line 97
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActivity:Landroid/app/Activity;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "snoozeLoaderArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_startAnimate:I

    iget-boolean v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 103
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_activeBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    .line 104
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_inActiveBarColor:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    .line 105
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barWidth:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    .line 106
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barHeight:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    .line 107
    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    .line 108
    sget v1, Lcom/payu/custombrowser/R$styleable;->SnoozeLoaderView_barSpace:I

    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    .line 109
    invoke-direct {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .prologue
    .line 21
    iget v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mInActiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    .line 183
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 255
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 257
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 259
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 273
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 264
    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 265
    .local v1, "totalWidth":I
    iget v2, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    iget v3, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 266
    .local v0, "totalHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setMeasuredDimension(II)V

    .line 267
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 17
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 187
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 190
    div-int/lit8 v1, p1, 0x2

    .line 191
    .local v1, "centerX":I
    div-int/lit8 v2, p2, 0x2

    .line 196
    .local v2, "centerY":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    div-int/lit8 v15, v15, 0x2

    sub-int v8, v1, v15

    .line 197
    .local v8, "secondBarLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v15, v15, 0x2

    sub-int v10, v2, v15

    .line 198
    .local v10, "secondBarTop":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    add-int v9, v8, v15

    .line 199
    .local v9, "secondBarRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    add-int v7, v10, v15

    .line 202
    .local v7, "secondBarBottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    sub-int v15, v1, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    sub-int v4, v15, v16

    .line 203
    .local v4, "firstBarLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v15, v15, 0x2

    sub-int v15, v2, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 204
    .local v6, "firstBarTop":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    add-int v5, v4, v15

    .line 205
    .local v5, "firstBarRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    move/from16 v16, v0

    add-int v3, v15, v16

    .line 208
    .local v3, "firstBarBottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarSpace:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 209
    .local v12, "thirdBarLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    div-int/lit8 v15, v15, 0x2

    sub-int v15, v2, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    move/from16 v16, v0

    add-int v14, v15, v16

    .line 210
    .local v14, "thirdBarTop":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarWidth:I

    add-int v13, v12, v15

    .line 211
    .local v13, "thirdBarRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeight:I

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mBarHeightRatio:I

    move/from16 v16, v0

    sub-int v11, v15, v16

    .line 213
    .local v11, "thirdBarBottom":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v8, v10, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBar:Landroid/graphics/Rect;

    .line 214
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v4, v6, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBar:Landroid/graphics/Rect;

    .line 215
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v12, v14, v13, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBar:Landroid/graphics/Rect;

    .line 218
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    if-eqz v15, :cond_0

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->startAnimation()V

    .line 221
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 6

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z

    .line 230
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->timer:Ljava/util/Timer;

    .line 231
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;-><init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mAnimationSpeed:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 246
    return-void
.end method

.method public updateBar(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 154
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$1;-><init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    .line 141
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->inActiveBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->firstBarPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->secondBarPaint:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->activeBarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->thirdBarPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
