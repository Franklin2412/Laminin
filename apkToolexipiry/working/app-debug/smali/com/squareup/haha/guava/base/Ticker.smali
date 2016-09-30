.class public abstract Lcom/squareup/haha/guava/base/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/squareup/haha/guava/base/Ticker$1;

    invoke-direct {v0}, Lcom/squareup/haha/guava/base/Ticker$1;-><init>()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract read()J
.end method
