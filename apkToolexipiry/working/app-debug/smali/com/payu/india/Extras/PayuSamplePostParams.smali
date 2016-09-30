.class public Lcom/payu/india/Extras/PayuSamplePostParams;
.super Ljava/lang/Object;
.source "PayuSamplePostParams.java"


# instance fields
.field private cashCardPayment:Ljava/lang/String;

.field private creditCardPayment:Ljava/lang/String;

.field private debitCardPayment:Ljava/lang/String;

.field private emiPayment:Ljava/lang/String;

.field private payumoneyPayment:Ljava/lang/String;

.field private storedCardPayment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/india/Extras/PayuSamplePostParams;->creditCardPayment:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/india/Extras/PayuSamplePostParams;->debitCardPayment:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/india/Extras/PayuSamplePostParams;->cashCardPayment:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/india/Extras/PayuSamplePostParams;->emiPayment:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/india/Extras/PayuSamplePostParams;->payumoneyPayment:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/india/Extras/PayuSamplePostParams;->storedCardPayment:Ljava/lang/String;

    return-void
.end method
