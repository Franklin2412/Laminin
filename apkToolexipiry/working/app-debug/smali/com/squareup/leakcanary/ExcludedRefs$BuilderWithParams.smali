.class public final Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
.super Ljava/lang/Object;
.source "ExcludedRefs.java"

# interfaces
.implements Lcom/squareup/leakcanary/ExcludedRefs$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/ExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderWithParams"
.end annotation


# instance fields
.field private final classNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

.field private final rootClassNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->fieldNameByClassName:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->staticFieldNameByClassName:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->threadNames:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->classNames:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->rootClassNames:Ljava/util/Map;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->fieldNameByClassName:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->staticFieldNameByClassName:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->threadNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->classNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->rootClassNames:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public alwaysExclude()Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;->alwaysExclude:Z

    .line 202
    return-object p0
.end method

.method public build()Lcom/squareup/leakcanary/ExcludedRefs;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/ExcludedRefs;-><init>(Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;)V

    return-object v0
.end method

.method public clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "className"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "any subclass of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    .line 178
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->classNames:Ljava/util/Map;

    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-object p0
.end method

.method public instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->fieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 145
    .local v0, "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;>;"
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    .restart local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->fieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    new-instance v1, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    .line 150
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object p0
.end method

.method public named(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    iput-object p1, v0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;->name:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public reason(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    iput-object p1, v0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;->reason:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public rootClass(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 3
    .param p1, "rootClassName"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "rootClassName"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "any GC root subclass of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    .line 186
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->rootClassNames:Ljava/util/Map;

    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object p0
.end method

.method public staticField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 158
    .local v0, "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;>;"
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    .restart local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    new-instance v1, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    .line 163
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-object p0
.end method

.method public thread(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;
    .locals 3
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "threadName"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "any threads named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    .line 170
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->threadNames:Ljava/util/Map;

    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$BuilderWithParams;->lastParams:Lcom/squareup/leakcanary/ExcludedRefs$ParamsBuilder;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object p0
.end method
