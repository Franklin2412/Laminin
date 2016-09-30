.class public Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;
.super Landroid/os/Binder;
.source "SnoozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/services/SnoozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnoozeBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnoozeService()Lcom/payu/custombrowser/services/SnoozeService;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    return-object v0
.end method
