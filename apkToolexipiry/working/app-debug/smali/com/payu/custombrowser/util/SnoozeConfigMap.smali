.class public Lcom/payu/custombrowser/util/SnoozeConfigMap;
.super Ljava/util/HashMap;
.source "SnoozeConfigMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPercentageAndTimeout(Ljava/lang/String;)[I
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 22
    const-string p1, "*"

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    .line 29
    .local v0, "percentageAndTimeout":[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    new-array v3, v1, [I

    array-length v1, v0

    if-lez v1, :cond_2

    aget-object v1, v0, v4

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    aput v1, v3, v4

    array-length v1, v0

    if-le v1, v2, :cond_3

    aget-object v1, v0, v2

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    aput v1, v3, v2

    .line 29
    return-object v3

    .line 26
    .end local v0    # "percentageAndTimeout":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\|\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    .restart local v0    # "percentageAndTimeout":[Ljava/lang/String;
    :cond_2
    const/16 v1, 0x64

    goto :goto_1

    :cond_3
    move v1, v2

    .line 31
    goto :goto_2
.end method
