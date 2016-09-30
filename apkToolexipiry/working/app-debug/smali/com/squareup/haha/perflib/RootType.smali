.class public final enum Lcom/squareup/haha/perflib/RootType;
.super Ljava/lang/Enum;
.source "RootType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/haha/perflib/RootType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/haha/perflib/RootType;

.field public static final enum BUSY_MONITOR:Lcom/squareup/haha/perflib/RootType;

.field public static final enum DEBUGGER:Lcom/squareup/haha/perflib/RootType;

.field public static final enum FINALIZING:Lcom/squareup/haha/perflib/RootType;

.field public static final enum INTERNED_STRING:Lcom/squareup/haha/perflib/RootType;

.field public static final enum INVALID_TYPE:Lcom/squareup/haha/perflib/RootType;

.field public static final enum JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

.field public static final enum JAVA_STATIC:Lcom/squareup/haha/perflib/RootType;

.field public static final enum NATIVE_LOCAL:Lcom/squareup/haha/perflib/RootType;

.field public static final enum NATIVE_MONITOR:Lcom/squareup/haha/perflib/RootType;

.field public static final enum NATIVE_STACK:Lcom/squareup/haha/perflib/RootType;

.field public static final enum NATIVE_STATIC:Lcom/squareup/haha/perflib/RootType;

.field public static final enum REFERENCE_CLEANUP:Lcom/squareup/haha/perflib/RootType;

.field public static final enum SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

.field public static final enum THREAD_BLOCK:Lcom/squareup/haha/perflib/RootType;

.field public static final enum UNKNOWN:Lcom/squareup/haha/perflib/RootType;

.field public static final enum UNREACHABLE:Lcom/squareup/haha/perflib/RootType;

.field public static final enum VM_INTERNAL:Lcom/squareup/haha/perflib/RootType;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "UNREACHABLE"

    const-string v2, "unreachable object"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->UNREACHABLE:Lcom/squareup/haha/perflib/RootType;

    .line 21
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "INVALID_TYPE"

    const-string v2, "invalid type"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->INVALID_TYPE:Lcom/squareup/haha/perflib/RootType;

    .line 22
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "INTERNED_STRING"

    const-string v2, "interned string"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->INTERNED_STRING:Lcom/squareup/haha/perflib/RootType;

    .line 23
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    .line 24
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "SYSTEM_CLASS"

    const-string v2, "system class"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    .line 25
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "VM_INTERNAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "vm internal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->VM_INTERNAL:Lcom/squareup/haha/perflib/RootType;

    .line 26
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "DEBUGGER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "debugger"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->DEBUGGER:Lcom/squareup/haha/perflib/RootType;

    .line 27
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "NATIVE_LOCAL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "native local"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->NATIVE_LOCAL:Lcom/squareup/haha/perflib/RootType;

    .line 28
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "NATIVE_STATIC"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "native static"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->NATIVE_STATIC:Lcom/squareup/haha/perflib/RootType;

    .line 29
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "THREAD_BLOCK"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "thread block"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->THREAD_BLOCK:Lcom/squareup/haha/perflib/RootType;

    .line 30
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "BUSY_MONITOR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string v4, "busy monitor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->BUSY_MONITOR:Lcom/squareup/haha/perflib/RootType;

    .line 31
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "NATIVE_MONITOR"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string v4, "native monitor"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->NATIVE_MONITOR:Lcom/squareup/haha/perflib/RootType;

    .line 32
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "REFERENCE_CLEANUP"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string v4, "reference cleanup"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->REFERENCE_CLEANUP:Lcom/squareup/haha/perflib/RootType;

    .line 33
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "FINALIZING"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string v4, "finalizing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->FINALIZING:Lcom/squareup/haha/perflib/RootType;

    .line 34
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "JAVA_LOCAL"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string v4, "java local"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    .line 35
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "NATIVE_STACK"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string v4, "native stack"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->NATIVE_STACK:Lcom/squareup/haha/perflib/RootType;

    .line 36
    new-instance v0, Lcom/squareup/haha/perflib/RootType;

    const-string v1, "JAVA_STATIC"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string v4, "java static"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/haha/perflib/RootType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->JAVA_STATIC:Lcom/squareup/haha/perflib/RootType;

    .line 19
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/squareup/haha/perflib/RootType;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNREACHABLE:Lcom/squareup/haha/perflib/RootType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->INVALID_TYPE:Lcom/squareup/haha/perflib/RootType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->INTERNED_STRING:Lcom/squareup/haha/perflib/RootType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->VM_INTERNAL:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->DEBUGGER:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->NATIVE_LOCAL:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->NATIVE_STATIC:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->THREAD_BLOCK:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->BUSY_MONITOR:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->NATIVE_MONITOR:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->REFERENCE_CLEANUP:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->FINALIZING:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->NATIVE_STACK:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/squareup/haha/perflib/RootType;->JAVA_STATIC:Lcom/squareup/haha/perflib/RootType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/haha/perflib/RootType;->$VALUES:[Lcom/squareup/haha/perflib/RootType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/squareup/haha/perflib/RootType;->mType:I

    .line 44
    iput-object p4, p0, Lcom/squareup/haha/perflib/RootType;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/haha/perflib/RootType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/squareup/haha/perflib/RootType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/RootType;

    return-object v0
.end method

.method public static values()[Lcom/squareup/haha/perflib/RootType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/squareup/haha/perflib/RootType;->$VALUES:[Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v0}, [Lcom/squareup/haha/perflib/RootType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/haha/perflib/RootType;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/haha/perflib/RootType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/squareup/haha/perflib/RootType;->mType:I

    return v0
.end method
