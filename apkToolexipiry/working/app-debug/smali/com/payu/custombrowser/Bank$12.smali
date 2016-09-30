.class Lcom/payu/custombrowser/Bank$12;
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
    .line 1248
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$12;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$12;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->calculateMaximumWebViewHeight()V

    .line 1252
    return-void
.end method
