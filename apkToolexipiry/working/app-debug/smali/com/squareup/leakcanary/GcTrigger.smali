.class public interface abstract Lcom/squareup/leakcanary/GcTrigger;
.super Ljava/lang/Object;
.source "GcTrigger.java"


# static fields
.field public static final DEFAULT:Lcom/squareup/leakcanary/GcTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/squareup/leakcanary/GcTrigger$1;

    invoke-direct {v0}, Lcom/squareup/leakcanary/GcTrigger$1;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/GcTrigger;->DEFAULT:Lcom/squareup/leakcanary/GcTrigger;

    return-void
.end method


# virtual methods
.method public abstract runGc()V
.end method
