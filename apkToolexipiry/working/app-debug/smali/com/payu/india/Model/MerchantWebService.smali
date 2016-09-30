.class public Lcom/payu/india/Model/MerchantWebService;
.super Ljava/lang/Object;
.source "MerchantWebService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/MerchantWebService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private var1:Ljava/lang/String;

.field private var10:Ljava/lang/String;

.field private var11:Ljava/lang/String;

.field private var12:Ljava/lang/String;

.field private var13:Ljava/lang/String;

.field private var14:Ljava/lang/String;

.field private var15:Ljava/lang/String;

.field private var2:Ljava/lang/String;

.field private var3:Ljava/lang/String;

.field private var4:Ljava/lang/String;

.field private var5:Ljava/lang/String;

.field private var6:Ljava/lang/String;

.field private var7:Ljava/lang/String;

.field private var8:Ljava/lang/String;

.field private var9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/payu/india/Model/MerchantWebService$1;

    invoke-direct {v0}, Lcom/payu/india/Model/MerchantWebService$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/MerchantWebService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->key:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->command:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->hash:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var1:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var2:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var3:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var4:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var5:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var6:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var7:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var8:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var9:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var10:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var11:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var12:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var13:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var14:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var15:Ljava/lang/String;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payu/india/Model/MerchantWebService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payu/india/Model/MerchantWebService$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/payu/india/Model/MerchantWebService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVar1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var1:Ljava/lang/String;

    return-object v0
.end method

.method public getVar10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var10:Ljava/lang/String;

    return-object v0
.end method

.method public getVar11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var11:Ljava/lang/String;

    return-object v0
.end method

.method public getVar12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var12:Ljava/lang/String;

    return-object v0
.end method

.method public getVar13()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var13:Ljava/lang/String;

    return-object v0
.end method

.method public getVar14()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var14:Ljava/lang/String;

    return-object v0
.end method

.method public getVar15()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var15:Ljava/lang/String;

    return-object v0
.end method

.method public getVar2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var2:Ljava/lang/String;

    return-object v0
.end method

.method public getVar3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var3:Ljava/lang/String;

    return-object v0
.end method

.method public getVar4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var4:Ljava/lang/String;

    return-object v0
.end method

.method public getVar5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var5:Ljava/lang/String;

    return-object v0
.end method

.method public getVar6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var6:Ljava/lang/String;

    return-object v0
.end method

.method public getVar7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var7:Ljava/lang/String;

    return-object v0
.end method

.method public getVar8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var8:Ljava/lang/String;

    return-object v0
.end method

.method public getVar9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var9:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->command:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->hash:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->key:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setVar1(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var1:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setVar10(Ljava/lang/String;)V
    .locals 0
    .param p1, "var10"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var10:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setVar11(Ljava/lang/String;)V
    .locals 0
    .param p1, "var11"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var11:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setVar12(Ljava/lang/String;)V
    .locals 0
    .param p1, "var12"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var12:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setVar13(Ljava/lang/String;)V
    .locals 0
    .param p1, "var13"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var13:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setVar14(Ljava/lang/String;)V
    .locals 0
    .param p1, "var14"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var14:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setVar15(Ljava/lang/String;)V
    .locals 0
    .param p1, "var15"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var15:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setVar2(Ljava/lang/String;)V
    .locals 0
    .param p1, "var2"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var2:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setVar3(Ljava/lang/String;)V
    .locals 0
    .param p1, "var3"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var3:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setVar4(Ljava/lang/String;)V
    .locals 0
    .param p1, "var4"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var4:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setVar5(Ljava/lang/String;)V
    .locals 0
    .param p1, "var5"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var5:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setVar6(Ljava/lang/String;)V
    .locals 0
    .param p1, "var6"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var6:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setVar7(Ljava/lang/String;)V
    .locals 0
    .param p1, "var7"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var7:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setVar8(Ljava/lang/String;)V
    .locals 0
    .param p1, "var8"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var8:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setVar9(Ljava/lang/String;)V
    .locals 0
    .param p1, "var9"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/payu/india/Model/MerchantWebService;->var9:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->command:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var7:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var9:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var10:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var11:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var12:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var13:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var14:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/payu/india/Model/MerchantWebService;->var15:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return-void
.end method
