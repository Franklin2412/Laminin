.class public Lcom/payu/custombrowser/bean/CustomBrowserConfig;
.super Ljava/lang/Object;
.source "CustomBrowserConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/bean/CustomBrowserConfig$SnoozeMode;,
        Lcom/payu/custombrowser/bean/CustomBrowserConfig$StoreOneClickHashMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/custombrowser/bean/CustomBrowserConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAIL_MODE:I = 0x2

.field public static final STOREONECLICKHASH_MODE_NONE:I = 0x0

.field public static final STOREONECLICKHASH_MODE_SERVER:I = 0x1

.field public static final WARN_MODE:I = 0x1


# instance fields
.field private autoApprove:I

.field private autoSelectOTP:I

.field private disableBackButtonDialog:I

.field private enableSnooze:I

.field private magicRetry:I

.field private merchantCheckoutActivityPath:Ljava/lang/String;

.field private merchantKey:Ljava/lang/String;

.field private merchantSMSPermission:I

.field private payuPostData:Ljava/lang/String;

.field private postURL:Ljava/lang/String;

.field private sPNGoodNWBody:Ljava/lang/String;

.field private sPNGoodNWHeader:Ljava/lang/String;

.field private sPNGoodNWTitle:Ljava/lang/String;

.field private sPNPoorNWBody:Ljava/lang/String;

.field private sPNPoorNWHeader:Ljava/lang/String;

.field private sPNPoorNWTitle:Ljava/lang/String;

.field private sPNTxnNotVerifiedBody:Ljava/lang/String;

.field private sPNTxnNotVerifiedHeader:Ljava/lang/String;

.field private sPNTxnNotVerifiedTitle:Ljava/lang/String;

.field private sPNTxnVerifiedBody:Ljava/lang/String;

.field private sPNTxnVerifiedHeader:Ljava/lang/String;

.field private sPNTxnVerifiedTitle:Ljava/lang/String;

.field private sdkVersionName:Ljava/lang/String;

.field private showCustombrowser:I

.field private snoozeMode:I

.field private storeOneClickHash:I

.field private surePayNotificationIcon:I

.field private transactionID:Ljava/lang/String;

