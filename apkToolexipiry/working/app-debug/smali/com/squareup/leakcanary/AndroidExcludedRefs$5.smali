.class final enum Lcom/squareup/leakcanary/AndroidExcludedRefs$5;
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
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p3, "x0"    # Z

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZLcom/squareup/leakcanary/AndroidExcludedRefs$1;)V

    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 3
    .param p1, "excluded"    # Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .prologue
    .line 116
    const-string v0, "Prior to ART, a thread waiting on a blocking queue will leak the last dequeued object as a stack local reference. So when a HandlerThread becomes idle, it keeps a local reference to the last message it received. That message then gets recycled and can be used again. As long as all messages are recycled after beingused, this won\'t be a problem, because these references are cleared when beingrecycled. However, dialogs create template Message instances to be copied when amessage needs to be sent. These Message templates holds references to the dialoglisteners, which most likely leads to holding a reference onto the activity in someway. Dialogs never recycle their template Message, assuming these Message instances will get GCed when the dialog is GCed. The combination of these two things creates a high potential for memory leaks as soon as you use dialogs. These memory leaks might be temporary, but some handler threads sleep for a long time. To fix this, you could post empty messages to the idle handler threads from time to time. This won\'t be easy because you cannot access all handler threads, but a librarythat is widely used should consider doing this for its own handler threads."

    .line 132
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "android.os.Message"

    const-string v2, "obj"

    invoke-interface {p1, v1, v2}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->reason(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 133
    const-string v1, "android.os.Message"

    const-string v2, "next"

    invoke-interface {p1, v1, v2}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->reason(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 134
    const-string v1, "android.os.Message"

    const-string v2, "target"

    invoke-interface {p1, v1, v2}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->reason(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .line 135
    return-void
.end method
