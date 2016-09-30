.class public final Lcom/squareup/leakcanary/AndroidDebuggerControl;
.super Ljava/lang/Object;
.source "AndroidDebuggerControl.java"

# interfaces
.implements Lcom/squareup/leakcanary/DebuggerControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebuggerAttached()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method
