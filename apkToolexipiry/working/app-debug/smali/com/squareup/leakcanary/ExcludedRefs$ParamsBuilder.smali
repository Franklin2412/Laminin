.class final Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;
.super Ljava/lang/Object;
.source "ExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/ExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParamsBuilder"
.end annotation


# instance fields
.field alwaysExclude:Z

.field final matching:Ljava/lang/String;

.field name:Ljava/lang/String;

.field reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "matching"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;->matching:Ljava/lang/String;

    .line 109
    return-void
.end method
