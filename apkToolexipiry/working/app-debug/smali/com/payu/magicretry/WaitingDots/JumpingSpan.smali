.class public Lcom/payu/magicretry/WaitingDots/JumpingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "JumpingSpan.java"


# instance fields
.field private translationX:F

.field private translationY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 14
    iput v0, p0, Lcom/payu/magicretry/WaitingDots/JumpingSpan;->translationX:F

    .line 15
    iput v0, p0, Lcom/payu/magicretry/WaitingDots/JumpingSpan;->translationY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 24
    iget v0, p0, Lcom/payu/magicretry/WaitingDots/JumpingSpan;->translationX:F

    add-float v4, p5, v0

    int-to-float v0, p7

    iget v1, p0, Lcom/payu/magicretry/WaitingDots/JumpingSpan;->translationY:F

    add-float v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 25
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 19
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setTranslationX(F)V
    .locals 0
    .param p1, "translationX"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/payu/magicretry/WaitingDots/JumpingSpan;->translationX:F

    .line 29
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/payu/magicretry/WaitingDots/JumpingSpan;->translationY:F

    .line 33
    return-void
.end method
