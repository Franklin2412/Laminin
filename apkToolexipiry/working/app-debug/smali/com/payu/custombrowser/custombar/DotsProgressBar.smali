.class public Lcom/payu/custombrowser/custombar/DotsProgressBar;
.super Landroid/view/View;
.source "DotsProgressBar.java"


# instance fields
.field private heightSize:I

.field private isDotProgressStopped:Z

.field private mDotCount:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mOuterRadius:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintFill:Landroid/graphics/Paint;

.field private mRadius:F

.field private final mRunnable:Ljava/lang/Runnable;

.field private final margin:I

.field private step:I

.field private widthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaintFill:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->margin:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    .line 51
    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I

    .line 52
    new-instance v0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;-><init>(Lcom/payu/custombrowser/custombar/DotsProgressBar;)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaintFill:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->margin:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    .line 51
    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I

    .line 52
    new-instance v0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;-><init>(Lcom/payu/custombrowser/custombar/DotsProgressBar;)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaintFill:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->margin:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    .line 51
    iput v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I

    .line 52
    new-instance v0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;-><init>(Lcom/payu/custombrowser/custombar/DotsProgressBar;)V

    iput-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    .line 86
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I

    return v0
.end method

.method static synthetic access$102(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I

    return p1
.end method

.method static synthetic access$200(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->isDotProgressStopped:Z

    return v0
.end method

.method static synthetic access$400(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$dimen;->cb_circle_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$dimen;->cb_circle_indicator_outer_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mOuterRadius:F

    .line 93
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$color;->cb_payu_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->start()V

    .line 100
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 142
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->widthSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    int-to-float v4, v4

    iget v5, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float v0, v3, v6

    .line 144
    .local v0, "dX":F
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->heightSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 145
    .local v1, "dY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    if-ge v2, v3, :cond_1

    .line 146
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    if-ne v2, v3, :cond_0

    .line 147
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mOuterRadius:F

    iget-object v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    :goto_1
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    mul-float/2addr v3, v6

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iget v3, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    iget-object v4, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 154
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 135
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mOuterRadius:F

    iget v2, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->widthSize:I

    .line 136
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRadius:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->heightSize:I

    .line 137
    iget v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->widthSize:I

    iget v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->heightSize:I

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->setMeasuredDimension(II)V

    .line 138
    return-void
.end method

.method public setDotsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I

    .line 110
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->isDotProgressStopped:Z

    .line 118
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->isDotProgressStopped:Z

    .line 128
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    return-void
.end method