.field private viewPortWideEnable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;

    invoke-direct {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;-><init>()V

    sput-object v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->viewPortWideEnable:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoApprove:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoSelectOTP:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->transactionID:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sdkVersionName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->showCustombrowser:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->disableBackButtonDialog:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->storeOneClickHash:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantSMSPermission:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->enableSnooze:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantCheckoutActivityPath:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->postURL:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->payuPostData:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->surePayNotificationIcon:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWTitle:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWHeader:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWBody:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWTitle:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWHeader:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWBody:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedTitle:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedHeader:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedBody:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedTitle:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedHeader:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedBody:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->snoozeMode:I

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "merchantKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x6L
            min = 0x6L
        .end annotation
    .end param
    .param p2, "transactionID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    .line 109
    iput-object p2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->transactionID:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    .line 112
    sget v0, Lcom/payu/custombrowser/R$drawable;->surepay_logo:I

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->surePayNotificationIcon:I

    .line 113
    const-string v0, "Internet Restored"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWTitle:Ljava/lang/String;

    .line 114
    const-string v0, "You can now resume the transaction"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWHeader:Ljava/lang/String;

    .line 116
    const-string v0, "No Internet Found"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWTitle:Ljava/lang/String;

    .line 117
    const-string v0, "We could not detect internet on your device"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWHeader:Ljava/lang/String;

    .line 119
    const-string v0, "Transaction Verified"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedTitle:Ljava/lang/String;

    .line 120
    const-string v0, "The bank has verified this transaction and we are good to go."

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedHeader:Ljava/lang/String;

    .line 122
    const-string v0, "Transaction Status Unknown"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedTitle:Ljava/lang/String;

    .line 123
    const-string v0, "The bank could not verify the transaction at this time."

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedHeader:Ljava/lang/String;

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->enableSnooze:I

    .line 130
    iput v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->snoozeMode:I

    .line 131
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoApprove()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoApprove:I

    return v0
.end method

.method public getAutoSelectOTP()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoSelectOTP:I

    return v0
.end method

.method public getDisableBackButtonDialog()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->disableBackButtonDialog:I

    return v0
.end method

.method public getEnableSnooze()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->enableSnooze:I

    return v0
.end method

.method public getMagicretry()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    return v0
.end method

.method public getMerchantCheckoutActivityPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantCheckoutActivityPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantSMSPermission()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantSMSPermission:I

    return v0
.end method

.method public getPayuPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->payuPostData:Ljava/lang/String;

    return-object v0
.end method

.method public getPostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->postURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sdkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCustombrowser()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->showCustombrowser:I

    return v0
.end method

.method public getSnoozeMode()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->snoozeMode:I

    return v0
.end method

.method public getStoreOneClickHash()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->storeOneClickHash:I

    return v0
.end method

.method public getSurePayNotificationIcon()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->surePayNotificationIcon:I

    return v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->transactionID:Ljava/lang/String;

    return-object v0
.end method

.method public getViewPortWideEnable()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->viewPortWideEnable:I

    return v0
.end method

.method public getsPNGoodNWBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWBody:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNGoodNWHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNGoodNWTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNPoorNWBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWBody:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNPoorNWHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNPoorNWTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNTxnNotVerifiedBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedBody:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNTxnNotVerifiedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNTxnNotVerifiedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNTxnVerifiedBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedBody:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNTxnVerifiedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getsPNTxnVerifiedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoApprove(Z)V
    .locals 1
    .param p1, "autoApprove"    # Z

    .prologue
    .line 271
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoApprove:I

    .line 272
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoSelectOTP(Z)V
    .locals 1
    .param p1, "autoSelectOTP"    # Z

    .prologue
    .line 284
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoSelectOTP:I

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisableBackButtonDialog(Z)V
    .locals 1
    .param p1, "disableBackButtonDialog"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->disableBackButtonDialog:I

    .line 256
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableSnooze(I)V
    .locals 1
    .param p1, "enableSnooze"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x3

    .line 214
    if-le p1, v0, :cond_0

    move p1, v0

    .end local p1    # "enableSnooze":I
    :cond_0
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->enableSnooze:I

    .line 215
    return-void
.end method

.method public setMerchantCheckoutActivityPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantCheckoutActivityPath"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantCheckoutActivityPath:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setMerchantKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "merchantKey"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    .line 304
    sput-object p1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 306
    :cond_1
    return-void
.end method

.method public setMerchantSMSPermission(Z)V
    .locals 1
    .param p1, "merchantSMSPermission"    # Z

    .prologue
    .line 222
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantSMSPermission:I

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPayuPostData(Ljava/lang/String;)V
    .locals 4
    .param p1, "payuPostData"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->payuPostData:Ljava/lang/String;

    .line 188
    new-instance v2, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v2}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    invoke-virtual {v2, p1}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 189
    .local v1, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Product info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "productinfo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "amount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "defaultText":Ljava/lang/String;
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWBody:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setsPNGoodNWBody(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWBody:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 193
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setsPNPoorNWBody(Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedBody:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 196
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setsPNTxnVerifiedBody(Ljava/lang/String;)V

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedBody:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 199
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setsPNTxnNotVerifiedBody(Ljava/lang/String;)V

    .line 203
    :cond_3
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 204
    sget-object v2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setMerchantKey(Ljava/lang/String;)V

    .line 207
    :cond_4
    return-void

    .line 204
    :cond_5
    sget-object v2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPostURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "postURL"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->postURL:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setSdkVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkVersionName"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sdkVersionName:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setShowCustombrowser(Z)V
    .locals 1
    .param p1, "showCustombrowser"    # Z

    .prologue
    .line 321
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->showCustombrowser:I

    .line 322
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSnoozeMode(I)V
    .locals 0
    .param p1, "snoozeMode"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->snoozeMode:I

    .line 434
    return-void
.end method

.method public setStoreOneClickHash(I)V
    .locals 0
    .param p1, "storeOneClickHash"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->storeOneClickHash:I

    .line 239
    return-void
.end method

.method public setSurePayNotificationIcon(I)V
    .locals 0
    .param p1, "surePayNotificationIcon"    # I

    .prologue
    .line 425
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->surePayNotificationIcon:I

    .line 426
    return-void
.end method

.method public setViewPortWideEnable(Z)V
    .locals 1
    .param p1, "viewPortWideEnable"    # Z

    .prologue
    .line 263
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->viewPortWideEnable:I

    .line 264
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setmagicRetry(Z)V
    .locals 1
    .param p1, "magicRetry"    # Z

    .prologue
    .line 230
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    .line 231
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setsPNGoodNWBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNGoodNWBody"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWBody:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setsPNGoodNWHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNGoodNWHeader"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWHeader:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setsPNGoodNWTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNGoodNWTitle"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWTitle:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setsPNPoorNWBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNPoorNWBody"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWBody:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setsPNPoorNWHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNPoorNWHeader"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWHeader:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setsPNPoorNWTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNPoorNWTitle"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWTitle:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setsPNTxnNotVerifiedBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNTxnNotVerifiedBody"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedBody:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setsPNTxnNotVerifiedHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNTxnNotVerifiedHeader"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedHeader:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setsPNTxnNotVerifiedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNTxnNotVerifiedTitle"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedTitle:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setsPNTxnVerifiedBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNTxnVerifiedBody"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedBody:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setsPNTxnVerifiedHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNTxnVerifiedHeader"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedHeader:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setsPNTxnVerifiedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPNTxnVerifiedTitle"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedTitle:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->viewPortWideEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoApprove:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->autoSelectOTP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->transactionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sdkVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->showCustombrowser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->disableBackButtonDialog:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->storeOneClickHash:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->magicRetry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantSMSPermission:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->enableSnooze:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->merchantCheckoutActivityPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->postURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->payuPostData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->surePayNotificationIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNGoodNWBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNPoorNWBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnVerifiedBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->sPNTxnNotVerifiedBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->snoozeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
