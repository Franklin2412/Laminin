.class final Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;
.super Lcom/squareup/haha/guava/collect/Maps$Values;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private predicate:Lcom/squareup/haha/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private unfiltered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/squareup/haha/guava/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2619
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "filteredMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "predicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 2620
    iput-object p2, p0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->unfiltered:Ljava/util/Map;

    .line 2621
    iput-object p3, p0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    .line 2622
    return-void
.end method

.method private removeIf(Lcom/squareup/haha/guava/base/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2631
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<-TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-static {p1}, Lcom/squareup/haha/guava/collect/Maps;->valuePredicateOnEntries(Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/haha/guava/base/Predicates;->and(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v1

    .line 4176
    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 4177
    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;->removeIfFromRandomAccessList(Ljava/util/List;Lcom/squareup/haha/guava/base/Predicate;)Z

    move-result v0

    :goto_0
    return v0

    .line 4180
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/squareup/haha/guava/base/Predicate;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2625
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-static {p1}, Lcom/squareup/haha/guava/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/haha/guava/collect/Maps;->valuePredicateOnEntries(Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/haha/guava/base/Predicates;->and(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v1

    .line 3238
    invoke-static {v1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3239
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3240
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3242
    invoke-interface {v1, v0}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3243
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2625
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2625
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2636
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Predicates;->in(Ljava/util/Collection;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->removeIf(Lcom/squareup/haha/guava/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2640
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Predicates;->in(Ljava/util/Collection;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Predicates;->not(Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->removeIf(Lcom/squareup/haha/guava/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2645
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2649
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;, "Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
