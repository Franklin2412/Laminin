.class final Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakAdapter.java"


# static fields
.field private static final NORMAL_ROW:I = 0x1

.field private static final TOP_ROW:I


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/LeakTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private opened:[Z

.field private referenceKey:Ljava/lang/String;

.field private referenceName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    return-void
.end method

.method private elementToHtmlString(Lcom/squareup/leakcanary/LeakTraceElement;ZZ)Ljava/lang/String;
    .locals 10
    .param p1, "element"    # Lcom/squareup/leakcanary/LeakTraceElement;
    .param p2, "root"    # Z
    .param p3, "opened"    # Z

    .prologue
    .line 91
    const-string v1, ""

    .line 93
    .local v1, "htmlString":Ljava/lang/String;
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "leaks "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_0
    :goto_0
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->type:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    sget-object v7, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    if-ne v6, v7, :cond_1

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<font color=\'#c48a47\'>static</font> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_1
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v7, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    if-eq v6, v7, :cond_2

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v7, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    if-ne v6, v7, :cond_3

    .line 104
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<font color=\'#f3cf83\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    invoke-virtual {v7}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_3
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 110
    .local v3, "separator":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_9

    .line 111
    const-string v2, ""

    .line 112
    .local v2, "qualifier":Ljava/lang/String;
    iget-object v4, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    .line 118
    .local v4, "simpleName":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<font color=\'#919191\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<font color=\'#ffffff\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "styledClassName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".<font color=\'#998bb5\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    const-string v8, "<"

    const-string v9, "&lt;"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ">"

    const-string v9, "&gt;"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_2
    if-eqz p3, :cond_5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->extra:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <font color=\'#919191\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/squareup/leakcanary/LeakTraceElement;->extra:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_5
    iget-object v0, p1, Lcom/squareup/leakcanary/LeakTraceElement;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    .line 138
    .local v0, "exclusion":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v0, :cond_7

    .line 139
    if-eqz p3, :cond_b

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br/><br/>Excluded by rule"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v6, v0, Lcom/squareup/leakcanary/Exclusion;->name:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <font color=\'#ffffff\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/squareup/leakcanary/Exclusion;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " matching <font color=\'#f3cf83\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/squareup/leakcanary/Exclusion;->matching:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v6, v0, Lcom/squareup/leakcanary/Exclusion;->reason:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because <font color=\'#f3cf83\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/squareup/leakcanary/Exclusion;->reason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_7
    :goto_3
    return-object v1

    .line 95
    .end local v0    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .end local v2    # "qualifier":Ljava/lang/String;
    .end local v3    # "separator":I
    .end local v4    # "simpleName":Ljava/lang/String;
    .end local v5    # "styledClassName":Ljava/lang/String;
    :cond_8
    if-nez p2, :cond_0

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "references "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 114
    .restart local v3    # "separator":I
    :cond_9
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "qualifier":Ljava/lang/String;
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "simpleName":Ljava/lang/String;
    goto/16 :goto_1

    .line 130
    .restart local v5    # "styledClassName":Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <font color=\'#f3cf83\'>instance</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 149
    .restart local v0    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (excluded)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static findById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/LeakTraceElement;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 196
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 49
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItemViewType(I)I

    move-result v10

    if-nez v10, :cond_1

    .line 51
    if-nez p2, :cond_0

    .line 52
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v10, Lcom/squareup/leakcanary/R$layout;->leak_canary_ref_top_row:I

    invoke-virtual {v8, v10, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    :cond_0
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_text:I

    invoke-static {p2, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 56
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    return-object p2

    .line 58
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_1
    if-nez p2, :cond_2

    .line 59
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    sget v11, Lcom/squareup/leakcanary/R$layout;->leak_canary_ref_row:I

    invoke-virtual {v10, v11, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_2
    sget v10, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_text:I

    invoke-static {p2, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .restart local v7    # "textView":Landroid/widget/TextView;
    if-ne p1, v8, :cond_4

    move v5, v8

    .line 65
    .local v5, "isRoot":Z
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne p1, v10, :cond_5

    move v4, v8

    .line 66
    .local v4, "isLeakingInstance":Z
    :goto_2
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v2

    .line 67
    .local v2, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v8, v8, p1

    invoke-direct {p0, v2, v5, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elementToHtmlString(Lcom/squareup/leakcanary/LeakTraceElement;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "htmlString":Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v8, v8, p1

    if-eqz v8, :cond_3

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <font color=\'#919191\'>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    :cond_3
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_connector:I

    invoke-static {p2, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;

    .line 74
    .local v0, "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    if-eqz v5, :cond_6

    .line 75
    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    .line 83
    :goto_3
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_more:I

    invoke-static {p2, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/squareup/leakcanary/internal/MoreDetailsView;

    .line 84
    .local v6, "moreDetailsView":Lcom/squareup/leakcanary/internal/MoreDetailsView;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v8, v8, p1

    invoke-virtual {v6, v8}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->setOpened(Z)V

    goto/16 :goto_0

    .end local v0    # "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    .end local v2    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    .end local v3    # "htmlString":Ljava/lang/String;
    .end local v4    # "isLeakingInstance":Z
    .end local v5    # "isRoot":Z
    .end local v6    # "moreDetailsView":Lcom/squareup/leakcanary/internal/MoreDetailsView;
    :cond_4
    move v5, v9

    .line 64
    goto :goto_1

    .restart local v5    # "isRoot":Z
    :cond_5
    move v4, v9

    .line 65
    goto :goto_2

    .line 77
    .restart local v0    # "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    .restart local v2    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    .restart local v3    # "htmlString":Ljava/lang/String;
    .restart local v4    # "isLeakingInstance":Z
    :cond_6
    if-eqz v4, :cond_7

    .line 78
    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    goto :goto_3

    .line 80
    :cond_7
    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x2

    return v0
.end method

.method public toggleRow(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 170
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->notifyDataSetChanged()V

    .line 171
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p2, "referenceKey"    # Ljava/lang/String;
    .param p3, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    iput-object p2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceKey:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakTrace;->elements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    .line 165
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
