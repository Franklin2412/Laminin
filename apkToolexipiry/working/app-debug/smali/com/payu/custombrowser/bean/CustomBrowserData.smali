.class public final enum Lcom/payu/custombrowser/bean/CustomBrowserData;
.super Ljava/lang/Enum;
.source "CustomBrowserData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/payu/custombrowser/bean/CustomBrowserData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payu/custombrowser/bean/CustomBrowserData;

.field public static final enum SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;


# instance fields
.field private payuCustomBrowserCallback:Lcom/payu/custombrowser/PayUCustomBrowserCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserData;

    const-string v1, "SINGLETON"

    invoke-direct {v0, v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/payu/custombrowser/bean/CustomBrowserData;

    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    aput-object v1, v0, v2

    sput-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->$VALUES:[Lcom/payu/custombrowser/bean/CustomBrowserData;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/custombrowser/bean/CustomBrowserData;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/CustomBrowserData;

    return-object v0
.end method

.method public static values()[Lcom/payu/custombrowser/bean/CustomBrowserData;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->$VALUES:[Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, [Lcom/payu/custombrowser/bean/CustomBrowserData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/custombrowser/bean/CustomBrowserData;

    return-object v0
.end method


# virtual methods
.method public getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserData;->payuCustomBrowserCallback:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    return-object v0
.end method

.method public setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V
    .locals 0
    .param p1, "payuCustomBrowserCallback"    # Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserData;->payuCustomBrowserCallback:Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 15
    return-void
.end method
