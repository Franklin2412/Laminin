.class public Lcom/payu/custombrowser/CBActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CBActivity.java"

# interfaces
.implements Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;


# static fields
.field public static STATE:I


# instance fields
.field private backButtonAlertDialog:Landroid/app/AlertDialog;

.field customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field private payUCustomBrowser:Lcom/payu/custombrowser/Bank;

.field private snoozeDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/CBActivity;)Lcom/payu/custombrowser/Bank;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/CBActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/CBActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method private showTransactionStatusDialog(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 10
    .param p1, "payuResponse"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 212
    :try_start_0
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/Bank;->setTransactionStatusReceived(Z)V

    .line 213
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "api_status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 216
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 217
    .local v4, "snoozeLayout":Landroid/view/View;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    .line 220
    const/4 v5, 0x0

    .line 221
    .local v5, "verifyApiStatus":I
    sget v6, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v6}, Lcom/payu/custombrowser/CBActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    sget v6, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v6}, Lcom/payu/custombrowser/CBActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 225
    :cond_0
    if-ne v5, v8, :cond_4

    .line 227
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v7, "snooze_notification_action"

    const-string v8, "success_screen"

    invoke-virtual {v6, v7, v8}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v6}, Lcom/payu/custombrowser/Bank;->getCurrentURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/payu/custombrowser/Bank;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x13

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v6, v7, :cond_2

    .line 230
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v7, "snooze_transaction_status_update"

    const-string v8, "data_repost"

    invoke-virtual {v6, v7, v8}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v6}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 232
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const/16 v7, 0x8

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/payu/custombrowser/Bank;->progressBarVisibilityPayuChrome(ILjava/lang/String;)V

    .line 233
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v6}, Lcom/payu/custombrowser/Bank;->reloadWebView()V

    .line 368
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "snoozeLayout":Landroid/view/View;
    .end local v5    # "verifyApiStatus":I
    :cond_1
    :goto_0
    return-void

    .line 235
    .restart local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v4    # "snoozeLayout":Landroid/view/View;
    .restart local v5    # "verifyApiStatus":I
    :cond_2
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v7, "snooze_transaction_status_update"

    const-string v8, "post_to_surl"

    invoke-virtual {v6, v7, v8}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v6, "response"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 237
    const-string v6, "response"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v7}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    iget-object v8, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v8

    const-string v9, "surl"

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/payu/custombrowser/CBActivity;->setCheckFURLSURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_3
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_status_icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 242
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_transaction_sucess:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 243
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_transaction_success_msg:I

    invoke-virtual {p0, v7}, Lcom/payu/custombrowser/CBActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 246
    sget v6, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 247
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 248
    sget v6, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 249
    sget v6, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 250
    sget v6, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 251
    sget v6, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    new-instance v7, Lcom/payu/custombrowser/CBActivity$3;

    invoke-direct {v7, p0, v2}, Lcom/payu/custombrowser/CBActivity$3;-><init>(Lcom/payu/custombrowser/CBActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 269
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 270
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 273
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/payu/custombrowser/CBActivity$4;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/CBActivity$4;-><init>(Lcom/payu/custombrowser/CBActivity;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 365
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "snoozeLayout":Landroid/view/View;
    .end local v5    # "verifyApiStatus":I
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v4    # "snoozeLayout":Landroid/view/View;
    .restart local v5    # "verifyApiStatus":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v7, "snooze_notification_action"

    const-string v8, "txn_not_confirmed"

    invoke-virtual {v6, v7, v8}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget v6, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 289
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_status_icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 290
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 291
    sget v6, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 293
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_transaction_failed_title:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 294
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_transaction_failed:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 299
    sget v6, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    sget v6, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 301
    sget v6, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 302
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 303
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_transaction_snoozed_message1:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 304
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_ac_debited_twice:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 329
    sget v6, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/payu/custombrowser/CBActivity$5;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/CBActivity$5;-><init>(Lcom/payu/custombrowser/CBActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    new-instance v7, Lcom/payu/custombrowser/CBActivity$6;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/CBActivity$6;-><init>(Lcom/payu/custombrowser/CBActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 351
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 352
    iget-object v6, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 353
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/payu/custombrowser/CBActivity$7;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/CBActivity$7;-><init>(Lcom/payu/custombrowser/CBActivity;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public hideMagicRetry()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->hideMagicRetry()V

    .line 129
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getDisableBackButtonDialog()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->showBackButtonDialog()V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v1, Lcom/payu/custombrowser/R$layout;->cb_payments:I

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/CBActivity;->setContentView(I)V

    .line 61
    new-instance v1, Lcom/payu/custombrowser/Bank;

    invoke-direct {v1}, Lcom/payu/custombrowser/Bank;-><init>()V

    iput-object v1, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cb_config"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v1, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 64
    const-string v1, "cb_config"

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->setArguments(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$id;->main_frame:I

    iget-object v3, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->backButtonAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->backButtonAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->backButtonAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->backButtonAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 140
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 142
    :cond_1
    const/4 v1, 0x3

    sput v1, Lcom/payu/custombrowser/CBActivity;->STATE:I

    .line 143
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->getSnoozeLoaderView()Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->getSnoozeLoaderView()Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->cancelAnimation()V

    .line 147
    :cond_2
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 148
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentTerminate()V

    .line 151
    :cond_3
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/CBActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 152
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/payu/custombrowser/util/CBConstant;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 154
    const-string v1, "sTag"

    const-string v2, "OnDestroy CBActivity"

    invoke-static {v1, v2}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 159
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 165
    if-eqz p1, :cond_1

    const-string v0, "sender"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "snoozeService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->killSnoozeService()V

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "verificationMsgReceived"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payu_response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/payu/custombrowser/CBActivity;->showTransactionStatusDialog(Ljava/lang/String;Landroid/content/Intent;)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cb_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 176
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_notification_action"

    const-string v2, "snooze_transaction_resumed"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "currentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mobiletest.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :cond_3
    iget-object v7, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sure_pay_cancelled"

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iget-object v5, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/payu/custombrowser/util/CBUtil;->getLogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/payu/custombrowser/Bank;->markPreviousTxnAsUserCanceled(Ljava/lang/String;)V

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_5
    const-string v0, "currentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v1, "currentUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mobiletest.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    :cond_7
    iget-object v7, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sure_pay_cancelled"

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iget-object v5, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/payu/custombrowser/util/CBUtil;->getLogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/payu/custombrowser/Bank;->markPreviousTxnAsUserCanceled(Ljava/lang/String;)V

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/payu/custombrowser/CBActivity;->STATE:I

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/payu/custombrowser/CBActivity;->STATE:I

    .line 47
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 41
    return-void
.end method

.method public setCheckFURLSURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "surl"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/custombrowser/CBActivity$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/payu/custombrowser/CBActivity$8;-><init>(Lcom/payu/custombrowser/CBActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 400
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 402
    return-void
.end method

.method public showBackButtonDialog()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    const-string v1, "Do you really want to cancel the transaction ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    const-string v1, "Ok"

    new-instance v2, Lcom/payu/custombrowser/CBActivity$1;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/CBActivity$1;-><init>(Lcom/payu/custombrowser/CBActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    const-string v1, "Cancel"

    new-instance v2, Lcom/payu/custombrowser/CBActivity$2;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/CBActivity$2;-><init>(Lcom/payu/custombrowser/CBActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    const-string v2, "user_input"

    const-string v3, "payu_back_button"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CBActivity;->backButtonAlertDialog:Landroid/app/AlertDialog;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 104
    return-void
.end method

.method public showMagicRetry()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->showMagicRetry()V

    .line 122
    return-void
.end method
