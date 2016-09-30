.class public abstract Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/SortedIterable;
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableSortedSetFauxverideShim",
        "<TE;>;",
        "Lcom/squareup/haha/guava/collect/SortedIterable",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_SET:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient descendingSet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/squareup/haha/guava/collect/Ordering;->natural()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 100
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;

    sget-object v1, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 586
    return-void
.end method

.method static emptySet(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    sget-object v0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;-><init>(Lcom/squareup/haha/guava/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public abstract descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 780
    .local v0, "result":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->createDescendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 782
    .restart local v0    # "result":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    iput-object p0, v0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 784
    :cond_0
    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    .line 2616
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method abstract headSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 728
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static {p3}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(Z)V

    .line 656
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 92
    .line 2643
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method abstract subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final tailSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    .line 1672
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/ImmutableSortedSet<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method abstract tailSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method
