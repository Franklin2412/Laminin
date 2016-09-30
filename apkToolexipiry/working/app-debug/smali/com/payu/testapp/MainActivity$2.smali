.class Lcom/payu/testapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/testapp/MainActivity;->addView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/testapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/payu/testapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/payu/testapp/MainActivity$2;->this$0:Lcom/payu/testapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/payu/testapp/MainActivity$2;->this$0:Lcom/payu/testapp/MainActivity;

    # getter for: Lcom/payu/testapp/MainActivity;->mainScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/payu/testapp/MainActivity;->access$000(Lcom/payu/testapp/MainActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 257
    return-void
.end method
