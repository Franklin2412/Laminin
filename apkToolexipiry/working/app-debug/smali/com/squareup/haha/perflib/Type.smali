.class public final enum Lcom/squareup/haha/perflib/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/perflib/Type$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/haha/perflib/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/haha/perflib/Type;

.field public static final enum BOOLEAN:Lcom/squareup/haha/perflib/Type;

.field public static final enum BYTE:Lcom/squareup/haha/perflib/Type;

.field public static final enum CHAR:Lcom/squareup/haha/perflib/Type;

.field public static final enum DOUBLE:Lcom/squareup/haha/perflib/Type;

.field public static final enum FLOAT:Lcom/squareup/haha/perflib/Type;

.field public static final enum INT:Lcom/squareup/haha/perflib/Type;

.field public static final enum LONG:Lcom/squareup/haha/perflib/Type;

.field public static final enum OBJECT:Lcom/squareup/haha/perflib/Type;

.field public static final enum SHORT:Lcom/squareup/haha/perflib/Type;

.field private static sTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/haha/perflib/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 24
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "OBJECT"

    invoke-direct {v4, v5, v12, v8, v12}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    .line 25
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "BOOLEAN"

    invoke-direct {v4, v5, v11, v9, v11}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->BOOLEAN:Lcom/squareup/haha/perflib/Type;

    .line 26
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "CHAR"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v8, v6, v8}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->CHAR:Lcom/squareup/haha/perflib/Type;

    .line 27
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "FLOAT"

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->FLOAT:Lcom/squareup/haha/perflib/Type;

    .line 28
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "DOUBLE"

    const/4 v6, 0x7

    invoke-direct {v4, v5, v9, v6, v10}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->DOUBLE:Lcom/squareup/haha/perflib/Type;

    .line 29
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "BYTE"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6, v10, v11}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->BYTE:Lcom/squareup/haha/perflib/Type;

    .line 30
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "SHORT"

    const/4 v6, 0x6

    const/16 v7, 0x9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->SHORT:Lcom/squareup/haha/perflib/Type;

    .line 31
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "INT"

    const/4 v6, 0x7

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->INT:Lcom/squareup/haha/perflib/Type;

    .line 32
    new-instance v4, Lcom/squareup/haha/perflib/Type;

    const-string v5, "LONG"

    const/16 v6, 0xb

    invoke-direct {v4, v5, v10, v6, v10}, Lcom/squareup/haha/perflib/Type;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/squareup/haha/perflib/Type;->LONG:Lcom/squareup/haha/perflib/Type;

    .line 23
    const/16 v4, 0x9

    new-array v4, v4, [Lcom/squareup/haha/perflib/Type;

    sget-object v5, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    aput-object v5, v4, v12

    sget-object v5, Lcom/squareup/haha/perflib/Type;->BOOLEAN:Lcom/squareup/haha/perflib/Type;

    aput-object v5, v4, v11

    sget-object v5, Lcom/squareup/haha/perflib/Type;->CHAR:Lcom/squareup/haha/perflib/Type;

    aput-object v5, v4, v8

    const/4 v5, 0x3

    sget-object v6, Lcom/squareup/haha/perflib/Type;->FLOAT:Lcom/squareup/haha/perflib/Type;

    aput-object v6, v4, v5

    sget-object v5, Lcom/squareup/haha/perflib/Type;->DOUBLE:Lcom/squareup/haha/perflib/Type;

    aput-object v5, v4, v9

    const/4 v5, 0x5

    sget-object v6, Lcom/squareup/haha/perflib/Type;->BYTE:Lcom/squareup/haha/perflib/Type;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/squareup/haha/perflib/Type;->SHORT:Lcom/squareup/haha/perflib/Type;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/squareup/haha/perflib/Type;->INT:Lcom/squareup/haha/perflib/Type;

    aput-object v6, v4, v5

    sget-object v5, Lcom/squareup/haha/perflib/Type;->LONG:Lcom/squareup/haha/perflib/Type;

    aput-object v5, v4, v10

    sput-object v4, Lcom/squareup/haha/perflib/Type;->$VALUES:[Lcom/squareup/haha/perflib/Type;

    .line 34
    invoke-static {}, Lcom/squareup/haha/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/squareup/haha/perflib/Type;->sTypeMap:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/squareup/haha/perflib/Type;->values()[Lcom/squareup/haha/perflib/Type;

    move-result-object v0

    .local v0, "arr$":[Lcom/squareup/haha/perflib/Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 42
    .local v3, "type":Lcom/squareup/haha/perflib/Type;
    sget-object v4, Lcom/squareup/haha/perflib/Type;->sTypeMap:Ljava/util/Map;

    iget v5, v3, Lcom/squareup/haha/perflib/Type;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v3    # "type":Lcom/squareup/haha/perflib/Type;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/squareup/haha/perflib/Type;->mId:I

    .line 48
    iput p4, p0, Lcom/squareup/haha/perflib/Type;->mSize:I

    .line 49
    return-void
.end method

.method public static getClassNameOfPrimitiveArray(Lcom/squareup/haha/perflib/Type;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/squareup/haha/perflib/Type;

    .prologue
    .line 64
    sget-object v0, Lcom/squareup/haha/perflib/Type$1;->$SwitchMap$com$android$tools$perflib$heap$Type:[I

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OBJECT type is not a primitive type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    const-string v0, "boolean[]"

    .line 72
    :goto_0
    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "char[]"

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "float[]"

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "double[]"

    goto :goto_0

    .line 69
    :pswitch_4
    const-string v0, "byte[]"

    goto :goto_0

    .line 70
    :pswitch_5
    const-string v0, "short[]"

    goto :goto_0

    .line 71
    :pswitch_6
    const-string v0, "int[]"

    goto :goto_0

    .line 72
    :pswitch_7
    const-string v0, "long[]"

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getType(I)Lcom/squareup/haha/perflib/Type;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/squareup/haha/perflib/Type;->sTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/haha/perflib/Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/squareup/haha/perflib/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Type;

    return-object v0
.end method

.method public static values()[Lcom/squareup/haha/perflib/Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/squareup/haha/perflib/Type;->$VALUES:[Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v0}, [Lcom/squareup/haha/perflib/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/haha/perflib/Type;

    return-object v0
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/squareup/haha/perflib/Type;->mSize:I

    return v0
.end method

.method public final getTypeId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/squareup/haha/perflib/Type;->mId:I

    return v0
.end method
