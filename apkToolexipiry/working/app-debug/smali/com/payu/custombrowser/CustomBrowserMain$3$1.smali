.class Lcom/payu/custombrowser/CustomBrowserMain$3$1;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/CustomBrowserMain$3;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget v1, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->i:I

    .line 553
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->i:I

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v1, v1, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$drawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    const/4 v1, 0x0

    iput v1, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->i:I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 557
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 558
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 559
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget-object v1, v1, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$3$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$3;

    iget v2, v2, Lcom/payu/custombrowser/CustomBrowserMain$3;->i:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    :cond_1
    return-void
.end method
