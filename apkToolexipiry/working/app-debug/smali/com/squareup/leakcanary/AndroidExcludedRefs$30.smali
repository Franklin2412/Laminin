.class final enum Lcom/squareup/leakcanary/AndroidExcludedRefs$30;
.super Lcom/squareup/leakcanary/AndroidExcludedRefs;
.source "AndroidExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/AndroidExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;ILcom/squareup/leakcanary/AndroidExcludedRefs$1;)V

    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 1
    .param p1, "excluded"    # Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .prologue
    .line 405
    const-class v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->alwaysExclude()Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 406
    const-class v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->alwaysExclude()Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 407
    const-class v0, Ljava/lang/ref/PhantomReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->alwaysExclude()Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 408
    const-string v0, "java.lang.ref.Finalizer"

    invoke-interface {p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->alwaysExclude()Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 409
    const-string v0, "java.lang.ref.FinalizerReference"

    invoke-interface {p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->alwaysExclude()Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 410
    return-void
.end method