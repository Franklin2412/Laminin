.class public Lcom/payu/india/CallBackHandler/OnetapCallback;
.super Ljava/lang/Object;
.source "OnetapCallback.java"


# static fields
.field private static oneTapListener:Lcom/payu/india/Interfaces/OneClickPaymentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOneTapCallback()Lcom/payu/india/Interfaces/OneClickPaymentListener;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/payu/india/CallBackHandler/OnetapCallback;->oneTapListener:Lcom/payu/india/Interfaces/OneClickPaymentListener;

    return-object v0
.end method

.method public static setOneTapCallback(Lcom/payu/india/Interfaces/OneClickPaymentListener;)V
    .locals 0
    .param p0, "oneTapListener"    # Lcom/payu/india/Interfaces/OneClickPaymentListener;

    .prologue
    .line 18
    sput-object p0, Lcom/payu/india/CallBackHandler/OnetapCallback;->oneTapListener:Lcom/payu/india/Interfaces/OneClickPaymentListener;

    .line 19
    return-void
.end method
