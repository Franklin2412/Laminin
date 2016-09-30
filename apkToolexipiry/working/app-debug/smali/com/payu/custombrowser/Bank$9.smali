.class Lcom/payu/custombrowser/Bank$9;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->nativeHelperForNB(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$9;->val$fields:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$9;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1066
    :try_start_0
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v7, v7, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v7, :cond_0

    .line 1067
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v7}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1071
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v8, "snooze_window_action"

    const-string v9, "snooze_window_dismissed_by_cb"

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v8, "snooze_window_automatically_disappear_time"

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_0
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v8, "NBLogin Page"

    iput-object v8, v7, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1077
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/payu/custombrowser/Bank;->timeOfArrival:Ljava/lang/String;

    .line 1078
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v8, "arrival"

    iget-object v9, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v9, v9, Lcom/payu/custombrowser/Bank;->timeOfArrival:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v7}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1080
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v8, "cb_status"

    sget-object v9, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->NB_CUSTOM_BROWSER:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->val$fields:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_1

    .line 1082
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v7}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1083
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/payu/custombrowser/R$layout;->nb_layout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1084
    .local v6, "nbView":Landroid/view/View;
    sget v7, Lcom/payu/custombrowser/R$id;->b_continue:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1085
    .local v1, "bContinue":Landroid/widget/Button;
    sget v7, Lcom/payu/custombrowser/R$id;->checkbox:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    move-object v0, v7

    check-cast v0, Landroid/widget/CheckBox;

    move-object v3, v0

    .line 1086
    .local v3, "checkBox":Landroid/widget/CheckBox;
    new-instance v5, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->val$params:Ljava/lang/String;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v5, "jsonObject":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_btn_text:I

    invoke-virtual {v7, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, "bText":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1089
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->val$fields:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_button:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1090
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_checkbox:I

    invoke-virtual {v7, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1091
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_checkbox:I

    invoke-virtual {v7, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1093
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z
    invoke-static {v7}, Lcom/payu/custombrowser/Bank;->access$200(Lcom/payu/custombrowser/Bank;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1094
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget-object v8, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->INITIAL_USER_NAME_CHECKBOX_STATUS:Ljava/lang/String;

    const-string v9, "y"

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1102
    :goto_0
    new-instance v7, Lcom/payu/custombrowser/Bank$9$1;

    invoke-direct {v7, p0, v3}, Lcom/payu/custombrowser/Bank$9$1;-><init>(Lcom/payu/custombrowser/Bank$9;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1123
    :goto_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1125
    new-instance v7, Lcom/payu/custombrowser/Bank$9$2;

    invoke-direct {v7, p0, v1}, Lcom/payu/custombrowser/Bank$9$2;-><init>(Lcom/payu/custombrowser/Bank$9;Landroid/widget/Button;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1138
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1139
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/payu/custombrowser/Bank;->nbhelpVisible:Z

    .line 1202
    .end local v1    # "bContinue":Landroid/widget/Button;
    .end local v2    # "bText":Ljava/lang/String;
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "nbView":Landroid/view/View;
    :cond_1
    :goto_2
    return-void

    .line 1097
    .restart local v1    # "bContinue":Landroid/widget/Button;
    .restart local v2    # "bText":Ljava/lang/String;
    .restart local v3    # "checkBox":Landroid/widget/CheckBox;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "nbView":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget-object v8, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->INITIAL_USER_NAME_CHECKBOX_STATUS:Ljava/lang/String;

    const-string v9, "n"

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    .end local v1    # "bContinue":Landroid/widget/Button;
    .end local v2    # "bText":Ljava/lang/String;
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "nbView":Landroid/view/View;
    :catch_0
    move-exception v4

    .line 1200
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1117
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bContinue":Landroid/widget/Button;
    .restart local v2    # "bText":Ljava/lang/String;
    .restart local v3    # "checkBox":Landroid/widget/CheckBox;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "nbView":Landroid/view/View;
    :cond_3
    const/16 v7, 0x8

    :try_start_1
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1121
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1140
    :cond_5
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->val$fields:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_pwd_btn:I

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1141
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->showToggleCheck:Z
    invoke-static {v7}, Lcom/payu/custombrowser/Bank;->access$300(Lcom/payu/custombrowser/Bank;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1143
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1146
    :goto_3
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_6

    .line 1148
    :try_start_2
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v9, v9, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v11, Lcom/payu/custombrowser/R$string;->cb_toggle_field:I

    invoke-virtual {v10, v11}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1153
    :cond_6
    :goto_4
    :try_start_3
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_show_password:I

    invoke-virtual {v7, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1155
    new-instance v7, Lcom/payu/custombrowser/Bank$9$3;

    invoke-direct {v7, p0, v3}, Lcom/payu/custombrowser/Bank$9$3;-><init>(Lcom/payu/custombrowser/Bank$9;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    new-instance v7, Lcom/payu/custombrowser/Bank$9$4;

    invoke-direct {v7, p0}, Lcom/payu/custombrowser/Bank$9$4;-><init>(Lcom/payu/custombrowser/Bank$9;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/payu/custombrowser/Bank;->nbhelpVisible:Z

    .line 1190
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1191
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1145
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 1149
    :catch_1
    move-exception v4

    .line 1150
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1195
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v7}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1196
    iget-object v7, p0, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v7, v7, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method
