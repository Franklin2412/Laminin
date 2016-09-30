.class public Lcom/payu/india/Extras/PayUChecksum;
.super Ljava/lang/Object;
.source "PayUChecksum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Extras/PayUChecksum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:Ljava/lang/String;

.field command:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private firstname:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private paymentHashParams:[Ljava/lang/String;

.field private productinfo:Ljava/lang/String;

.field private salt:Ljava/lang/String;

.field private txnid:Ljava/lang/String;

.field private udf1:Ljava/lang/String;

.field private udf2:Ljava/lang/String;

.field private udf3:Ljava/lang/String;

.field private udf4:Ljava/lang/String;

.field private udf5:Ljava/lang/String;

.field var1:Ljava/lang/String;

.field private webServiceHashParams:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/payu/india/Extras/PayUChecksum$1;

    invoke-direct {v0}, Lcom/payu/india/Extras/PayUChecksum$1;-><init>()V

    sput-object v0, Lcom/payu/india/Extras/PayUChecksum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "command"

    aput-object v1, v0, v3

    const-string v1, "var1"

    aput-object v1, v0, v4

    const-string v1, "salt"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->webServiceHashParams:[Ljava/lang/String;

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "txnid"

    aput-object v1, v0, v3

    const-string v1, "amount"

    aput-object v1, v0, v4

    const-string v1, "productinfo"

    aput-object v1, v0, v5

    const-string v1, "firstname"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "udf1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "udf2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "udf3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "udf4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "udf5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "salt"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->paymentHashParams:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "command"

    aput-object v1, v0, v3

    const-string v1, "var1"

    aput-object v1, v0, v4

    const-string v1, "salt"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->webServiceHashParams:[Ljava/lang/String;

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "txnid"

    aput-object v1, v0, v3

    const-string v1, "amount"

    aput-object v1, v0, v4

    const-string v1, "productinfo"

    aput-object v1, v0, v5

    const-string v1, "firstname"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "udf1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "udf2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "udf3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "udf4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "udf5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "salt"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->paymentHashParams:[Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->firstname:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->email:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf1:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf2:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf3:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf4:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf5:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->var1:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payu/india/Extras/PayUChecksum$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payu/india/Extras/PayUChecksum$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/payu/india/Extras/PayUChecksum;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private calculateHash(Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 9
    .param p1, "hashString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 434
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v1, "hash":Ljava/lang/StringBuilder;
    const-string v6, "SHA-512"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 436
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 437
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 438
    .local v3, "mdbytes":[B
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v2, v3, v5

    .line 439
    .local v2, "hashByte":B
    and-int/lit16 v7, v2, 0xff

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "hashByte":B
    :cond_0
    const/4 v5, 0x0

    const-string v6, "SUCCESS"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 444
    .end local v1    # "hash":Ljava/lang/StringBuilder;
    .end local v3    # "mdbytes":[B
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :goto_1
    return-object v5

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/16 v5, 0x1397

    const-string v6, " Message digest sha 512 not found!"

    invoke-virtual {p0, v5, v6}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Lcom/payu/india/Model/PostData;
    .locals 14

    .prologue
    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v4, "webServiceHash":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->var1:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 225
    iget-object v7, p0, Lcom/payu/india/Extras/PayUChecksum;->webServiceHashParams:[Ljava/lang/String;

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_7

    aget-object v1, v7, v6

    .line 226
    .local v1, "k":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 225
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 226
    :sswitch_0
    const-string v9, "key"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v9, "command"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "var1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "salt"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    .line 228
    :pswitch_0
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-ge v5, v9, :cond_2

    .line 229
    :cond_1
    const-string v5, "Mandatory param key is missing"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    .line 358
    .end local v1    # "k":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 230
    .restart local v1    # "k":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 233
    :pswitch_1
    sget-object v5, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    iget-object v9, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 236
    :cond_3
    const-string v5, "Mandatory param command is missing"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto :goto_3

    .line 239
    :pswitch_2
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->var1:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-lt v5, v9, :cond_4

    .line 240
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->var1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 242
    :cond_4
    const-string v5, "Mandatory param var1 is missing"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto :goto_3

    .line 245
    :pswitch_3
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-ge v5, v9, :cond_6

    .line 246
    :cond_5
    const-string v5, "Mandatory param salt is missing"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto :goto_3

    .line 248
    :cond_6
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 256
    .end local v1    # "k":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->calculateHash(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto :goto_3

    .line 258
    :cond_8
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v3, "paymentHash":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/payu/india/Extras/PayUChecksum;->paymentHashParams:[Ljava/lang/String;

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_4
    if-ge v6, v8, :cond_18

    aget-object v2, v7, v6

    .line 262
    .local v2, "key":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_9
    :goto_5
    packed-switch v5, :pswitch_data_1

    .line 261
    :goto_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_4

    .line 262
    :sswitch_4
    const-string v9, "key"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :sswitch_5
    const-string v9, "txnid"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_6
    const-string v9, "amount"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_7
    const-string v9, "productinfo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x3

    goto :goto_5

    :sswitch_8
    const-string v9, "firstname"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_9
    const-string v9, "email"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x5

    goto :goto_5

    :sswitch_a
    const-string v9, "udf1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x6

    goto :goto_5

    :sswitch_b
    const-string v9, "udf2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x7

    goto :goto_5

    :sswitch_c
    const-string v9, "udf3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v5, 0x8

    goto :goto_5

    :sswitch_d
    const-string v9, "udf4"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v5, 0x9

    goto :goto_5

    :sswitch_e
    const-string v9, "udf5"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v5, 0xa

    goto :goto_5

    :sswitch_f
    const-string v9, "salt"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v5, 0xb

    goto/16 :goto_5

    .line 264
    :pswitch_4
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-ge v5, v9, :cond_b

    .line 265
    :cond_a
    const-string v5, "Mandatory param key is missing"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 267
    :cond_b
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 271
    :pswitch_5
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-ge v5, v9, :cond_c

    .line 272
    const-string v5, "should be the Transaction id (txnid)"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 274
    :cond_c
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 279
    :pswitch_6
    :try_start_0
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v5, v10, v12

    if-gtz v5, :cond_e

    .line 280
    :cond_d
    const-string v5, " Amount should be a Double value example 5.00"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 282
    :cond_e
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v5, 0x138a

    const-string v6, " Amount should be a Double value example 5.00"

    invoke-virtual {p0, v5, v6}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 289
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_7
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 290
    const-string v5, "Product info should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 292
    :cond_f
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 296
    :pswitch_8
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->firstname:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 297
    const-string v5, "First name should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 299
    :cond_10
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->firstname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 303
    :pswitch_9
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->email:Ljava/lang/String;

    if-nez v5, :cond_11

    .line 304
    const-string v5, "Email should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 306
    :cond_11
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->email:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 310
    :pswitch_a
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf1:Ljava/lang/String;

    if-nez v5, :cond_12

    .line 311
    const-string v5, "UDF1 should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 313
    :cond_12
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 317
    :pswitch_b
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf2:Ljava/lang/String;

    if-nez v5, :cond_13

    .line 318
    const-string v5, "UDF2 should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 320
    :cond_13
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 324
    :pswitch_c
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf3:Ljava/lang/String;

    if-nez v5, :cond_14

    .line 325
    const-string v5, "UDF3 should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 327
    :cond_14
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf3:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 331
    :pswitch_d
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf4:Ljava/lang/String;

    if-nez v5, :cond_15

    .line 332
    const-string v5, "UDF4 should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 334
    :cond_15
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf4:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 338
    :pswitch_e
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf5:Ljava/lang/String;

    if-nez v5, :cond_16

    .line 339
    const-string v5, "UDF5 should not be null, it can be empty or string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 341
    :cond_16
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->udf5:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "||||||"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 346
    :pswitch_f
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x1

    if-ge v5, v9, :cond_17

    .line 347
    const-string v5, "Salt should be a valid string"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 349
    :cond_17
    iget-object v5, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 355
    .end local v2    # "key":Ljava/lang/String;
    :cond_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->calculateHash(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 358
    .end local v3    # "paymentHash":Ljava/lang/StringBuilder;
    :cond_19
    const-string v5, "Mandatory param command is missing  Amount should be a Double value example 5.00"

    invoke-virtual {p0, v5}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    goto/16 :goto_3

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x19e5f -> :sswitch_0
        0x35c056 -> :sswitch_3
        0x371dea -> :sswitch_2
        0x38a5df4b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 262
    :sswitch_data_1
    .sparse-switch
        -0x58dedde3 -> :sswitch_7
        -0x5445afa8 -> :sswitch_6
        0x19e5f -> :sswitch_4
        0x35c056 -> :sswitch_f
        0x36b35a -> :sswitch_a
        0x36b35b -> :sswitch_b
        0x36b35c -> :sswitch_c
        0x36b35d -> :sswitch_d
        0x36b35e -> :sswitch_e
        0x5c24b9c -> :sswitch_9
        0x69add05 -> :sswitch_5
        0x7f9753b -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getProductinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    return-object v0
.end method

.method protected getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 1
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 382
    const-string v0, "ERROR"

    invoke-virtual {p0, p1, v0, p2}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v0

    return-object v0
.end method

.method protected getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 1
    .param p1, "code"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Lcom/payu/india/Model/PostData;

    invoke-direct {v0}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 395
    .local v0, "postData":Lcom/payu/india/Model/PostData;
    invoke-virtual {v0, p1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 396
    invoke-virtual {v0, p2}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p3}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 398
    return-object v0
.end method

.method protected getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 370
    const/16 v0, 0x1389

    const-string v1, "ERROR"

    invoke-virtual {p0, v0, v1, p1}, Lcom/payu/india/Extras/PayUChecksum;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v0

    return-object v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf1:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf2:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf3:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf4:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf5:Ljava/lang/String;

    return-object v0
.end method

.method public getVar1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->var1:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->email:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstname"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->firstname:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setProductinfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "productinfo"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSalt(Ljava/lang/String;)V
    .locals 0
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setTxnid(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnid"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setUdf1(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf1"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->udf1:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setUdf2(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf2"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->udf2:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setUdf3(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf3"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->udf3:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setUdf4(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf4"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->udf4:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setUdf5(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf5"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->udf5:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setVar1(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/payu/india/Extras/PayUChecksum;->var1:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->txnid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->productinfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->firstname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->udf5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->salt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/payu/india/Extras/PayUChecksum;->command:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    return-void
.end method
