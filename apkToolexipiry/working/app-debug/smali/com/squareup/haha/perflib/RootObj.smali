.class public Lcom/squareup/haha/perflib/RootObj;
.super Lcom/squareup/haha/perflib/Instance;
.source "RootObj.java"


# static fields
.field public static final UNDEFINED_CLASS_NAME:Ljava/lang/String; = "no class defined!!"


# instance fields
.field mIndex:I

.field mThread:I

.field mType:Lcom/squareup/haha/perflib/RootType;


# direct methods
.method public constructor <init>(Lcom/squareup/haha/perflib/RootType;)V
    .locals 6
    .param p1, "type"    # Lcom/squareup/haha/perflib/RootType;

    .prologue
    .line 32
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/squareup/haha/perflib/RootType;J)V
    .locals 6
    .param p1, "type"    # Lcom/squareup/haha/perflib/RootType;
    .param p2, "id"    # J

    .prologue
    .line 36
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V
    .locals 2
    .param p1, "type"    # Lcom/squareup/haha/perflib/RootType;
    .param p2, "id"    # J
    .param p4, "thread"    # I
    .param p5, "stack"    # Lcom/squareup/haha/perflib/StackTrace;

    .prologue
    .line 40
    invoke-direct {p0, p2, p3, p5}, Lcom/squareup/haha/perflib/Instance;-><init>(JLcom/squareup/haha/perflib/StackTrace;)V

    .line 25
    sget-object v0, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    iput-object v0, p0, Lcom/squareup/haha/perflib/RootObj;->mType:Lcom/squareup/haha/perflib/RootType;

    .line 41
    iput-object p1, p0, Lcom/squareup/haha/perflib/RootObj;->mType:Lcom/squareup/haha/perflib/RootType;

    .line 42
    iput p4, p0, Lcom/squareup/haha/perflib/RootObj;->mThread:I

    .line 43
    return-void
.end method


# virtual methods
.method public final accept(Lcom/squareup/haha/perflib/Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/squareup/haha/perflib/Visitor;

    .prologue
    .line 63
    invoke-interface {p1, p0}, Lcom/squareup/haha/perflib/Visitor;->visitRootObj(Lcom/squareup/haha/perflib/RootObj;)V

    .line 64
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/RootObj;->getReferredInstance()Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    .line 65
    .local v0, "instance":Lcom/squareup/haha/perflib/Instance;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/squareup/haha/perflib/Visitor;->visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final getClassName(Lcom/squareup/haha/perflib/Snapshot;)Ljava/lang/String;
    .locals 4
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/squareup/haha/perflib/RootObj;->mType:Lcom/squareup/haha/perflib/RootType;

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    if-ne v1, v2, :cond_0

    .line 49
    iget-wide v2, p0, Lcom/squareup/haha/perflib/RootObj;->mId:J

    invoke-virtual {p1, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findClass(J)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 54
    .local v0, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :goto_0
    if-nez v0, :cond_1

    .line 55
    const-string v1, "no class defined!!"

    .line 58
    :goto_1
    return-object v1

    .line 51
    .end local v0    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_0
    iget-wide v2, p0, Lcom/squareup/haha/perflib/RootObj;->mId:J

    invoke-virtual {p1, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .restart local v0    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getReferredInstance()Lcom/squareup/haha/perflib/Instance;
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/squareup/haha/perflib/RootObj;->mType:Lcom/squareup/haha/perflib/RootType;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/squareup/haha/perflib/RootObj;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget-wide v2, p0, Lcom/squareup/haha/perflib/RootObj;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findClass(J)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/perflib/RootObj;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget-wide v2, p0, Lcom/squareup/haha/perflib/RootObj;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    goto :goto_0
.end method

.method public getRootType()Lcom/squareup/haha/perflib/RootType;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/squareup/haha/perflib/RootObj;->mType:Lcom/squareup/haha/perflib/RootType;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    const-string v0, "%s@0x%08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/squareup/haha/perflib/RootObj;->mType:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/squareup/haha/perflib/RootObj;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
