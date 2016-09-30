.class public final Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;
.super Ljava/lang/Object;
.source "DefaultLeakDirectoryProvider.java"

# interfaces
.implements Lcom/squareup/leakcanary/LeakDirectoryProvider;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private hasStoragePermission()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isLeakStorageWritable()Z
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->hasStoragePermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public leakDirectory()Ljava/io/File;
    .locals 6

    .prologue
    .line 41
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "downloadsDirectory":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leakcanary-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 44
    .local v2, "success":Z
    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create leak directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    return-object v0
.end method

.method public requestWritePermission()V
    .locals 8

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->hasStoragePermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 56
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    sget v5, Lcom/squareup/leakcanary/R$string;->leak_canary_permission_notification_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "contentTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "packageName":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    sget v5, Lcom/squareup/leakcanary/R$string;->leak_canary_permission_notification_text:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "contentText":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-static {v4, v1, v0, v3}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
