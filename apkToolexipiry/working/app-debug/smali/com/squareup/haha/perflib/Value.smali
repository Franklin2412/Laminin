.class public Lcom/squareup/haha/perflib/Value;
.super Ljava/lang/Object;
.source "Value.java"


# instance fields
.field private final instance:Lcom/squareup/haha/perflib/Instance;

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/squareup/haha/perflib/Instance;)V
    .locals 0
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/squareup/haha/perflib/Value;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 30
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/squareup/haha/perflib/Value;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/squareup/haha/perflib/Value;->mValue:Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Lcom/squareup/haha/perflib/Instance;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/squareup/haha/perflib/Instance;

    .end local p1    # "value":Ljava/lang/Object;
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/squareup/haha/perflib/Value;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/haha/perflib/Instance;->addReference(Lcom/squareup/haha/perflib/Field;Lcom/squareup/haha/perflib/Instance;)V

    .line 42
    :cond_0
    return-void
.end method
