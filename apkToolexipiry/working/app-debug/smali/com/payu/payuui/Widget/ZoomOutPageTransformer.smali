.class public Lcom/payu/payuui/Widget/ZoomOutPageTransformer;
.super Ljava/lang/Object;
.source "ZoomOutPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final MIN_ALPHA:F = 0.5f

.field private static final MIN_SCALE:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 16
    .local v2, "pageWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 18
    .local v1, "pageHeight":I
    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 20
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 46
    :goto_0
    return-void

    .line 22
    :cond_0
    cmpg-float v5, p2, v8

    if-gtz v5, :cond_2

    .line 24
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v8, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 25
    .local v3, "scaleFactor":F
    int-to-float v5, v1

    sub-float v6, v8, v3

    mul-float/2addr v5, v6

    div-float v4, v5, v9

    .line 26
    .local v4, "vertMargin":F
    int-to-float v5, v2

    sub-float v6, v8, v3

    mul-float/2addr v5, v6

    div-float v0, v5, v9

    .line 27
    .local v0, "horzMargin":F
    cmpg-float v5, p2, v7

    if-gez v5, :cond_1

    .line 28
    div-float v5, v4, v9

    sub-float v5, v0, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 34
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 38
    sub-float v5, v3, v7

    div-float/2addr v5, v8

    mul-float/2addr v5, v10

    add-float/2addr v5, v10

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 30
    :cond_1
    neg-float v5, v0

    div-float v6, v4, v9

    add-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 44
    .end local v0    # "horzMargin":F
    .end local v3    # "scaleFactor":F
    .end local v4    # "vertMargin":F
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
