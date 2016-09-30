.class public final Lcom/squareup/haha/guava/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/Maps$DescendingMap;,
        Lcom/squareup/haha/guava/collect/Maps$EntrySet;,
        Lcom/squareup/haha/guava/collect/Maps$Values;,
        Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;,
        Lcom/squareup/haha/guava/collect/Maps$SortedKeySet;,
        Lcom/squareup/haha/guava/collect/Maps$KeySet;,
        Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;,
        Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;,
        Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;,
        Lcom/squareup/haha/guava/collect/Maps$EntryFunction;
    }
.end annotation


# static fields
.field private static STANDARD_JOINER:Lcom/squareup/haha/guava/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3453
    sget-object v0, Lcom/squareup/haha/guava/collect/Collections2;->STANDARD_JOINER$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;->withKeyValueSeparator(Ljava/lang/String;)Lcom/squareup/haha/guava/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/squareup/haha/guava/collect/Maps;->STANDARD_JOINER:Lcom/squareup/haha/guava/base/Joiner$MapJoiner;

    return-void
.end method

.method public static capacity(I)I
    .locals 1
    .param p0, "expectedSize"    # I

    .prologue
    .line 204
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 205
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 206
    add-int/lit8 v0, p0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 211
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3444
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_0

    .line 3445
    const/4 v1, 0x1

    .line 3450
    :goto_0
    return v1

    .line 3446
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 3447
    check-cast v0, Ljava/util/Map;

    .line 3448
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 3450
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    .line 4104
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->KEY:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    .line 113
    invoke-static {p0, v0}, Lcom/squareup/haha/guava/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/squareup/haha/guava/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3518
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    .line 3361
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3363
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3367
    :goto_0
    return v0

    .line 3365
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3367
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v0, 0x0

    .line 3346
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3352
    :goto_0
    return-object v0

    .line 3350
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3352
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v0, 0x0

    .line 3376
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3378
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3382
    :goto_0
    return-object v0

    .line 3380
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3382
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3460
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/squareup/haha/guava/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3462
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/squareup/haha/guava/collect/Maps;->STANDARD_JOINER:Lcom/squareup/haha/guava/base/Joiner$MapJoiner;

    .line 5322
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 5380
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    .line 3463
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static valueIterator(Lcom/squareup/haha/guava/collect/UnmodifiableIterator;)Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "entryIterator":Lcom/squareup/haha/guava/collect/UnmodifiableIterator;, "Lcom/squareup/haha/guava/collect/UnmodifiableIterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$1;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$1;-><init>(Lcom/squareup/haha/guava/collect/UnmodifiableIterator;)V

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .line 4109
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->VALUE:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    .line 117
    invoke-static {p0, v0}, Lcom/squareup/haha/guava/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/squareup/haha/guava/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static valuePredicateOnEntries(Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TV;>;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2087
    .line 5109
    .local p0, "valuePredicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<-TV;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->VALUE:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    .line 2087
    invoke-static {p0, v0}, Lcom/squareup/haha/guava/base/Predicates;->compose(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Function;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v0

    return-object v0
.end method
