.class Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;
.super Landroid/os/AsyncTask;
.source "GetPaymentRelatedDetailsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchPaymentDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;,
        Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$EmiComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/payu/india/Model/PayuConfig;",
        "Ljava/lang/String;",
        "Lcom/payu/india/Model/PayuResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;


# direct methods
.method constructor <init>(Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->this$0:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;
    .locals 54
    .param p1, "params"    # [Lcom/payu/india/Model/PayuConfig;

    .prologue
    .line 118
    new-instance v40, Lcom/payu/india/Model/PayuResponse;

    invoke-direct/range {v40 .. v40}, Lcom/payu/india/Model/PayuResponse;-><init>()V

    .line 119
    .local v40, "payuResponse":Lcom/payu/india/Model/PayuResponse;
    new-instance v41, Lcom/payu/india/Model/PostData;

    invoke-direct/range {v41 .. v41}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 122
    .local v41, "postData":Lcom/payu/india/Model/PostData;
    const/16 v47, 0x0

    .line 124
    .local v47, "url":Ljava/net/URL;
    const/16 v51, 0x0

    :try_start_0
    aget-object v39, p1, v51

    .line 127
    .local v39, "payuConfig":Lcom/payu/india/Model/PayuConfig;
    invoke-virtual/range {v39 .. v39}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v51

    packed-switch v51, :pswitch_data_0

    .line 141
    new-instance v48, Ljava/net/URL;

    const-string v51, "https://info.payu.in/merchant/postservice.php?form=2"

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v47    # "url":Ljava/net/URL;
    .local v48, "url":Ljava/net/URL;
    move-object/from16 v47, v48

    .line 145
    .end local v48    # "url":Ljava/net/URL;
    .restart local v47    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual/range {v39 .. v39}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v51

    const-string v52, "UTF-8"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v43

    .line 147
    .local v43, "postParamsByte":[B
    invoke-virtual/range {v47 .. v47}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 148
    .local v13, "conn":Ljava/net/HttpURLConnection;
    const-string v51, "POST"

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 149
    const-string v51, "Content-Type"

    const-string v52, "application/x-www-form-urlencoded"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-virtual {v13, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v51, "Content-Length"

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v52, v0

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-virtual {v13, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 152
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 154
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v45

    .line 156
    .local v45, "responseInputStream":Ljava/io/InputStream;
    new-instance v46, Ljava/lang/StringBuffer;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v46, "responseStringBuffer":Ljava/lang/StringBuffer;
    const/16 v51, 0x400

    move/from16 v0, v51

    new-array v4, v0, [B

    .line 158
    .local v4, "byteContainer":[B
    :goto_1
    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .local v23, "i":I
    const/16 v51, -0x1

    move/from16 v0, v23

    move/from16 v1, v51

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v51, Ljava/lang/String;

    const/16 v52, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v46

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 360
    .end local v4    # "byteContainer":[B
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v23    # "i":I
    .end local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v43    # "postParamsByte":[B
    .end local v45    # "responseInputStream":Ljava/io/InputStream;
    .end local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v18

    .line 361
    .local v18, "e":Ljava/net/ProtocolException;
    :goto_2
    const/16 v51, 0x1398

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 362
    const-string v51, "ERROR"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {v18 .. v18}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 378
    .end local v18    # "e":Ljava/net/ProtocolException;
    :goto_3
    invoke-virtual/range {v40 .. v41}, Lcom/payu/india/Model/PayuResponse;->setResponseStatus(Lcom/payu/india/Model/PostData;)V

    .line 379
    return-object v40

    .line 129
    .restart local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    :pswitch_0
    :try_start_1
    new-instance v48, Ljava/net/URL;

    const-string v51, "https://info.payu.in/merchant/postservice.php?form=2"

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v47    # "url":Ljava/net/URL;
    .restart local v48    # "url":Ljava/net/URL;
    move-object/from16 v47, v48

    .line 130
    .end local v48    # "url":Ljava/net/URL;
    .restart local v47    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 132
    :pswitch_1
    new-instance v48, Ljava/net/URL;

    const-string v51, "https://mobiletest.payu.in/merchant/postservice?form=2"

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v47    # "url":Ljava/net/URL;
    .restart local v48    # "url":Ljava/net/URL;
    move-object/from16 v47, v48

    .line 133
    .end local v48    # "url":Ljava/net/URL;
    .restart local v47    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 135
    :pswitch_2
    new-instance v48, Ljava/net/URL;

    const-string v51, "https://test.payu.in/merchant/postservice?form=2"

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v47    # "url":Ljava/net/URL;
    .restart local v48    # "url":Ljava/net/URL;
    move-object/from16 v47, v48

    .line 136
    .end local v48    # "url":Ljava/net/URL;
    .restart local v47    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 138
    :pswitch_3
    new-instance v48, Ljava/net/URL;

    const-string v51, "https://mobiledev.payu.in/merchant/postservice?form=2"

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v47    # "url":Ljava/net/URL;
    .restart local v48    # "url":Ljava/net/URL;
    move-object/from16 v47, v48

    .line 139
    .end local v48    # "url":Ljava/net/URL;
    .restart local v47    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 162
    .restart local v4    # "byteContainer":[B
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v23    # "i":I
    .restart local v43    # "postParamsByte":[B
    .restart local v45    # "responseInputStream":Ljava/io/InputStream;
    .restart local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v44, Lorg/json/JSONObject;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .local v44, "response":Lorg/json/JSONObject;
    const-string v51, "ibiboCodes"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_10

    .line 165
    const-string v51, "ibiboCodes"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 166
    .local v24, "ibiboCodes":Lorg/json/JSONObject;
    const-string v51, "creditcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2

    .line 167
    const-string v51, "creditcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 168
    .local v14, "creditCardCollections":Lorg/json/JSONObject;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v11, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 170
    .local v31, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_1

    .line 171
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    .local v3, "bankCode":Ljava/lang/String;
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 173
    .local v12, "ccObject":Lorg/json/JSONObject;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 174
    .local v38, "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 175
    const-string v51, "bank_id"

    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 176
    const-string v51, "title"

    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 177
    const-string v51, "pgId"

    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 364
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v4    # "byteContainer":[B
    .end local v11    # "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v12    # "ccObject":Lorg/json/JSONObject;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "creditCardCollections":Lorg/json/JSONObject;
    .end local v23    # "i":I
    .end local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    .end local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v43    # "postParamsByte":[B
    .end local v44    # "response":Lorg/json/JSONObject;
    .end local v45    # "responseInputStream":Ljava/io/InputStream;
    .end local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v18

    .line 365
    .local v18, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    const/16 v51, 0x138c

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 366
    const-string v51, "ERROR"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 180
    .end local v18    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "byteContainer":[B
    .restart local v11    # "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "creditCardCollections":Lorg/json/JSONObject;
    .restart local v23    # "i":I
    .restart local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v43    # "postParamsByte":[B
    .restart local v44    # "response":Lorg/json/JSONObject;
    .restart local v45    # "responseInputStream":Ljava/io/InputStream;
    .restart local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Lcom/payu/india/Model/PayuResponse;->setCreditCard(Ljava/util/ArrayList;)V

    .line 183
    .end local v11    # "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v14    # "creditCardCollections":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const-string v51, "debitcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_4

    .line 184
    const-string v51, "debitcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 185
    .local v17, "debitCardCollections":Lorg/json/JSONObject;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v15, "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 187
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_3

    .line 188
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    .restart local v3    # "bankCode":Ljava/lang/String;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 190
    .restart local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 191
    .local v16, "dcObject":Lorg/json/JSONObject;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 192
    const-string v51, "bank_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 193
    const-string v51, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 194
    const-string v51, "pgId"

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    .line 368
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v4    # "byteContainer":[B
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v16    # "dcObject":Lorg/json/JSONObject;
    .end local v17    # "debitCardCollections":Lorg/json/JSONObject;
    .end local v23    # "i":I
    .end local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    .end local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v43    # "postParamsByte":[B
    .end local v44    # "response":Lorg/json/JSONObject;
    .end local v45    # "responseInputStream":Ljava/io/InputStream;
    .end local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v18

    .line 369
    .local v18, "e":Lorg/json/JSONException;
    :goto_7
    const/16 v51, 0x1396

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 370
    const-string v51, "ERROR"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 197
    .end local v18    # "e":Lorg/json/JSONException;
    .restart local v4    # "byteContainer":[B
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .restart local v17    # "debitCardCollections":Lorg/json/JSONObject;
    .restart local v23    # "i":I
    .restart local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v43    # "postParamsByte":[B
    .restart local v44    # "response":Lorg/json/JSONObject;
    .restart local v45    # "responseInputStream":Ljava/io/InputStream;
    .restart local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_3
    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Lcom/payu/india/Model/PayuResponse;->setDebitCard(Ljava/util/ArrayList;)V

    .line 199
    .end local v15    # "dbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v17    # "debitCardCollections":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const-string v51, "netbanking"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_6

    .line 200
    const-string v51, "netbanking"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 201
    .local v34, "netBanksCollections":Lorg/json/JSONObject;
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 202
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v32, "nbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_5

    .line 204
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .restart local v3    # "bankCode":Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v33

    .line 206
    .local v33, "netBank":Lorg/json/JSONObject;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 207
    .restart local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 208
    const-string v51, "bank_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 209
    const-string v51, "title"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 210
    const-string v51, "pgId"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 372
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v4    # "byteContainer":[B
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v23    # "i":I
    .end local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v32    # "nbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v33    # "netBank":Lorg/json/JSONObject;
    .end local v34    # "netBanksCollections":Lorg/json/JSONObject;
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    .end local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .end local v43    # "postParamsByte":[B
    .end local v44    # "response":Lorg/json/JSONObject;
    .end local v45    # "responseInputStream":Ljava/io/InputStream;
    .end local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v18

    .line 373
    .local v18, "e":Ljava/io/IOException;
    :goto_9
    const/16 v51, 0x1398

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 374
    const-string v51, "ERROR"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 213
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v4    # "byteContainer":[B
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v23    # "i":I
    .restart local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v32    # "nbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .restart local v34    # "netBanksCollections":Lorg/json/JSONObject;
    .restart local v39    # "payuConfig":Lcom/payu/india/Model/PayuConfig;
    .restart local v43    # "postParamsByte":[B
    .restart local v44    # "response":Lorg/json/JSONObject;
    .restart local v45    # "responseInputStream":Ljava/io/InputStream;
    .restart local v46    # "responseStringBuffer":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_4
    new-instance v51, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;-><init>(Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuResponse;->setNetBanks(Ljava/util/ArrayList;)V

    .line 216
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v32    # "nbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v34    # "netBanksCollections":Lorg/json/JSONObject;
    :cond_6
    const-string v51, "cashcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_8

    .line 217
    const-string v51, "cashcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 218
    .local v8, "cashCardCollections":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 219
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v10, "cashCardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_7

    .line 221
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .restart local v3    # "bankCode":Ljava/lang/String;
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 223
    .local v9, "cashCardJson":Lorg/json/JSONObject;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 224
    .restart local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 225
    const-string v51, "bank_id"

    move-object/from16 v0, v51

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 226
    const-string v51, "title"

    move-object/from16 v0, v51

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 227
    const-string v51, "pgId"

    move-object/from16 v0, v51

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 230
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v9    # "cashCardJson":Lorg/json/JSONObject;
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    :cond_7
    new-instance v51, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$PaymentDetailsComparator;-><init>(Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;)V

    move-object/from16 v0, v51

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/payu/india/Model/PayuResponse;->setCashCard(Ljava/util/ArrayList;)V

    .line 233
    .end local v8    # "cashCardCollections":Lorg/json/JSONObject;
    .end local v10    # "cashCardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    const-string v51, "ivr"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_a

    .line 234
    const-string v51, "ivr"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 235
    .local v25, "ivrCCCollections":Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 236
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v26, "ivrCCList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    :goto_b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_9

    .line 238
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    .restart local v3    # "bankCode":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 240
    .local v29, "ivrccObject":Lorg/json/JSONObject;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 241
    .restart local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 242
    const-string v51, "bank_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 243
    const-string v51, "title"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 244
    const-string v51, "pgId"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 247
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v29    # "ivrccObject":Lorg/json/JSONObject;
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    :cond_9
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuResponse;->setIvr(Ljava/util/ArrayList;)V

    .line 250
    .end local v25    # "ivrCCCollections":Lorg/json/JSONObject;
    .end local v26    # "ivrCCList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    const-string v51, "ivrdc"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_c

    .line 251
    const-string v51, "ivrdc"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 252
    .local v27, "ivrDCCollections":Lorg/json/JSONObject;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 253
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v28, "ivrDCList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    :goto_c
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_b

    .line 255
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 256
    .restart local v3    # "bankCode":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    .line 257
    .local v30, "ivrdcObject":Lorg/json/JSONObject;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 258
    .restart local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 259
    const-string v51, "bank_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 260
    const-string v51, "title"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 261
    const-string v51, "pgId"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 264
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v30    # "ivrdcObject":Lorg/json/JSONObject;
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    :cond_b
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuResponse;->setIvrdc(Ljava/util/ArrayList;)V

    .line 267
    .end local v27    # "ivrDCCollections":Lorg/json/JSONObject;
    .end local v28    # "ivrDCList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    const-string v51, "paisawallet"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_e

    .line 268
    const-string v51, "paisawallet"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    .line 269
    .local v36, "paisaWalletCollections":Lorg/json/JSONObject;
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 270
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v37, "paisaWalletList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    :goto_d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_d

    .line 272
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .restart local v3    # "bankCode":Ljava/lang/String;
    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    .line 274
    .local v35, "paisaWallet":Lorg/json/JSONObject;
    new-instance v38, Lcom/payu/india/Model/PaymentDetails;

    invoke-direct/range {v38 .. v38}, Lcom/payu/india/Model/PaymentDetails;-><init>()V

    .line 275
    .restart local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/PaymentDetails;->setBankCode(Ljava/lang/String;)V

    .line 276
    const-string v51, "bank_id"

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankId(Ljava/lang/String;)V

    .line 277
    const-string v51, "title"

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setBankName(Ljava/lang/String;)V

    .line 278
    const-string v51, "pgId"

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PaymentDetails;->setPgId(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 281
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v35    # "paisaWallet":Lorg/json/JSONObject;
    .end local v38    # "paymentDetails":Lcom/payu/india/Model/PaymentDetails;
    :cond_d
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuResponse;->setPaisaWallet(Ljava/util/ArrayList;)V

    .line 284
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v36    # "paisaWalletCollections":Lorg/json/JSONObject;
    .end local v37    # "paisaWalletList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    :cond_e
    const-string v51, "emi"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_10

    .line 285
    const-string v51, "emi"

    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 286
    .local v22, "emiObjectCollections":Lorg/json/JSONObject;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 287
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v20, "emiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/Emi;>;"
    :goto_e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_f

    .line 289
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    .restart local v3    # "bankCode":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 291
    .local v21, "emiObject":Lorg/json/JSONObject;
    new-instance v19, Lcom/payu/india/Model/Emi;

    invoke-direct/range {v19 .. v19}, Lcom/payu/india/Model/Emi;-><init>()V

    .line 292
    .local v19, "emi":Lcom/payu/india/Model/Emi;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/Emi;->setBankCode(Ljava/lang/String;)V

    .line 293
    const-string v51, "bank"

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v19

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/Emi;->setBankName(Ljava/lang/String;)V

    .line 294
    const-string v51, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v19

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/Emi;->setBankTitle(Ljava/lang/String;)V

    .line 295
    const-string v51, "pgId"

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v19

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/Emi;->setPgId(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 298
    .end local v3    # "bankCode":Ljava/lang/String;
    .end local v19    # "emi":Lcom/payu/india/Model/Emi;
    .end local v21    # "emiObject":Lorg/json/JSONObject;
    :cond_f
    new-instance v51, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$EmiComparator;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask$EmiComparator;-><init>(Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuResponse;->setEmi(Ljava/util/ArrayList;)V

    .line 303
    .end local v20    # "emiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/Emi;>;"
    .end local v22    # "emiObjectCollections":Lorg/json/JSONObject;
    .end local v24    # "ibiboCodes":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_10
    const-string v51, "userCards"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_15

    .line 304
    const-string v51, "userCards"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v51

    const-string v52, "user_cards"

    invoke-virtual/range {v51 .. v52}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_15

    .line 305
    const-string v51, "userCards"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v51

    const-string v52, "user_cards"

    invoke-virtual/range {v51 .. v52}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 306
    .local v7, "cardsList":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v31

    .line 307
    .restart local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v50, "userCardArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    :goto_f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_14

    .line 310
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 311
    .local v6, "cardToken":Ljava/lang/String;
    new-instance v49, Lcom/payu/india/Model/StoredCard;

    invoke-direct/range {v49 .. v49}, Lcom/payu/india/Model/StoredCard;-><init>()V

    .line 312
    .local v49, "userCard":Lcom/payu/india/Model/StoredCard;
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 314
    .local v5, "card":Lorg/json/JSONObject;
    const-string v51, "name_on_card"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setNameOnCard(Ljava/lang/String;)V

    .line 315
    const-string v51, "card_name"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setCardName(Ljava/lang/String;)V

    .line 316
    const-string v51, "expiry_year"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setExpiryYear(Ljava/lang/String;)V

    .line 317
    const-string v51, "expiry_month"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setExpiryMonth(Ljava/lang/String;)V

    .line 318
    const-string v51, "card_type"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setCardType(Ljava/lang/String;)V

    .line 319
    const-string v51, "card_token"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setCardToken(Ljava/lang/String;)V

    .line 320
    const-string v51, "is_expired"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v51

    if-nez v51, :cond_12

    const/16 v51, 0x0

    :goto_10
    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setIsExpired(Ljava/lang/Boolean;)V

    .line 321
    const-string v51, "card_mode"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setCardMode(Ljava/lang/String;)V

    .line 322
    const-string v51, "card_no"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setMaskedCardNumber(Ljava/lang/String;)V

    .line 323
    const-string v51, "card_brand"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setCardBrand(Ljava/lang/String;)V

    .line 324
    const-string v51, "card_bin"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setCardBin(Ljava/lang/String;)V

    .line 325
    const-string v51, "isDomestic"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setIsDomestic(Ljava/lang/String;)V

    .line 326
    const-string v51, "issuingBank"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setIssuingBank(Ljava/lang/String;)V

    .line 328
    const-string v51, "card_cvv"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_11

    .line 329
    const-string v51, "card_cvv"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v51

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setEnableOneClickPayment(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->this$0:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->mOneClickCardTokens:Ljava/util/HashMap;

    move-object/from16 v51, v0

    if-eqz v51, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->this$0:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->mOneClickCardTokens:Ljava/util/HashMap;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v49}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    if-eqz v51, :cond_13

    .line 331
    const-string v51, "card_cvv"

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v51

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setOneTapCard(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->this$0:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->mOneClickCardTokens:Ljava/util/HashMap;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v49}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setMerchantHash(Ljava/lang/String;)V

    .line 339
    :cond_11
    :goto_11
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 320
    :cond_12
    const/16 v51, 0x1

    goto/16 :goto_10

    .line 335
    :cond_13
    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setOneTapCard(I)V

    .line 336
    const/16 v51, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/StoredCard;->setMerchantHash(Ljava/lang/String;)V

    goto :goto_11

    .line 342
    .end local v5    # "card":Lorg/json/JSONObject;
    .end local v6    # "cardToken":Ljava/lang/String;
    .end local v49    # "userCard":Lcom/payu/india/Model/StoredCard;
    :cond_14
    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PayuResponse;->setStoredCards(Ljava/util/ArrayList;)V

    .line 346
    .end local v7    # "cardsList":Lorg/json/JSONObject;
    .end local v31    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v50    # "userCardArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    :cond_15
    const-string v51, "status"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_16

    const-string v51, "status"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string v52, "0"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_16

    .line 347
    new-instance v42, Lcom/payu/india/Model/PostData;

    invoke-direct/range {v42 .. v42}, Lcom/payu/india/Model/PostData;-><init>()V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 348
    .end local v41    # "postData":Lcom/payu/india/Model/PostData;
    .local v42, "postData":Lcom/payu/india/Model/PostData;
    const/16 v51, 0x139b

    :try_start_5
    move-object/from16 v0, v42

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 349
    const-string v51, "ERROR"

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 350
    const-string v51, "msg"

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v41, v42

    .end local v42    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v41    # "postData":Lcom/payu/india/Model/PostData;
    goto/16 :goto_3

    .line 353
    :cond_16
    const/16 v51, 0x0

    :try_start_6
    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 355
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Data fetched successfully, Stored card status: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "userCards"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v52

    const-string v53, "msg"

    invoke-virtual/range {v52 .. v53}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 356
    const-string v51, "SUCCESS"

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 372
    .end local v41    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v42    # "postData":Lcom/payu/india/Model/PostData;
    :catch_4
    move-exception v18

    move-object/from16 v41, v42

    .end local v42    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v41    # "postData":Lcom/payu/india/Model/PostData;
    goto/16 :goto_9

    .line 368
    .end local v41    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v42    # "postData":Lcom/payu/india/Model/PostData;
    :catch_5
    move-exception v18

    move-object/from16 v41, v42

    .end local v42    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v41    # "postData":Lcom/payu/india/Model/PostData;
    goto/16 :goto_7

    .line 364
    .end local v41    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v42    # "postData":Lcom/payu/india/Model/PostData;
    :catch_6
    move-exception v18

    move-object/from16 v41, v42

    .end local v42    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v41    # "postData":Lcom/payu/india/Model/PostData;
    goto/16 :goto_5

    .line 360
    .end local v41    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v42    # "postData":Lcom/payu/india/Model/PostData;
    :catch_7
    move-exception v18

    move-object/from16 v41, v42

    .end local v42    # "postData":Lcom/payu/india/Model/PostData;
    .restart local v41    # "postData":Lcom/payu/india/Model/PostData;
    goto/16 :goto_2

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, [Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->doInBackground([Lcom/payu/india/Model/PayuConfig;)Lcom/payu/india/Model/PayuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/payu/india/Model/PayuResponse;)V
    .locals 1
    .param p1, "payuResponse"    # Lcom/payu/india/Model/PayuResponse;

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->this$0:Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;

    iget-object v0, v0, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask;->mPaymentRelatedDetailsListener:Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;

    invoke-interface {v0, p1}, Lcom/payu/india/Interfaces/PaymentRelatedDetailsListener;->onPaymentRelatedDetailsResponse(Lcom/payu/india/Model/PayuResponse;)V

    .line 386
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/payu/india/Model/PayuResponse;

    invoke-virtual {p0, p1}, Lcom/payu/india/Tasks/GetPaymentRelatedDetailsTask$FetchPaymentDetailsTask;->onPostExecute(Lcom/payu/india/Model/PayuResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 113
    return-void
.end method
