.class public interface abstract Lcom/payu/india/Interfaces/OneClickPaymentListener;
.super Ljava/lang/Object;
.source "OneClickPaymentListener.java"


# virtual methods
.method public abstract deleteOneClickHash(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAllOneClickHash(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOneClickHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveOneClickHash(Ljava/lang/String;Ljava/lang/String;)V
.end method
