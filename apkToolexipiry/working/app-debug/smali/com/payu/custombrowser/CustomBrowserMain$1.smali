.class Lcom/payu/custombrowser/CustomBrowserMain$1;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain;->showTransparentView(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CustomBrowserMain;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CustomBrowserMain;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$1;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iput-object p2, p0, Lcom/payu/custombrowser/CustomBrowserMain$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method
