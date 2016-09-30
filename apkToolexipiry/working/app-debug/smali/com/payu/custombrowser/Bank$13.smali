.class Lcom/payu/custombrowser/Bank$13;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->bankFound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$13;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$13;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$13;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeProgressDialog(Landroid/view/View;)V

    .line 1266
    return-void
.end method
