.class public Lcom/payu/testapp/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payu/india/Interfaces/OneClickPaymentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;
    }
.end annotation


# instance fields
.field private addButton:Landroid/widget/Button;

.field private cardBin:Ljava/lang/String;

.field private checksum:Lcom/payu/india/Extras/PayUChecksum;

.field env:I

.field idsKey:[I

.field idsValue:[I

.field inputData:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private key:Ljava/lang/String;

.field leftChild:Landroid/widget/EditText;

.field private mPaymentParams:Lcom/payu/india/Model/PaymentParams;

.field private mainScrollView:Landroid/widget/ScrollView;

.field mandatoryKeys:[Ljava/lang/String;

.field mandatoryValues:[Ljava/lang/String;

.field merchantIndex:I

.field merchantKey:Ljava/lang/String;

.field merchantProductionKeys:[Ljava/lang/String;

.field merchantProductionSalts:[Ljava/lang/String;

.field merchantTestKeys:[Ljava/lang/String;

.field private nextButton:Landroid/widget/Button;

.field private nextButtonClicked:Z

.field offerKeys:[Ljava/lang/String;

.field private payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private postData:Lcom/payu/india/Model/PostData;

.field rightChild:Landroid/widget/EditText;

.field private rowContainerLinearLayout:Landroid/widget/LinearLayout;

.field private salt:Ljava/lang/String;

.field smsPermission:Ljava/lang/Boolean;

.field private storeOneClickHash:I

.field private toolBar:Landroid/support/v7/widget/Toolbar;

.field private var1:Ljava/lang/String;

.field private verifyApiButton:Landroid/widget/Button;

.field private verifyApiButtonClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 55
    iput v4, p0, Lcom/payu/testapp/MainActivity;->merchantIndex:I

    .line 56
    iput v3, p0, Lcom/payu/testapp/MainActivity;->env:I

    .line 61
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "gtKFFx"

    aput-object v1, v0, v4

    const-string v1, "DXOF8m"

    aput-object v1, v0, v3

    const-string v1, "obScKz"

    aput-object v1, v0, v5

    const-string v1, "smsplus"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->merchantTestKeys:[Ljava/lang/String;

    .line 64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->smsPermission:Ljava/lang/Boolean;

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0MQaQP"

    aput-object v1, v0, v4

    const-string v1, "smsplus"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->merchantProductionKeys:[Ljava/lang/String;

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "13p0PXZk"

    aput-object v1, v0, v4

    const-string v1, "1b1b0"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->merchantProductionSalts:[Ljava/lang/String;

    .line 69
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cardnumber@8370,cardnumbers2@8380"

    aput-object v1, v0, v4

    const-string v1, "netbanking@8372"

    aput-object v1, v0, v3

    const-string v1, "netbank@8374"

    aput-object v1, v0, v5

    const-string v1, "cardnumbers2@8380"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->offerKeys:[Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/payu/testapp/MainActivity;->env:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->merchantProductionKeys:[Ljava/lang/String;

    iget v1, p0, Lcom/payu/testapp/MainActivity;->merchantIndex:I

    aget-object v0, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->merchantKey:Ljava/lang/String;

    .line 73
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v4

    const-string v1, "amount"

    aput-object v1, v0, v3

    const-string v1, "productinfo"

    aput-object v1, v0, v5

    const-string v1, "firstname"

    aput-object v1, v0, v6

    const-string v1, "email"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "txnid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "surl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "furl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_credentials"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "udf1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "udf2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "udf3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "udf4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "udf5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "env"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "store_one_click_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sms_permission"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->mandatoryKeys:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->merchantKey:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "1.0"

    aput-object v1, v0, v3

    const-string v1, "myproduct"

    aput-object v1, v0, v5

    const-string v1, "firstname"

    aput-object v1, v0, v6

    const-string v1, "test@itsme.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "https://payu.herokuapp.com/success"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "https://payu.herokuapp.com/failure"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->merchantKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":snooze@payu.in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "udf1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "udf2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "udf3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "udf4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "udf5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/payu/testapp/MainActivity;->env:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->smsPermission:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->mandatoryValues:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->idsKey:[I

    .line 77
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->idsValue:[I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->merchantTestKeys:[Ljava/lang/String;

    iget v1, p0, Lcom/payu/testapp/MainActivity;->merchantIndex:I

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 76
    :array_0
    .array-data 4
        0x7f0d000a
        0x7f0d0005
        0x7f0d000c
        0x7f0d0008
        0x7f0d0006
        0x7f0d0011
        0x7f0d0010
        0x7f0d0009
        0x7f0d0017
        0x7f0d0012
        0x7f0d0013
        0x7f0d0014
        0x7f0d0015
        0x7f0d0016
        0x7f0d0007
        0x7f0d000f
        0x7f0d000e
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x7f0d0021
        0x7f0d001c
        0x7f0d0023
        0x7f0d001f
        0x7f0d001d
        0x7f0d0028
        0x7f0d0027
        0x7f0d0020
        0x7f0d002e
        0x7f0d0029
        0x7f0d002a
        0x7f0d002b
        0x7f0d002c
        0x7f0d002d
        0x7f0d001e
        0x7f0d0026
        0x7f0d0025
    .end array-data
.end method

.method static synthetic access$000(Lcom/payu/testapp/MainActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->mainScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payu/testapp/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/payu/testapp/MainActivity;->nextButtonClicked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/payu/testapp/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/testapp/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/payu/testapp/MainActivity;->verifyApiButtonClicked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/payu/testapp/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/payu/testapp/MainActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->verifyApiButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/payu/testapp/MainActivity;Lcom/payu/india/Model/PayuHashes;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/testapp/MainActivity;
    .param p1, "x1"    # Lcom/payu/india/Model/PayuHashes;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/payu/testapp/MainActivity;->launchVerifyApi(Lcom/payu/india/Model/PayuHashes;)V

    return-void
.end method

.method private addView()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->rowContainerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/payu/testapp/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/payu/testapp/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/payu/testapp/MainActivity$2;-><init>(Lcom/payu/testapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method private calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "var1"    # Ljava/lang/String;
    .param p4, "salt"    # Ljava/lang/String;

    .prologue
    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    .line 685
    new-instance v0, Lcom/payu/india/Extras/PayUChecksum;

    invoke-direct {v0}, Lcom/payu/india/Extras/PayUChecksum;-><init>()V

    iput-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    .line 686
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {v0, p1}, Lcom/payu/india/Extras/PayUChecksum;->setKey(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {v0, p2}, Lcom/payu/india/Extras/PayUChecksum;->setCommand(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {v0, p3}, Lcom/payu/india/Extras/PayUChecksum;->setVar1(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {v0, p4}, Lcom/payu/india/Extras/PayUChecksum;->setSalt(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {v0}, Lcom/payu/india/Extras/PayUChecksum;->getHash()Lcom/payu/india/Model/PostData;

    move-result-object v0

    return-object v0
.end method

.method private deleteMerchantHash(Ljava/lang/String;)V
    .locals 3
    .param p1, "cardToken"    # Ljava/lang/String;

    .prologue
    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "postParams":Ljava/lang/String;
    new-instance v1, Lcom/payu/testapp/MainActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/payu/testapp/MainActivity$5;-><init>(Lcom/payu/testapp/MainActivity;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 869
    invoke-virtual {v1, v2}, Lcom/payu/testapp/MainActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 870
    return-void
.end method

.method private fetchMerchantHashes(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merchant_key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&user_credentials="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "postParams":Ljava/lang/String;
    move-object v0, p1

    .line 754
    .local v0, "baseActivityIntent":Landroid/content/Intent;
    new-instance v2, Lcom/payu/testapp/MainActivity$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/payu/testapp/MainActivity$4;-><init>(Lcom/payu/testapp/MainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 813
    invoke-virtual {v2, v3}, Lcom/payu/testapp/MainActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 814
    return-void
.end method

.method private launchVerifyApi(Lcom/payu/india/Model/PayuHashes;)V
    .locals 3
    .param p1, "payuHashes"    # Lcom/payu/india/Model/PayuHashes;

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "payuConfig"

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    const-string v1, "payment_params"

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 542
    const-string v1, "payu_hashes"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 550
    const-string v1, "salt"

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/payu/testapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 553
    return-void
.end method

.method private navigateToBaseActivity()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/payu/payuui/Activity/PayUBaseActivity;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    .line 264
    const v6, 0x7f0d007d

    invoke-virtual {p0, v6}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 265
    .local v5, "rowContainerLayout":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/payu/india/Model/PaymentParams;

    invoke-direct {v6}, Lcom/payu/india/Model/PaymentParams;-><init>()V

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 266
    new-instance v6, Lcom/payu/india/Model/PayuConfig;

    invoke-direct {v6}, Lcom/payu/india/Model/PayuConfig;-><init>()V

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 268
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 270
    .local v0, "childNodeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 271
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 272
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    .line 273
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 270
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :sswitch_0
    const-string v10, "key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string v10, "amount"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v10, "productinfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v10, "firstname"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v10, "email"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v10, "txnid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string v10, "surl"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "furl"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_8
    const-string v10, "udf1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_9
    const-string v10, "udf2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_a
    const-string v10, "udf3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0xa

    goto :goto_1

    :sswitch_b
    const-string v10, "udf4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v10, "udf5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "user_credentials"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "offer_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v10, "salt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v10, "env"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v10, "card_bin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v10, "store_one_click_hash"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v10, "sms_permission"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x13

    goto/16 :goto_1

    .line 275
    :pswitch_0
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setKey(Ljava/lang/String;)V

    .line 276
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 279
    :pswitch_1
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setAmount(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    :pswitch_2
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setProductInfo(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 285
    :pswitch_3
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setFirstName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 288
    :pswitch_4
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setEmail(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 291
    :pswitch_5
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setTxnId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 294
    :pswitch_6
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setSurl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 297
    :pswitch_7
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setFurl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 300
    :pswitch_8
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setUdf1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 303
    :pswitch_9
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setUdf2(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 306
    :pswitch_a
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setUdf3(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 309
    :pswitch_b
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setUdf4(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 312
    :pswitch_c
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setUdf5(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 318
    :pswitch_d
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setUserCredentials(Ljava/lang/String;)V

    .line 319
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    goto/16 :goto_2

    .line 324
    :pswitch_e
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PaymentParams;->setOfferKey(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 329
    :pswitch_f
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v9, "salt"

    iget-object v10, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    goto/16 :goto_2

    .line 335
    :pswitch_10
    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    .line 337
    .local v2, "environment":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    iget-object v9, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/payu/india/Model/PayuConfig;->setEnvironment(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v6, v7}, Lcom/payu/india/Model/PayuConfig;->setEnvironment(I)V

    goto/16 :goto_2

    .line 345
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "environment":Ljava/lang/String;
    :pswitch_11
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->cardBin:Ljava/lang/String;

    goto/16 :goto_2

    .line 350
    :pswitch_12
    :try_start_1
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/payu/testapp/MainActivity;->storeOneClickHash:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 351
    :catch_1
    move-exception v1

    .line 352
    .restart local v1    # "e":Ljava/lang/Exception;
    iput v7, p0, Lcom/payu/testapp/MainActivity;->storeOneClickHash:I

    goto/16 :goto_2

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_13
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->inputData:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/payu/testapp/MainActivity;->smsPermission:Ljava/lang/Boolean;

    .line 358
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v9, "sms_permission"

    iget-object v10, p0, Lcom/payu/testapp/MainActivity;->smsPermission:Ljava/lang/Boolean;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 376
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {p0, v6}, Lcom/payu/testapp/MainActivity;->generateHashFromServer(Lcom/payu/india/Model/PaymentParams;)V

    .line 388
    :goto_3
    return-void

    .line 378
    :cond_2
    iget-object v6, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    iget-object v7, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v8, "salt"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/payu/testapp/MainActivity;->generateHashFromSDK(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V

    goto :goto_3

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64c3438b -> :sswitch_13
        -0x58dedde3 -> :sswitch_2
        -0x5445afa8 -> :sswitch_1
        -0x4bc5eb78 -> :sswitch_d
        -0x78e0a8 -> :sswitch_11
        0x188ed -> :sswitch_10
        0x19e5f -> :sswitch_0
        0x302349 -> :sswitch_7
        0x35c056 -> :sswitch_f
        0x360c1c -> :sswitch_6
        0x36b35a -> :sswitch_8
        0x36b35b -> :sswitch_9
        0x36b35c -> :sswitch_a
        0x36b35d -> :sswitch_b
        0x36b35e -> :sswitch_c
        0x5c24b9c -> :sswitch_4
        0x69add05 -> :sswitch_5
        0x7f9753b -> :sswitch_3
        0x43de2bfc -> :sswitch_12
        0x73ec59fc -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private storeMerchantHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cardToken"    # Ljava/lang/String;
    .param p2, "merchantHash"    # Ljava/lang/String;

    .prologue
    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merchant_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_credentials="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&card_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&merchant_hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "postParams":Ljava/lang/String;
    new-instance v1, Lcom/payu/testapp/MainActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/payu/testapp/MainActivity$3;-><init>(Lcom/payu/testapp/MainActivity;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 744
    invoke-virtual {v1, v2}, Lcom/payu/testapp/MainActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 745
    return-void
.end method

.method private test()V
    .locals 5

    .prologue
    .line 1006
    const v1, 0x7fffffff

    .local v1, "start":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    const/high16 v2, -0x80000000

    if-gt v0, v2, :cond_0

    .line 1008
    const-string v2, "franklin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    return-void
.end method


# virtual methods
.method protected concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteOneClickHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cardToken"    # Ljava/lang/String;
    .param p2, "userCredentials"    # Ljava/lang/String;

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/payu/testapp/MainActivity;->deleteMerchantHash(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public generateHashFromSDK(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V
    .locals 6
    .param p1, "mPaymentParams"    # Lcom/payu/india/Model/PaymentParams;
    .param p2, "Salt"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 608
    new-instance v0, Lcom/payu/india/Model/PayuHashes;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuHashes;-><init>()V

    .line 609
    .local v0, "payuHashes":Lcom/payu/india/Model/PayuHashes;
    new-instance v1, Lcom/payu/india/Model/PostData;

    invoke-direct {v1}, Lcom/payu/india/Model/PostData;-><init>()V

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    .line 612
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    .line 613
    new-instance v1, Lcom/payu/india/Extras/PayUChecksum;

    invoke-direct {v1}, Lcom/payu/india/Extras/PayUChecksum;-><init>()V

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    .line 614
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setAmount(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setKey(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setTxnid(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setEmail(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setSalt(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setProductinfo(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setFirstname(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setUdf1(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setUdf2(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setUdf3(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setUdf4(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setUdf5(Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->checksum:Lcom/payu/india/Extras/PayUChecksum;

    invoke-virtual {v1}, Lcom/payu/india/Extras/PayUChecksum;->getHash()Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    .line 628
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setPaymentHash(Ljava/lang/String;)V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, "default"

    :goto_0
    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    .line 636
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "payment_related_details_for_mobile_sdk"

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setPaymentRelatedDetailsForMobileSdkHash(Ljava/lang/String;)V

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "vas_for_mobile_sdk"

    const-string v3, "default"

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setVasForMobileSdkHash(Ljava/lang/String;)V

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "get_merchant_ibibo_codes"

    const-string v3, "default"

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_3

    .line 644
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setMerchantIbiboCodesHash(Ljava/lang/String;)V

    .line 646
    :cond_3
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 648
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "get_user_cards"

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_4

    .line 649
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setStoredCardsHash(Ljava/lang/String;)V

    .line 651
    :cond_4
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "save_user_card"

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_5

    .line 652
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setSaveCardHash(Ljava/lang/String;)V

    .line 654
    :cond_5
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "delete_user_card"

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_6

    .line 655
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setDeleteCardHash(Ljava/lang/String;)V

    .line 657
    :cond_6
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "edit_user_card"

    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_7

    .line 658
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setEditCardHash(Ljava/lang/String;)V

    .line 661
    :cond_7
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 662
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "offer_key"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    .line 663
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_8

    .line 664
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setCheckOfferStatusHash(Ljava/lang/String;)V

    .line 668
    :cond_8
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    const-string v2, "check_offer_status"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/payu/testapp/MainActivity;->calculateHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_9

    .line 669
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->postData:Lcom/payu/india/Model/PostData;

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuHashes;->setCheckOfferStatusHash(Ljava/lang/String;)V

    .line 673
    :cond_9
    iget-boolean v1, p0, Lcom/payu/testapp/MainActivity;->nextButtonClicked:Z

    if-eqz v1, :cond_c

    .line 674
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/payu/testapp/MainActivity;->launchSdkUI(Lcom/payu/india/Model/PayuHashes;)V

    .line 680
    :cond_a
    :goto_1
    return-void

    .line 634
    :cond_b
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->var1:Ljava/lang/String;

    goto/16 :goto_0

    .line 676
    :cond_c
    iget-boolean v1, p0, Lcom/payu/testapp/MainActivity;->verifyApiButtonClicked:Z

    if-eqz v1, :cond_a

    .line 677
    iget-object v1, p0, Lcom/payu/testapp/MainActivity;->verifyApiButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 678
    invoke-direct {p0, v0}, Lcom/payu/testapp/MainActivity;->launchVerifyApi(Lcom/payu/india/Model/PayuHashes;)V

    goto :goto_1
.end method

.method public generateHashFromServer(Lcom/payu/india/Model/PaymentParams;)V
    .locals 6
    .param p1, "mPaymentParams"    # Lcom/payu/india/Model/PaymentParams;

    .prologue
    const/4 v5, 0x0

    .line 395
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v2, "postParamsBuffer":Ljava/lang/StringBuffer;
    const-string v3, "key"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v3, "amount"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const-string v3, "txnid"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v4, "email"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const-string v3, "productinfo"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getProductInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v4, "firstname"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getFirstName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    const-string v4, "udf1"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf1()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    const-string v4, "udf2"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf2()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_3
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v4, "udf3"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf3()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, ""

    :goto_4
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v4, "udf4"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf4()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, ""

    :goto_5
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const-string v4, "udf5"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf5()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_6
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v4, "user_credentials"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "default"

    :goto_7
    invoke-virtual {p0, v4, v3}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 411
    const-string v3, "offer_key"

    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->cardBin:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 414
    const-string v3, "card_bin"

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->cardBin:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/payu/testapp/MainActivity;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "postParams":Ljava/lang/String;
    :goto_8
    new-instance v0, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;

    invoke-direct {v0, p0}, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;-><init>(Lcom/payu/testapp/MainActivity;)V

    .line 419
    .local v0, "getHashesFromServerTask":Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    return-void

    .line 399
    .end local v0    # "getHashesFromServerTask":Lcom/payu/testapp/MainActivity$GetHashesFromServerTask;
    .end local v1    # "postParams":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 401
    :cond_3
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getFirstName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 402
    :cond_4
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf1()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 403
    :cond_5
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf2()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 404
    :cond_6
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf3()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 405
    :cond_7
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf4()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 406
    :cond_8
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUdf5()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 407
    :cond_9
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 416
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getAllOneClickHash(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "userCreds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/payu/testapp/MainActivity;->getAllOneClickHashHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAllOneClickHashHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 18
    .param p1, "merchantKey"    # Ljava/lang/String;
    .param p2, "userCredentials"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "merchant_key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&user_credentials="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 877
    .local v9, "postParams":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    .line 878
    .local v2, "baseActivityIntent":Landroid/content/Intent;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 883
    .local v4, "cardTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v14, Ljava/net/URL;

    const-string v15, "https://payu.herokuapp.com/get_merchant_hashes"

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 885
    .local v14, "url":Ljava/net/URL;
    const-string v15, "UTF-8"

    invoke-virtual {v9, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 887
    .local v10, "postParamsByte":[B
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 888
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const-string v15, "GET"

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 889
    const-string v15, "Content-Type"

    const-string v16, "application/x-www-form-urlencoded"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v15, "Content-Length"

    array-length v0, v10

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 892
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/io/OutputStream;->write([B)V

    .line 894
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 895
    .local v12, "responseInputStream":Ljava/io/InputStream;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 896
    .local v13, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v15, 0x400

    new-array v3, v15, [B

    .line 897
    .local v3, "byteContainer":[B
    :goto_0
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "i":I
    const/4 v15, -0x1

    if-eq v7, v15, :cond_1

    .line 898
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v3, v0, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 913
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "i":I
    .end local v10    # "postParamsByte":[B
    .end local v12    # "responseInputStream":Ljava/io/InputStream;
    .end local v13    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 914
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 924
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    return-object v4

    .line 901
    .restart local v3    # "byteContainer":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "i":I
    .restart local v10    # "postParamsByte":[B
    .restart local v12    # "responseInputStream":Ljava/io/InputStream;
    .restart local v13    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 903
    .local v11, "response":Lorg/json/JSONObject;
    const-string v15, "data"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 905
    .local v8, "oneClickCardsArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "arrayLength":I
    const/4 v15, 0x1

    if-lt v1, v15, :cond_0

    .line 906
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_0

    .line 907
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 906
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 915
    .end local v1    # "arrayLength":I
    .end local v3    # "byteContainer":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "i":I
    .end local v8    # "oneClickCardsArray":Lorg/json/JSONArray;
    .end local v10    # "postParamsByte":[B
    .end local v11    # "response":Lorg/json/JSONObject;
    .end local v12    # "responseInputStream":Ljava/io/InputStream;
    .end local v13    # "responseStringBuffer":Ljava/lang/StringBuffer;
    .end local v14    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 916
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 917
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v6

    .line 918
    .local v6, "e":Ljava/net/ProtocolException;
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_1

    .line 921
    .end local v6    # "e":Ljava/net/ProtocolException;
    :catch_3
    move-exception v6

    .line 922
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getOneClickHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cardToken"    # Ljava/lang/String;
    .param p2, "merchantKey"    # Ljava/lang/String;
    .param p3, "userCredentials"    # Ljava/lang/String;

    .prologue
    .line 953
    return-void
.end method

.method public launchSdkUI(Lcom/payu/india/Model/PayuHashes;)V
    .locals 3
    .param p1, "payuHashes"    # Lcom/payu/india/Model/PayuHashes;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v1, "payuConfig"

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v1, "payment_params"

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 584
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v1, "payu_hashes"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v1, "salt"

    iget-object v2, p0, Lcom/payu/testapp/MainActivity;->salt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const-string v1, "store_one_click_hash"

    iget v2, p0, Lcom/payu/testapp/MainActivity;->storeOneClickHash:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    iget v0, p0, Lcom/payu/testapp/MainActivity;->storeOneClickHash:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/payu/testapp/MainActivity;->fetchMerchantHashes(Landroid/content/Intent;)V

    .line 599
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->intent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/payu/testapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 186
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 187
    if-eqz p3, :cond_1

    .line 218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payu\'s Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "payu_response"

    .line 220
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\n Merchant\'s Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/payu/testapp/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/payu/testapp/MainActivity$1;-><init>(Lcom/payu/testapp/MainActivity;)V

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v0, "Could not receive data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 237
    :pswitch_0
    invoke-direct {p0}, Lcom/payu/testapp/MainActivity;->addView()V

    goto :goto_0

    .line 240
    :pswitch_1
    iput-boolean v2, p0, Lcom/payu/testapp/MainActivity;->nextButtonClicked:Z

    .line 241
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    invoke-direct {p0}, Lcom/payu/testapp/MainActivity;->navigateToBaseActivity()V

    goto :goto_0

    .line 245
    :pswitch_2
    iput-boolean v2, p0, Lcom/payu/testapp/MainActivity;->verifyApiButtonClicked:Z

    .line 246
    iget-object v0, p0, Lcom/payu/testapp/MainActivity;->verifyApiButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    invoke-direct {p0}, Lcom/payu/testapp/MainActivity;->navigateToBaseActivity()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x7f0d007f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v3, 0x7f040019

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->setContentView(I)V

    .line 112
    invoke-direct {p0}, Lcom/payu/testapp/MainActivity;->test()V

    .line 114
    invoke-static {p0}, Lcom/payu/india/CallBackHandler/OnetapCallback;->setOneTapCallback(Lcom/payu/india/Interfaces/OneClickPaymentListener;)V

    .line 116
    invoke-static {p0}, Lcom/payu/india/Payu/Payu;->setInstance(Landroid/content/Context;)Lcom/payu/india/Payu/Payu;

    .line 119
    const v3, 0x7f0d007a

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->toolBar:Landroid/support/v7/widget/Toolbar;

    .line 120
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->toolBar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 123
    const v3, 0x7f0d007f

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->addButton:Landroid/widget/Button;

    .line 124
    const v3, 0x7f0d0080

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->nextButton:Landroid/widget/Button;

    .line 125
    const v3, 0x7f0d0081

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->verifyApiButton:Landroid/widget/Button;

    .line 126
    const v3, 0x7f0d007d

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->rowContainerLinearLayout:Landroid/widget/LinearLayout;

    .line 128
    const v3, 0x7f0d007b

    invoke-virtual {p0, v3}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->mainScrollView:Landroid/widget/ScrollView;

    .line 131
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->addButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->verifyApiButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->mandatoryKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/payu/testapp/MainActivity;->addView()V

    .line 138
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->rowContainerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 139
    .local v0, "currentLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->leftChild:Landroid/widget/EditText;

    .line 140
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/payu/testapp/MainActivity;->rightChild:Landroid/widget/EditText;

    .line 141
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->leftChild:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->mandatoryKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->mandatoryValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->rightChild:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->mandatoryValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->mandatoryKeys:[Ljava/lang/String;

    array-length v3, v3

    if-gt v1, v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->leftChild:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->idsKey:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setId(I)V

    .line 147
    iget-object v3, p0, Lcom/payu/testapp/MainActivity;->rightChild:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/payu/testapp/MainActivity;->idsValue:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setId(I)V

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "currentLayout":Landroid/widget/LinearLayout;
    :cond_2
    new-instance v2, Lcom/payu/india/Extras/PayUSdkDetails;

    invoke-direct {v2}, Lcom/payu/india/Extras/PayUSdkDetails;-><init>()V

    .line 154
    .local v2, "payUSdkDetails":Lcom/payu/india/Extras/PayUSdkDetails;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build No: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkBuildNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Build Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkBuildType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n Build Flavor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkFlavor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Application Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Version Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Version Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 156
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/payu/testapp/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162

    const-string v0, "testing"

    const-string v1, "mainactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 174
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 178
    :pswitch_1
    invoke-direct {p0}, Lcom/payu/testapp/MainActivity;->navigateToBaseActivity()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x7f0d0144
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 535
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 536
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 557
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 559
    const v4, 0x7f0d007d

    invoke-virtual {p0, v4}, Lcom/payu/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 561
    .local v3, "rowContainerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 563
    .local v0, "childNodeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 564
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 565
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 563
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :pswitch_0
    const-string v7, "txnid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    .line 567
    :pswitch_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 573
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    iput-boolean v5, p0, Lcom/payu/testapp/MainActivity;->verifyApiButtonClicked:Z

    .line 574
    iput-boolean v5, p0, Lcom/payu/testapp/MainActivity;->nextButtonClicked:Z

    .line 575
    return-void

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x69add05
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public saveOneClickHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cardToken"    # Ljava/lang/String;
    .param p2, "oneClickHash"    # Ljava/lang/String;

    .prologue
    .line 972
    invoke-direct {p0, p1, p2}, Lcom/payu/testapp/MainActivity;->storeMerchantHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method
