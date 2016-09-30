.class public final enum Lcom/squareup/leakcanary/LeakTraceElement$Holder;
.super Ljava/lang/Enum;
.source "LeakTraceElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/LeakTraceElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/leakcanary/LeakTraceElement$Holder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/leakcanary/LeakTraceElement$Holder;

.field public static final enum ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

.field public static final enum CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

.field public static final enum OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

.field public static final enum THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v2}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v3}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    const-string v1, "THREAD"

    invoke-direct {v0, v1, v4}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v5}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->$VALUES:[Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    return-object v0
.end method

.method public static values()[Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->$VALUES:[Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    invoke-virtual {v0}, [Lcom/squareup/leakcanary/LeakTraceElement$Holder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    return-object v0
.end method
