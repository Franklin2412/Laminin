.class public Lcom/payu/india/Payu/Payu;
.super Ljava/lang/Object;
.source "Payu.java"


# static fields
.field private static mInstance:Lcom/payu/india/Payu/Payu;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/payu/india/Payu/Payu;->mInstance:Lcom/payu/india/Payu/Payu;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/india/Payu/Payu;->mContext:Landroid/content/Context;

    .line 14
    iput-object p1, p0, Lcom/payu/india/Payu/Payu;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/payu/india/Payu/Payu;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/payu/india/Payu/Payu;->mInstance:Lcom/payu/india/Payu/Payu;

    return-object v0
.end method

.method public static setInstance(Landroid/content/Context;)Lcom/payu/india/Payu/Payu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/payu/india/Payu/Payu;->mInstance:Lcom/payu/india/Payu/Payu;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/payu/india/Payu/Payu;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/payu/india/Payu/Payu;->mInstance:Lcom/payu/india/Payu/Payu;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/payu/india/Payu/Payu;

    invoke-direct {v0, p0}, Lcom/payu/india/Payu/Payu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/payu/india/Payu/Payu;->mInstance:Lcom/payu/india/Payu/Payu;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/payu/india/Payu/Payu;->mInstance:Lcom/payu/india/Payu/Payu;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCallingAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/payu/india/Payu/Payu;->mContext:Landroid/content/Context;

    return-object v0
.end method
