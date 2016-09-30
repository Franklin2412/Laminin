.class Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;
.super Ljava/lang/Object;
.source "GetPaymentRelatedDetailsTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaymentDetailsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/payu/india/Model/PaymentDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;


# direct methods
.method constructor <init>(Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;->this$1:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/payu/india/Model/PaymentDetails;Lcom/payu/india/Model/PaymentDetails;)I
    .locals 2
    .param p1, "p1"    # Lcom/payu/india/Model/PaymentDetails;
    .param p2, "p2"    # Lcom/payu/india/Model/PaymentDetails;

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/payu/india/Model/PaymentDetails;->getBankName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/payu/india/Model/PaymentDetails;->getBankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 398
    check-cast p1, Lcom/payu/india/Model/PaymentDetails;

    check-cast p2, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {p0, p1, p2}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;->compare(Lcom/payu/india/Model/PaymentDetails;Lcom/payu/india/Model/PaymentDetails;)I

    move-result v0

    return v0
.end method
