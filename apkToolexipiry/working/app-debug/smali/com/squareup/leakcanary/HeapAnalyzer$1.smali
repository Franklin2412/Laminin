.class Lcom/squareup/leakcanary/HeapAnalyzer$1;
.super Ljava/lang/Object;
.source "HeapAnalyzer.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectProcedure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/HeapAnalyzer;->deduplicateGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/trove/TObjectProcedure",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/HeapAnalyzer;

.field final synthetic val$gcRoots:Ljava/util/List;

.field final synthetic val$uniqueRootMap:Lcom/squareup/haha/trove/THashMap;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/HeapAnalyzer;Ljava/util/List;Lcom/squareup/haha/trove/THashMap;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/squareup/leakcanary/HeapAnalyzer$1;->this$0:Lcom/squareup/leakcanary/HeapAnalyzer;

    iput-object p2, p0, Lcom/squareup/leakcanary/HeapAnalyzer$1;->val$gcRoots:Ljava/util/List;

    iput-object p3, p0, Lcom/squareup/leakcanary/HeapAnalyzer$1;->val$uniqueRootMap:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/HeapAnalyzer$1;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/squareup/leakcanary/HeapAnalyzer$1;->val$gcRoots:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/leakcanary/HeapAnalyzer$1;->val$uniqueRootMap:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v1, p1}, Lcom/squareup/haha/trove/THashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
