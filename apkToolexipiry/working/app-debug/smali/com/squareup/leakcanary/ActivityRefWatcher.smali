.class public final Lcom/squareup/leakcanary/ActivityRefWatcher;
.super Ljava/lang/Object;
.source "ActivityRefWatcher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private final lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final refWatcher:Lcom/squareup/leakcanary/RefWatcher;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/squareup/leakcanary/RefWatcher;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "refWatcher"    # Lcom/squareup/leakcanary/RefWatcher;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/squareup/leakcanary/ActivityRefWatcher$1;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/ActivityRefWatcher$1;-><init>(Lcom/squareup/leakcanary/ActivityRefWatcher;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 71
    const-string v0, "application"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->application:Landroid/app/Application;

    .line 72
    const-string v0, "refWatcher"

    invoke-static {p2, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/RefWatcher;

    iput-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 73
    return-void
.end method

.method public static installOnIcsPlus(Landroid/app/Application;Lcom/squareup/leakcanary/RefWatcher;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "refWatcher"    # Lcom/squareup/leakcanary/RefWatcher;

    .prologue
    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/squareup/leakcanary/ActivityRefWatcher;

    invoke-direct {v0, p0, p1}, Lcom/squareup/leakcanary/ActivityRefWatcher;-><init>(Landroid/app/Application;Lcom/squareup/leakcanary/RefWatcher;)V

    .line 35
    .local v0, "activityRefWatcher":Lcom/squareup/leakcanary/ActivityRefWatcher;
    invoke-virtual {v0}, Lcom/squareup/leakcanary/ActivityRefWatcher;->watchActivities()V

    goto :goto_0
.end method


# virtual methods
.method onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public stopWatchingActivities()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 87
    return-void
.end method

.method public watchActivities()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/squareup/leakcanary/ActivityRefWatcher;->stopWatchingActivities()V

    .line 82
    iget-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/squareup/leakcanary/ActivityRefWatcher;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 83
    return-void
.end method
