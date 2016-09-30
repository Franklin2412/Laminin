.class public Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;
.super Landroid/app/Activity;
.source "RequestStoragePermissionActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 36
    const-class v1, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;

    invoke-static {p0, v1, v2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabledBlocking(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const/high16 v1, 0x8000000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onResume()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 53
    .local v0, "permissions":[Ljava/lang/String;
    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
