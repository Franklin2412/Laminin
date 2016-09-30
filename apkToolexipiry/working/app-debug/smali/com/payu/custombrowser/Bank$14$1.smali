.class Lcom/payu/custombrowser/Bank$14$1;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/Bank$14;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/Bank$14;

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$14$1;->this$1:Lcom/payu/custombrowser/Bank$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$14$1;->this$1:Lcom/payu/custombrowser/Bank$14;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$14;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onPageFinished()V

    .line 1329
    return-void
.end method
