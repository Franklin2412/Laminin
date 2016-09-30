package com.payu.payuui.Activity;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.payu.india.Extras.PayUChecksum;
import com.payu.india.Interfaces.CheckOfferDetailsApiListener;
import com.payu.india.Interfaces.DeleteCardApiListener;
import com.payu.india.Interfaces.DeleteCvvApiListener;
import com.payu.india.Interfaces.EditCardApiListener;
import com.payu.india.Interfaces.GetCardInformationApiListener;
import com.payu.india.Interfaces.GetEmiAmountAccordingToInterestApiListener;
import com.payu.india.Interfaces.GetIbiboCodesApiListener;
import com.payu.india.Interfaces.GetOfferStatusApiListener;
import com.payu.india.Interfaces.GetStoredCardApiListener;
import com.payu.india.Interfaces.GetTransactionInfoApiListener;
import com.payu.india.Interfaces.PaymentRelatedDetailsListener;
import com.payu.india.Interfaces.SaveCardApiListener;
import com.payu.india.Interfaces.ValueAddedServiceApiListener;
import com.payu.india.Interfaces.VerifyPaymentApiListener;
import com.payu.india.Model.CardStatus;
import com.payu.india.Model.MerchantWebService;
import com.payu.india.Model.PaymentDetails;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuEmiAmountAccordingToInterest;
import com.payu.india.Model.PayuHashes;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Model.StoredCard;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.india.PostParams.MerchantWebServicePostParams;
import com.payu.india.Tasks.CheckOfferDetailsTask;
import com.payu.india.Tasks.DeleteCardTask;
import com.payu.india.Tasks.DeleteCvvTask;
import com.payu.india.Tasks.EditCardTask;
import com.payu.india.Tasks.GetCardInformationTask;
import com.payu.india.Tasks.GetEmiAmountAccordingToInterestTask;
import com.payu.india.Tasks.GetIbiboCodesTask;
import com.payu.india.Tasks.GetOfferStatusTask;
import com.payu.india.Tasks.GetPaymentRelatedDetailsTask;
import com.payu.india.Tasks.GetStoredCardTask;
import com.payu.india.Tasks.GetTransactionInfoTask;
import com.payu.india.Tasks.SaveCardTask;
import com.payu.india.Tasks.ValueAddedServiceTask;
import com.payu.india.Tasks.VerifyPaymentTask;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

public class VerifyApiActivity extends AppCompatActivity implements OnClickListener, GetStoredCardApiListener, SaveCardApiListener, EditCardApiListener, DeleteCardApiListener, GetCardInformationApiListener, GetIbiboCodesApiListener, ValueAddedServiceApiListener, GetTransactionInfoApiListener, GetOfferStatusApiListener, VerifyPaymentApiListener, DeleteCvvApiListener, CheckOfferDetailsApiListener, PaymentRelatedDetailsListener, GetEmiAmountAccordingToInterestApiListener {
    private Bundle bundle;
    private Button checkOfferDetailsButton;
    private Button deleteCvvButton;
    private Boolean deleteUserCard;
    private Button deleteUserCardButton;
    private Boolean editUserCard;
    private Button editUserCardButton;
    private Button getCardInformationButton;
    private Button getEmiAmoutAccordingToInterest;
    private Button getIbiboCodeButton;
    private Button getOfferStatusButton;
    private Button getTransactionInformationButton;
    private Boolean getUserCard;
    private Button getUserCardsButton;
    private Button getValueAddedServiceButton;
    private PaymentParams mPaymentParams;
    private PayuHashes mPayuHashes;
    private MerchantWebService merchantWebService;
    private ArrayList<PaymentDetails> netBankingList;
    private PayuConfig payuConfig;
    private PostData postData;
    ProgressDialog progressDialog;
    private StoredCard selectedUserCard;
    private Button storeUserCardButton;
    private ArrayList<StoredCard> storedCardsList;
    private Button verifyTransactionButton;

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.12 */
    class AnonymousClass12 implements OnItemSelectedListener {
        final /* synthetic */ EditText val$cardExpiryMonthEditText;
        final /* synthetic */ EditText val$cardExpiryYearEditText;
        final /* synthetic */ EditText val$cardHolderNameEditText;
        final /* synthetic */ EditText val$cardNameEditText;
        final /* synthetic */ EditText val$cardNumberEditText;

        AnonymousClass12(EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5) {
            this.val$cardNumberEditText = editText;
            this.val$cardHolderNameEditText = editText2;
            this.val$cardNameEditText = editText3;
            this.val$cardExpiryMonthEditText = editText4;
            this.val$cardExpiryYearEditText = editText5;
        }

        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            VerifyApiActivity.this.selectedUserCard = (StoredCard) adapterView.getSelectedItem();
            this.val$cardNumberEditText.setHint(VerifyApiActivity.this.selectedUserCard.getMaskedCardNumber());
            this.val$cardHolderNameEditText.setText(VerifyApiActivity.this.selectedUserCard.getNameOnCard());
            this.val$cardNameEditText.setText(VerifyApiActivity.this.selectedUserCard.getCardName());
            this.val$cardExpiryMonthEditText.setText(VerifyApiActivity.this.selectedUserCard.getExpiryMonth());
            this.val$cardExpiryYearEditText.setText(VerifyApiActivity.this.selectedUserCard.getExpiryYear());
        }

        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.15 */
    class AnonymousClass15 implements OnClickListener {
        final /* synthetic */ EditText val$cardExpiryMonthEditText;
        final /* synthetic */ EditText val$cardExpiryYearEditText;
        final /* synthetic */ EditText val$cardHolderNameEditText;
        final /* synthetic */ EditText val$cardNameEditText;
        final /* synthetic */ EditText val$cardNumberEditText;
        final /* synthetic */ AlertDialog val$editUserCardDialog;

        AnonymousClass15(EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, AlertDialog alertDialog) {
            this.val$cardNameEditText = editText;
            this.val$cardHolderNameEditText = editText2;
            this.val$cardNumberEditText = editText3;
            this.val$cardExpiryMonthEditText = editText4;
            this.val$cardExpiryYearEditText = editText5;
            this.val$editUserCardDialog = alertDialog;
        }

        public void onClick(View view) {
            if (VerifyApiActivity.this.selectedUserCard != null) {
                VerifyApiActivity.this.merchantWebService = new MerchantWebService();
                VerifyApiActivity.this.merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
                VerifyApiActivity.this.merchantWebService.setCommand(PayuConstants.EDIT_USER_CARD);
                VerifyApiActivity.this.merchantWebService.setHash(VerifyApiActivity.this.mPayuHashes.getEditCardHash());
                VerifyApiActivity.this.merchantWebService.setVar1(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
                VerifyApiActivity.this.merchantWebService.setVar2(VerifyApiActivity.this.selectedUserCard.getCardToken());
                VerifyApiActivity.this.merchantWebService.setVar3(this.val$cardNameEditText.getText().toString());
                VerifyApiActivity.this.merchantWebService.setVar4(VerifyApiActivity.this.selectedUserCard.getCardMode());
                VerifyApiActivity.this.merchantWebService.setVar5(VerifyApiActivity.this.selectedUserCard.getCardType());
                VerifyApiActivity.this.merchantWebService.setVar6(this.val$cardHolderNameEditText.getText().toString());
                VerifyApiActivity.this.merchantWebService.setVar7(this.val$cardNumberEditText.getText().toString());
                VerifyApiActivity.this.merchantWebService.setVar8(this.val$cardExpiryMonthEditText.getText().toString());
                VerifyApiActivity.this.merchantWebService.setVar9(this.val$cardExpiryYearEditText.getText().toString());
                VerifyApiActivity.this.postData = new MerchantWebServicePostParams(VerifyApiActivity.this.merchantWebService).getMerchantWebServicePostParams();
                if (VerifyApiActivity.this.postData.getCode() == 0) {
                    VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                    new EditCardTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                    this.val$editUserCardDialog.dismiss();
                    return;
                }
                Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
            }
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.1 */
    class AnonymousClass1 implements OnClickListener {
        final /* synthetic */ Dialog val$dialog;
        final /* synthetic */ EditText val$inputEditText;

        AnonymousClass1(EditText editText, Dialog dialog) {
            this.val$inputEditText = editText;
            this.val$dialog = dialog;
        }

        public void onClick(View view) {
            VerifyApiActivity.this.merchantWebService = new MerchantWebService();
            VerifyApiActivity.this.merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            VerifyApiActivity.this.merchantWebService.setCommand(PayuConstants.API_GET_EMI_AMOUNT_ACCORDING_INTEREST);
            PayUChecksum payUChecksum = new PayUChecksum();
            payUChecksum.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            payUChecksum.setCommand(PayuConstants.API_GET_EMI_AMOUNT_ACCORDING_INTEREST);
            payUChecksum.setVar1(this.val$inputEditText.getText().toString());
            payUChecksum.setSalt(VerifyApiActivity.this.bundle.getString(PayuConstants.SALT));
            if (VerifyApiActivity.this.postData = payUChecksum.getHash() != null && VerifyApiActivity.this.postData.getCode() == 0) {
                VerifyApiActivity.this.merchantWebService.setHash(VerifyApiActivity.this.postData.getResult());
            }
            VerifyApiActivity.this.merchantWebService.setVar1(this.val$inputEditText.getText().toString());
            VerifyApiActivity.this.postData = new MerchantWebServicePostParams(VerifyApiActivity.this.merchantWebService).getMerchantWebServicePostParams();
            if (VerifyApiActivity.this.postData.getCode() == 0) {
                VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                new GetEmiAmountAccordingToInterestTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                this.val$dialog.dismiss();
                return;
            }
            Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.20 */
    class AnonymousClass20 implements OnClickListener {
        final /* synthetic */ EditText val$cardNumberEditText;
        final /* synthetic */ AlertDialog val$getCardInfomationAlertDialog;
        final /* synthetic */ PayuUtils val$payuUtils;

        AnonymousClass20(EditText editText, PayuUtils payuUtils, AlertDialog alertDialog) {
            this.val$cardNumberEditText = editText;
            this.val$payuUtils = payuUtils;
            this.val$getCardInfomationAlertDialog = alertDialog;
        }

        public void onClick(View view) {
            String obj = this.val$cardNumberEditText.getText().toString();
            if (obj == null || !this.val$payuUtils.validateCardNumber(obj).booleanValue()) {
                Toast.makeText(VerifyApiActivity.this, "Invalid card number", 1).show();
                return;
            }
            PayUChecksum payUChecksum = new PayUChecksum();
            payUChecksum.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            payUChecksum.setCommand(PayuConstants.CHECK_IS_DOMESTIC);
            payUChecksum.setVar1(this.val$cardNumberEditText.getText().toString().substring(0, 6));
            payUChecksum.setSalt(VerifyApiActivity.this.bundle.getString(PayuConstants.SALT));
            MerchantWebService merchantWebService = new MerchantWebService();
            merchantWebService.setCommand(PayuConstants.CHECK_IS_DOMESTIC);
            merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            merchantWebService.setHash(payUChecksum.getHash().getResult());
            merchantWebService.setVar1(this.val$cardNumberEditText.getText().toString().substring(0, 6));
            VerifyApiActivity.this.postData = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
            if (VerifyApiActivity.this.postData.getCode() == 0) {
                VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                new GetCardInformationTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                this.val$getCardInfomationAlertDialog.dismiss();
                return;
            }
            Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.24 */
    class AnonymousClass24 implements OnClickListener {
        final /* synthetic */ EditText val$fromDateEditText;
        final /* synthetic */ AlertDialog val$getTransactionInformationAlertDialog;

        AnonymousClass24(EditText editText, AlertDialog alertDialog) {
            this.val$fromDateEditText = editText;
            this.val$getTransactionInformationAlertDialog = alertDialog;
        }

        public void onClick(View view) {
            PayUChecksum payUChecksum = new PayUChecksum();
            payUChecksum.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            payUChecksum.setCommand(PayuConstants.GET_TRANSACTION_INFO);
            payUChecksum.setVar1(this.val$fromDateEditText.getText().toString());
            payUChecksum.setSalt(VerifyApiActivity.this.bundle.getString(PayuConstants.SALT));
            if (VerifyApiActivity.this.postData = payUChecksum.getHash() == null || VerifyApiActivity.this.postData.getCode() != 0) {
                Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
                return;
            }
            MerchantWebService merchantWebService = new MerchantWebService();
            merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            merchantWebService.setCommand(PayuConstants.GET_TRANSACTION_INFO);
            merchantWebService.setHash(VerifyApiActivity.this.postData.getResult());
            merchantWebService.setVar1(this.val$fromDateEditText.getText().toString());
            merchantWebService.setVar2(this.val$fromDateEditText.getText().toString());
            if (VerifyApiActivity.this.postData = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams() == null || VerifyApiActivity.this.postData.getCode() != 0) {
                Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
                return;
            }
            VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
            new GetTransactionInfoTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
            this.val$getTransactionInformationAlertDialog.dismiss();
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.25 */
    class AnonymousClass25 implements OnItemSelectedListener {
        final /* synthetic */ LinearLayout val$netBankingLinearLayout;
        final /* synthetic */ LinearLayout val$newCardLinearLayout;
        final /* synthetic */ LinearLayout val$storedCardLinearLayout;

        AnonymousClass25(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3) {
            this.val$newCardLinearLayout = linearLayout;
            this.val$storedCardLinearLayout = linearLayout2;
            this.val$netBankingLinearLayout = linearLayout3;
        }

        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    this.val$newCardLinearLayout.setVisibility(0);
                    this.val$storedCardLinearLayout.setVisibility(8);
                    this.val$netBankingLinearLayout.setVisibility(8);
                case R.styleable.WaitingDots_period /*1*/:
                    this.val$newCardLinearLayout.setVisibility(8);
                    this.val$storedCardLinearLayout.setVisibility(0);
                    this.val$netBankingLinearLayout.setVisibility(8);
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    this.val$newCardLinearLayout.setVisibility(8);
                    this.val$storedCardLinearLayout.setVisibility(8);
                    this.val$netBankingLinearLayout.setVisibility(0);
                default:
                    this.val$newCardLinearLayout.setVisibility(0);
                    this.val$storedCardLinearLayout.setVisibility(8);
                    this.val$netBankingLinearLayout.setVisibility(8);
            }
        }

        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.28 */
    class AnonymousClass28 implements OnClickListener {
        final /* synthetic */ AlertDialog val$getOfferDetailsDialog;
        final /* synthetic */ LinearLayout val$netBankingLinearLayout;
        final /* synthetic */ Spinner val$netBankingSpinner;
        final /* synthetic */ LinearLayout val$newCardLinearLayout;
        final /* synthetic */ EditText val$offerCardNumberEditText;
        final /* synthetic */ EditText val$offerNameOnCardEditText;
        final /* synthetic */ EditText val$offerPaymentModeEditText;
        final /* synthetic */ LinearLayout val$storedCardLinearLayout;
        final /* synthetic */ Spinner val$storedCardSpinner;

        AnonymousClass28(LinearLayout linearLayout, Spinner spinner, LinearLayout linearLayout2, EditText editText, EditText editText2, EditText editText3, LinearLayout linearLayout3, Spinner spinner2, AlertDialog alertDialog) {
            this.val$netBankingLinearLayout = linearLayout;
            this.val$netBankingSpinner = spinner;
            this.val$newCardLinearLayout = linearLayout2;
            this.val$offerPaymentModeEditText = editText;
            this.val$offerCardNumberEditText = editText2;
            this.val$offerNameOnCardEditText = editText3;
            this.val$storedCardLinearLayout = linearLayout3;
            this.val$storedCardSpinner = spinner2;
            this.val$getOfferDetailsDialog = alertDialog;
        }

        public void onClick(View view) {
            VerifyApiActivity.this.merchantWebService = new MerchantWebService();
            VerifyApiActivity.this.merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            VerifyApiActivity.this.merchantWebService.setCommand(PayuConstants.CHECK_OFFER_STATUS);
            VerifyApiActivity.this.merchantWebService.setHash(VerifyApiActivity.this.mPayuHashes.getCheckOfferStatusHash());
            VerifyApiActivity.this.merchantWebService.setVar1(VerifyApiActivity.this.mPaymentParams.getOfferKey());
            VerifyApiActivity.this.merchantWebService.setVar2(VerifyApiActivity.this.mPaymentParams.getAmount());
            if (this.val$netBankingLinearLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar3(PayuConstants.NB);
                VerifyApiActivity.this.merchantWebService.setVar4(((PaymentDetails) VerifyApiActivity.this.netBankingList.get(this.val$netBankingSpinner.getSelectedItemPosition())).getBankCode());
            }
            if (this.val$newCardLinearLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar3(this.val$offerPaymentModeEditText.getText().toString());
                VerifyApiActivity.this.merchantWebService.setVar4(this.val$offerCardNumberEditText.getText().toString().startsWith("4") ? PayuConstants.VISA : PayuConstants.MAST);
                VerifyApiActivity.this.merchantWebService.setVar5(this.val$offerCardNumberEditText.getText().toString());
                VerifyApiActivity.this.merchantWebService.setVar6(this.val$offerNameOnCardEditText.getText().toString());
            } else {
                VerifyApiActivity.this.merchantWebService.setVar5(BuildConfig.VERSION_NAME);
                VerifyApiActivity.this.merchantWebService.setVar6(BuildConfig.VERSION_NAME);
            }
            VerifyApiActivity.this.merchantWebService.setVar7(VerifyApiActivity.this.mPaymentParams.getPhone());
            VerifyApiActivity.this.merchantWebService.setVar8(VerifyApiActivity.this.mPaymentParams.getEmail());
            VerifyApiActivity.this.merchantWebService.setVar9(BuildConfig.VERSION_NAME);
            if (this.val$storedCardLinearLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar3(((StoredCard) VerifyApiActivity.this.storedCardsList.get(this.val$storedCardSpinner.getSelectedItemPosition())).getCardMode());
                VerifyApiActivity.this.merchantWebService.setVar4(((StoredCard) VerifyApiActivity.this.storedCardsList.get(this.val$storedCardSpinner.getSelectedItemPosition())).getCardBin().startsWith("4") ? PayuConstants.VISA : PayuConstants.MAST);
                VerifyApiActivity.this.merchantWebService.setVar10(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
                VerifyApiActivity.this.merchantWebService.setVar11(((StoredCard) VerifyApiActivity.this.storedCardsList.get(this.val$storedCardSpinner.getSelectedItemPosition())).getCardToken());
            }
            VerifyApiActivity.this.postData = new MerchantWebServicePostParams(VerifyApiActivity.this.merchantWebService).getMerchantWebServicePostParams();
            if (VerifyApiActivity.this.postData.getCode() == 0) {
                VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                new GetOfferStatusTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                this.val$getOfferDetailsDialog.dismiss();
                return;
            }
            Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.2 */
    class AnonymousClass2 implements OnItemSelectedListener {
        final /* synthetic */ LinearLayout val$bankCodeLayout;
        final /* synthetic */ LinearLayout val$cardNumberLayout;
        final /* synthetic */ LinearLayout val$netBankingLayout;
        final /* synthetic */ LinearLayout val$userCredentialsAndTokenLayout;
        final /* synthetic */ EditText val$userCredentialsEditText;
        final /* synthetic */ LinearLayout val$userCredentialsLayout;

        AnonymousClass2(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, EditText editText) {
            this.val$cardNumberLayout = linearLayout;
            this.val$userCredentialsLayout = linearLayout2;
            this.val$userCredentialsAndTokenLayout = linearLayout3;
            this.val$netBankingLayout = linearLayout4;
            this.val$bankCodeLayout = linearLayout5;
            this.val$userCredentialsEditText = editText;
        }

        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    this.val$cardNumberLayout.setVisibility(0);
                    this.val$userCredentialsLayout.setVisibility(8);
                    this.val$userCredentialsAndTokenLayout.setVisibility(8);
                    this.val$netBankingLayout.setVisibility(8);
                    this.val$bankCodeLayout.setVisibility(8);
                case R.styleable.WaitingDots_period /*1*/:
                    this.val$cardNumberLayout.setVisibility(8);
                    this.val$userCredentialsLayout.setVisibility(0);
                    this.val$userCredentialsAndTokenLayout.setVisibility(8);
                    this.val$netBankingLayout.setVisibility(8);
                    this.val$bankCodeLayout.setVisibility(8);
                    this.val$userCredentialsEditText.setText(VerifyApiActivity.this.mPaymentParams.getUserCredentials() == null ? BuildConfig.VERSION_NAME : VerifyApiActivity.this.mPaymentParams.getUserCredentials());
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    this.val$cardNumberLayout.setVisibility(8);
                    this.val$userCredentialsLayout.setVisibility(8);
                    this.val$userCredentialsAndTokenLayout.setVisibility(0);
                    this.val$netBankingLayout.setVisibility(8);
                    this.val$bankCodeLayout.setVisibility(8);
                case R.styleable.WaitingDots_autoplay /*3*/:
                    this.val$cardNumberLayout.setVisibility(8);
                    this.val$userCredentialsLayout.setVisibility(8);
                    this.val$userCredentialsAndTokenLayout.setVisibility(8);
                    this.val$netBankingLayout.setVisibility(0);
                    this.val$bankCodeLayout.setVisibility(8);
                case R.styleable.View_theme /*4*/:
                    this.val$cardNumberLayout.setVisibility(8);
                    this.val$userCredentialsLayout.setVisibility(8);
                    this.val$userCredentialsAndTokenLayout.setVisibility(8);
                    this.val$netBankingLayout.setVisibility(8);
                    this.val$bankCodeLayout.setVisibility(0);
                default:
                    this.val$cardNumberLayout.setVisibility(0);
                    this.val$userCredentialsLayout.setVisibility(8);
                    this.val$userCredentialsAndTokenLayout.setVisibility(8);
                    this.val$netBankingLayout.setVisibility(8);
                    this.val$bankCodeLayout.setVisibility(8);
            }
        }

        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.31 */
    class AnonymousClass31 implements OnClickListener {
        final /* synthetic */ AlertDialog val$verifyPaymentDialog;
        final /* synthetic */ EditText val$verifyPaymentTransactionIdEditText;

        AnonymousClass31(EditText editText, AlertDialog alertDialog) {
            this.val$verifyPaymentTransactionIdEditText = editText;
            this.val$verifyPaymentDialog = alertDialog;
        }

        public void onClick(View view) {
            PayUChecksum payUChecksum = new PayUChecksum();
            payUChecksum.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            payUChecksum.setCommand(PayuConstants.VERIFY_PAYMENT);
            payUChecksum.setVar1(this.val$verifyPaymentTransactionIdEditText.getText().toString());
            payUChecksum.setSalt(VerifyApiActivity.this.bundle.getString(PayuConstants.SALT));
            if (VerifyApiActivity.this.postData = payUChecksum.getHash() == null || VerifyApiActivity.this.postData.getCode() != 0) {
                Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
                return;
            }
            MerchantWebService merchantWebService = new MerchantWebService();
            merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            merchantWebService.setCommand(PayuConstants.VERIFY_PAYMENT);
            merchantWebService.setHash(VerifyApiActivity.this.postData.getResult());
            merchantWebService.setVar1(this.val$verifyPaymentTransactionIdEditText.getText().toString());
            if (VerifyApiActivity.this.postData = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams() == null || VerifyApiActivity.this.postData.getCode() != 0) {
                Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
                return;
            }
            VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
            new VerifyPaymentTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
            this.val$verifyPaymentDialog.dismiss();
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.35 */
    class AnonymousClass35 implements OnClickListener {
        final /* synthetic */ TextView val$filteredResults;
        final /* synthetic */ EditText val$inputEditText;
        final /* synthetic */ PayuResponse val$payuResponse;

        AnonymousClass35(EditText editText, PayuResponse payuResponse, TextView textView) {
            this.val$inputEditText = editText;
            this.val$payuResponse = payuResponse;
            this.val$filteredResults = textView;
        }

        public void onClick(View view) {
            VerifyApiActivity verifyApiActivity = VerifyApiActivity.this;
            VerifyApiActivity verifyApiActivity2 = VerifyApiActivity.this;
            ((InputMethodManager) verifyApiActivity.getSystemService("input_method")).hideSoftInputFromWindow(this.val$inputEditText.getWindowToken(), 2);
            String[] split = this.val$inputEditText.getText().toString().split(",");
            CharSequence charSequence = "No results found";
            if (split.length >= 2) {
                PayuEmiAmountAccordingToInterest payuEmiAmountAccordingToInterestResponseHelper = PayuEmiAmountAccordingToInterest.payuEmiAmountAccordingToInterestResponseHelper(split[0], split[1], this.val$payuResponse.getPayuEmiAmountAccordingToInterest());
                if (payuEmiAmountAccordingToInterestResponseHelper != null) {
                    charSequence = "Response status:" + this.val$payuResponse.getResponseStatus().getStatus() + "\nemiBankInterest: " + payuEmiAmountAccordingToInterestResponseHelper.getEmiBankInterest() + "\nbankRate: " + payuEmiAmountAccordingToInterestResponseHelper.getBankRate() + "\nbankCharge: " + payuEmiAmountAccordingToInterestResponseHelper.getBankCharge() + "\namount: " + payuEmiAmountAccordingToInterestResponseHelper.getAmount() + "\ncardType: " + payuEmiAmountAccordingToInterestResponseHelper.getCardType() + "\nemiValue: " + payuEmiAmountAccordingToInterestResponseHelper.getEmiValue() + "\nemiInterestPaid: " + payuEmiAmountAccordingToInterestResponseHelper.getEmiInterestPaid();
                }
            }
            this.val$filteredResults.setVisibility(0);
            this.val$filteredResults.setText(charSequence);
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.5 */
    class AnonymousClass5 implements OnClickListener {
        final /* synthetic */ LinearLayout val$bankCodeLayout;
        final /* synthetic */ LinearLayout val$cardNumberLayout;
        final /* synthetic */ AlertDialog val$checkOfferDetails;
        final /* synthetic */ LinearLayout val$netBankingLayout;
        final /* synthetic */ Spinner val$netBankingSpinner;
        final /* synthetic */ EditText val$offerAmountEditText;
        final /* synthetic */ EditText val$offerCardNumberEditText;
        final /* synthetic */ Spinner val$storedCardSpinner;
        final /* synthetic */ LinearLayout val$userCredentialsAndTokenLayout;
        final /* synthetic */ LinearLayout val$userCredentialsLayout;

        AnonymousClass5(LinearLayout linearLayout, EditText editText, LinearLayout linearLayout2, LinearLayout linearLayout3, Spinner spinner, LinearLayout linearLayout4, LinearLayout linearLayout5, Spinner spinner2, EditText editText2, AlertDialog alertDialog) {
            this.val$cardNumberLayout = linearLayout;
            this.val$offerCardNumberEditText = editText;
            this.val$userCredentialsLayout = linearLayout2;
            this.val$userCredentialsAndTokenLayout = linearLayout3;
            this.val$storedCardSpinner = spinner;
            this.val$netBankingLayout = linearLayout4;
            this.val$bankCodeLayout = linearLayout5;
            this.val$netBankingSpinner = spinner2;
            this.val$offerAmountEditText = editText2;
            this.val$checkOfferDetails = alertDialog;
        }

        public void onClick(View view) {
            VerifyApiActivity.this.merchantWebService = new MerchantWebService();
            VerifyApiActivity.this.merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            VerifyApiActivity.this.merchantWebService.setCommand(PayuConstants.CHECK_OFFER_DETAILS);
            VerifyApiActivity.this.merchantWebService.setHash(VerifyApiActivity.this.mPayuHashes.getCheckOfferDetailsHash());
            VerifyApiActivity.this.merchantWebService.setVar1(VerifyApiActivity.this.mPaymentParams.getOfferKey());
            if (this.val$cardNumberLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar2("1");
                VerifyApiActivity.this.merchantWebService.setVar3(this.val$offerCardNumberEditText.getText().toString());
            } else if (this.val$userCredentialsLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar2("2");
                VerifyApiActivity.this.merchantWebService.setVar3(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
            } else if (this.val$userCredentialsAndTokenLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar2("2");
                VerifyApiActivity.this.merchantWebService.setVar3(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
                VerifyApiActivity.this.merchantWebService.setVar4(((StoredCard) VerifyApiActivity.this.storedCardsList.get(this.val$storedCardSpinner.getSelectedItemPosition())).getCardToken());
            } else if (this.val$netBankingLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar2("3");
                VerifyApiActivity.this.merchantWebService.setVar3(PayuConstants.NB);
            } else if (this.val$bankCodeLayout.getVisibility() == 0) {
                VerifyApiActivity.this.merchantWebService.setVar2("4");
                VerifyApiActivity.this.merchantWebService.setVar3(((PaymentDetails) VerifyApiActivity.this.netBankingList.get(this.val$netBankingSpinner.getSelectedItemPosition())).getBankCode());
            }
            VerifyApiActivity.this.merchantWebService.setVar5(this.val$offerAmountEditText.getText().toString());
            VerifyApiActivity.this.postData = new MerchantWebServicePostParams(VerifyApiActivity.this.merchantWebService).getMerchantWebServicePostParams();
            if (VerifyApiActivity.this.postData.getCode() == 0) {
                VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                new CheckOfferDetailsTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                this.val$checkOfferDetails.dismiss();
                return;
            }
            Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
        }
    }

    /* renamed from: com.payu.payuui.Activity.VerifyApiActivity.8 */
    class AnonymousClass8 implements OnClickListener {
        final /* synthetic */ EditText val$cardExpiryMonthEditText;
        final /* synthetic */ EditText val$cardExpiryYearEditText;
        final /* synthetic */ EditText val$cardHolderNameEditText;
        final /* synthetic */ EditText val$cardNameEditText;
        final /* synthetic */ EditText val$cardNumberEditText;
        final /* synthetic */ AlertDialog val$saveUserCardDialog;

        AnonymousClass8(EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, AlertDialog alertDialog) {
            this.val$cardHolderNameEditText = editText;
            this.val$cardNameEditText = editText2;
            this.val$cardNumberEditText = editText3;
            this.val$cardExpiryMonthEditText = editText4;
            this.val$cardExpiryYearEditText = editText5;
            this.val$saveUserCardDialog = alertDialog;
        }

        public void onClick(View view) {
            VerifyApiActivity.this.merchantWebService = new MerchantWebService();
            VerifyApiActivity.this.merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
            VerifyApiActivity.this.merchantWebService.setCommand(PayuConstants.DELETE_STORE_CARD_CVV);
            VerifyApiActivity.this.merchantWebService.setHash(VerifyApiActivity.this.mPayuHashes.getSaveCardHash());
            VerifyApiActivity.this.merchantWebService.setVar1(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
            VerifyApiActivity.this.merchantWebService.setVar2(BuildConfig.VERSION_NAME + this.val$cardHolderNameEditText.getText().toString());
            VerifyApiActivity.this.merchantWebService.setVar3(PayuConstants.CC);
            VerifyApiActivity.this.merchantWebService.setVar4(PayuConstants.CC);
            VerifyApiActivity.this.merchantWebService.setVar5(BuildConfig.VERSION_NAME + this.val$cardNameEditText.getText().toString());
            VerifyApiActivity.this.merchantWebService.setVar6(BuildConfig.VERSION_NAME + this.val$cardNumberEditText.getText().toString());
            VerifyApiActivity.this.merchantWebService.setVar7(BuildConfig.VERSION_NAME + this.val$cardExpiryMonthEditText.getText().toString());
            VerifyApiActivity.this.merchantWebService.setVar8(BuildConfig.VERSION_NAME + this.val$cardExpiryYearEditText.getText().toString());
            VerifyApiActivity.this.postData = new MerchantWebServicePostParams(VerifyApiActivity.this.merchantWebService).getMerchantWebServicePostParams();
            if (VerifyApiActivity.this.postData.getCode() == 0) {
                VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                new SaveCardTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                this.val$saveUserCardDialog.dismiss();
                return;
            }
            Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
        }
    }

    class PayUNetBankingAdapter extends BaseAdapter {
        Context mContext;
        ArrayList<PaymentDetails> mNetBankingList;

        class NetbankingViewHolder {
            TextView netbankingTextView;

            NetbankingViewHolder(View view) {
                this.netbankingTextView = (TextView) view.findViewById(com.payu.payuui.R.id.text_view_netbanking);
            }
        }

        public PayUNetBankingAdapter(Context context, ArrayList<PaymentDetails> arrayList) {
            this.mContext = context;
            this.mNetBankingList = arrayList;
        }

        public int getCount() {
            return this.mNetBankingList.size();
        }

        public Object getItem(int i) {
            return this.mNetBankingList != null ? this.mNetBankingList.get(i) : Integer.valueOf(0);
        }

        public long getItemId(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            NetbankingViewHolder netbankingViewHolder;
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(com.payu.payuui.R.layout.netbanking_list_item, null);
                NetbankingViewHolder netbankingViewHolder2 = new NetbankingViewHolder(view);
                view.setTag(netbankingViewHolder2);
                netbankingViewHolder = netbankingViewHolder2;
            } else {
                netbankingViewHolder = (NetbankingViewHolder) view.getTag();
            }
            netbankingViewHolder.netbankingTextView.setText(((PaymentDetails) this.mNetBankingList.get(i)).getBankName());
            return view;
        }
    }

    class UserCardsAdapter extends BaseAdapter {
        Context mContext;
        ArrayList<StoredCard> mUserCards;

        public UserCardsAdapter(Context context, ArrayList<StoredCard> arrayList) {
            this.mUserCards = arrayList;
            this.mContext = context;
        }

        private String getTitle(int i) {
            return (i < 0 || i >= this.mUserCards.size()) ? BuildConfig.VERSION_NAME : ((StoredCard) this.mUserCards.get(i)).getCardName();
        }

        public int getCount() {
            return (this.mUserCards == null || this.mUserCards.size() == 0) ? 0 : this.mUserCards.size();
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (view == null || !view.getTag().toString().equals("DROPDOWN")) {
                view = VerifyApiActivity.this.getLayoutInflater().inflate(17367043, viewGroup, false);
                view.setTag("DROPDOWN");
            }
            ((TextView) view.findViewById(16908308)).setText(getTitle(i));
            return view;
        }

        public StoredCard getItem(int i) {
            return (StoredCard) this.mUserCards.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null || !view.getTag().toString().equals("NON_DROPDOWN")) {
                view = VerifyApiActivity.this.getLayoutInflater().inflate(17367043, viewGroup, false);
                view.setTag("NON_DROPDOWN");
            }
            ((TextView) view.findViewById(16908308)).setText(getTitle(i));
            return view;
        }
    }

    public VerifyApiActivity() {
        this.getUserCard = Boolean.valueOf(false);
        this.editUserCard = Boolean.valueOf(false);
        this.deleteUserCard = Boolean.valueOf(false);
    }

    private void checkOfferDetails() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_check_offer_details, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_offer_amount);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_card_number_layout);
        EditText editText2 = (EditText) linearLayout.findViewById(com.payu.payuui.R.id.edit_text_offer_card_number);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_user_credentials);
        EditText editText3 = (EditText) linearLayout2.findViewById(com.payu.payuui.R.id.edit_text_offer_user_credentials);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_user_credentials_and_card_token);
        LinearLayout linearLayout4 = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_netbanking);
        LinearLayout linearLayout5 = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_bank_code);
        Spinner spinner = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_select_offer_mode);
        Spinner spinner2 = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_netbanking);
        Spinner spinner3 = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_stored_cards);
        spinner.setAdapter(ArrayAdapter.createFromResource(this, com.payu.payuui.R.array.check_offer_details_modes, 17367048));
        spinner.setOnItemSelectedListener(new AnonymousClass2(linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, editText3));
        spinner2.setAdapter(new PayUNetBankingAdapter(this, this.netBankingList));
        spinner3.setAdapter(new UserCardsAdapter(this, this.storedCardsList));
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass5(linearLayout, editText2, linearLayout2, linearLayout3, spinner3, linearLayout4, linearLayout5, spinner2, editText, create));
    }

    private void deleteCvv() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_delete_stored_card_cvv, null);
        ListView listView = (ListView) inflate.findViewById(com.payu.payuui.R.id.list_view_delete_stored_card_cvv);
        ArrayList arrayList = new ArrayList();
        Iterator it = this.storedCardsList.iterator();
        while (it.hasNext()) {
            StoredCard storedCard = (StoredCard) it.next();
            if (storedCard.getOneTapCard() != 0) {
                arrayList.add(storedCard);
            }
        }
        if (arrayList.size() > 0) {
            listView.setAdapter(new UserCardsAdapter(this, arrayList));
            listView.setOnItemClickListener(new OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    VerifyApiActivity.this.selectedUserCard = (StoredCard) adapterView.getItemAtPosition(i);
                }
            });
            Builder builder = new Builder(this);
            builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (VerifyApiActivity.this.selectedUserCard != null) {
                        MerchantWebService merchantWebService = new MerchantWebService();
                        merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
                        merchantWebService.setCommand(PayuConstants.DELETE_STORE_CARD_CVV);
                        merchantWebService.setVar1(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
                        merchantWebService.setVar2(VerifyApiActivity.this.selectedUserCard.getCardToken());
                        merchantWebService.setHash(VerifyApiActivity.this.mPayuHashes.getDeleteStoreCardCvv());
                        VerifyApiActivity.this.postData = null;
                        VerifyApiActivity.this.postData = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
                        if (VerifyApiActivity.this.postData.getCode() == 0) {
                            VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                            new DeleteCvvTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                            return;
                        }
                        Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
                    }
                }
            }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            return;
        }
        Toast.makeText(this, "No one tap card", 0).show();
    }

    private void deleteUserCard() {
        getUserCard();
    }

    private void editUserCard() {
        getUserCard();
    }

    private void getCardInformation() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_get_card_information, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_number);
        PayuUtils payuUtils = new PayuUtils();
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass20(editText, payuUtils, create));
    }

    private void getEmiAmountAccordingToInterest() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_emi_interest, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.payu_emi_input);
        Button button = (Button) inflate.findViewById(com.payu.payuui.R.id.emi_submit_btn);
        Dialog dialog = new Dialog(this);
        dialog.setContentView(inflate);
        dialog.setTitle("Enter Amount");
        dialog.show();
        button.setOnClickListener(new AnonymousClass1(editText, dialog));
    }

    private void getIbiboCodes() {
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.GET_MERCHANT_IBIBO_CODES);
        merchantWebService.setVar1(PayuConstants.DEFAULT);
        merchantWebService.setHash(this.mPayuHashes.getMerchantIbiboCodesHash());
        PostData merchantWebServicePostParams = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
        if (merchantWebServicePostParams.getCode() == 0) {
            this.payuConfig.setData(merchantWebServicePostParams.getResult());
            new GetIbiboCodesTask(this).execute(new PayuConfig[]{this.payuConfig});
            return;
        }
        Toast.makeText(this, merchantWebServicePostParams.getResult(), 1).show();
    }

    private void getOfferStatus() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_get_offer_status, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_offer_card_number);
        EditText editText2 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_offer_name_on_card);
        EditText editText3 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_offer_card_mode);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_new_card);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_netbanking);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(com.payu.payuui.R.id.linear_layout_stored_card);
        Spinner spinner = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_select_offer_mode);
        Spinner spinner2 = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_netbanking);
        Spinner spinner3 = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_stored_cards);
        spinner.setAdapter(ArrayAdapter.createFromResource(this, com.payu.payuui.R.array.offer_modes, 17367048));
        spinner.setOnItemSelectedListener(new AnonymousClass25(linearLayout, linearLayout3, linearLayout2));
        spinner2.setAdapter(new PayUNetBankingAdapter(this, this.netBankingList));
        spinner3.setAdapter(new UserCardsAdapter(this, this.storedCardsList));
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass28(linearLayout2, spinner2, linearLayout, editText3, editText, editText2, linearLayout3, spinner3, create));
    }

    private void getPaymentRelatedDetails() {
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.PAYMENT_RELATED_DETAILS_FOR_MOBILE_SDK);
        merchantWebService.setVar1(this.mPaymentParams.getUserCredentials() == null ? PayuConstants.DEFAULT : this.mPaymentParams.getUserCredentials());
        merchantWebService.setHash(this.mPayuHashes.getPaymentRelatedDetailsForMobileSdkHash());
        PostData merchantWebServicePostParams = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
        if (merchantWebServicePostParams.getCode() == 0) {
            this.payuConfig.setData(merchantWebServicePostParams.getResult());
            this.progressDialog = new ProgressDialog(this);
            this.progressDialog.setMessage("Fetching bank information please wait.");
            this.progressDialog.show();
            new GetPaymentRelatedDetailsTask(this).execute(new PayuConfig[]{this.payuConfig});
            return;
        }
        Toast.makeText(this, merchantWebServicePostParams.getResult(), 1).show();
    }

    private void getTransactionInformation() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_get_transaction_information, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_from_date);
        EditText editText2 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_to_date);
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass24(editText, create));
    }

    private void getUserCard() {
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.GET_USER_CARDS);
        merchantWebService.setVar1(this.mPaymentParams.getUserCredentials());
        merchantWebService.setHash(this.mPayuHashes.getStoredCardsHash());
        this.postData = null;
        this.postData = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
        if (this.postData.getCode() == 0) {
            this.payuConfig.setData(this.postData.getResult());
            new GetStoredCardTask(this).execute(new PayuConfig[]{this.payuConfig});
            return;
        }
        Toast.makeText(this, this.postData.getResult(), 1).show();
    }

    private void getValueAddedService() {
        MerchantWebService merchantWebService = new MerchantWebService();
        merchantWebService.setKey(this.mPaymentParams.getKey());
        merchantWebService.setCommand(PayuConstants.VAS_FOR_MOBILE_SDK);
        merchantWebService.setHash(this.mPayuHashes.getVasForMobileSdkHash());
        merchantWebService.setVar1(PayuConstants.DEFAULT);
        merchantWebService.setVar2(PayuConstants.DEFAULT);
        merchantWebService.setVar3(PayuConstants.DEFAULT);
        PostData merchantWebServicePostParams = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
        this.postData = merchantWebServicePostParams;
        if (merchantWebServicePostParams == null || this.postData.getCode() != 0) {
            Toast.makeText(this, this.postData.getResult(), 1).show();
            return;
        }
        this.payuConfig.setData(this.postData.getResult());
        new ValueAddedServiceTask(this).execute(new PayuConfig[]{this.payuConfig});
    }

    private void saveUserCard() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_store_user_cards, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_number);
        EditText editText2 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_holder_name);
        EditText editText3 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_expiry_month);
        EditText editText4 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_expiry_year);
        EditText editText5 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_cvv);
        EditText editText6 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_name);
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass8(editText2, editText6, editText, editText3, editText4, create));
    }

    private void showDeleteUserCardsDialog(ArrayList<StoredCard> arrayList) {
        this.selectedUserCard = null;
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_delete_user_cards, null);
        ListView listView = (ListView) inflate.findViewById(com.payu.payuui.R.id.list_view_delete_user_card);
        listView.setAdapter(new UserCardsAdapter(this, arrayList));
        listView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                VerifyApiActivity.this.selectedUserCard = (StoredCard) adapterView.getItemAtPosition(i);
            }
        });
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (VerifyApiActivity.this.selectedUserCard != null) {
                    MerchantWebService merchantWebService = new MerchantWebService();
                    merchantWebService.setKey(VerifyApiActivity.this.mPaymentParams.getKey());
                    merchantWebService.setCommand(PayuConstants.DELETE_USER_CARD);
                    merchantWebService.setVar1(VerifyApiActivity.this.mPaymentParams.getUserCredentials());
                    merchantWebService.setVar2(VerifyApiActivity.this.selectedUserCard.getCardToken());
                    merchantWebService.setHash(VerifyApiActivity.this.mPayuHashes.getDeleteCardHash());
                    VerifyApiActivity.this.postData = null;
                    VerifyApiActivity.this.postData = new MerchantWebServicePostParams(merchantWebService).getMerchantWebServicePostParams();
                    if (VerifyApiActivity.this.postData.getCode() == 0) {
                        VerifyApiActivity.this.payuConfig.setData(VerifyApiActivity.this.postData.getResult());
                        new DeleteCardTask(VerifyApiActivity.this).execute(new PayuConfig[]{VerifyApiActivity.this.payuConfig});
                        return;
                    }
                    Toast.makeText(VerifyApiActivity.this, VerifyApiActivity.this.postData.getResult(), 1).show();
                }
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create().show();
    }

    private void showEditUserCardsDialog(ArrayList<StoredCard> arrayList) {
        this.selectedUserCard = null;
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_edit_user_cards, null);
        Spinner spinner = (Spinner) inflate.findViewById(com.payu.payuui.R.id.spinner_edit_card);
        spinner.setAdapter(new UserCardsAdapter(this, arrayList));
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_number);
        EditText editText2 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_holder_name);
        EditText editText3 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_expiry_month);
        EditText editText4 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_expiry_year);
        EditText editText5 = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_card_name);
        spinner.setOnItemSelectedListener(new AnonymousClass12(editText, editText2, editText5, editText3, editText4));
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass15(editText5, editText2, editText, editText3, editText4, create));
    }

    private void showUserCardsDialog(ArrayList<StoredCard> arrayList) {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_get_user_cards, null);
        ((ListView) inflate.findViewById(com.payu.payuui.R.id.list_view_user_card)).setAdapter(new UserCardsAdapter(this, arrayList));
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create().show();
    }

    private void showValueAddedServiceResponse(PayuResponse payuResponse) {
        if (payuResponse != null && (payuResponse.isIssuingBankStatusAvailable().booleanValue() || payuResponse.isNetBankingStatusAvailable().booleanValue())) {
            StringBuffer stringBuffer = new StringBuffer();
            for (String str : payuResponse.getIssuingBankStatus().keySet()) {
                stringBuffer.append("Bank code: " + str + "\n");
                stringBuffer.append("Bank Name: " + ((CardStatus) payuResponse.getIssuingBankStatus().get(str)).getBankName() + "\n");
                stringBuffer.append("Bank status: " + ((CardStatus) payuResponse.getIssuingBankStatus().get(str)).getStatusCode() + "\n");
            }
            new Builder(this).setCancelable(false).setMessage("Netbanking status: \n" + payuResponse.getNetBankingDownStatus().toString() + "issuing bank status: \n" + stringBuffer).setPositiveButton(17039370, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).show();
        } else if (payuResponse == null || payuResponse.getResponseStatus() == null) {
            Toast.makeText(this, "Something went wrong!", 1).show();
        } else {
            Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
        }
    }

    private void verifyPayment() {
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_verify_payment, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.edit_text_verify_payment_transaction_id);
        Builder builder = new Builder(this);
        builder.setView(inflate).setPositiveButton(com.payu.payuui.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setNegativeButton(com.payu.payuui.R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.getButton(-1).setOnClickListener(new AnonymousClass31(editText, create));
    }

    public boolean isOnline() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void onCheckOfferDetailsApiResponse(PayuResponse payuResponse) {
        if (payuResponse != null) {
            Toast.makeText(this, payuResponse.getResponseStatus().getStatus(), 1).show();
            StringBuffer stringBuffer = new StringBuffer();
        }
    }

    public void onClick(View view) {
        if (!isOnline()) {
            Toast.makeText(getBaseContext(), "No Network Connectivity", 0).show();
        } else if (view.getId() == com.payu.payuui.R.id.button_store_user_card) {
            saveUserCard();
        } else if (view.getId() == com.payu.payuui.R.id.button_delete_user_card) {
            this.deleteUserCard = Boolean.valueOf(true);
            this.editUserCard = Boolean.valueOf(false);
            this.getUserCard = Boolean.valueOf(false);
            deleteUserCard();
        } else if (view.getId() == com.payu.payuui.R.id.button_edit_user_card) {
            this.deleteUserCard = Boolean.valueOf(false);
            this.editUserCard = Boolean.valueOf(true);
            this.getUserCard = Boolean.valueOf(false);
            editUserCard();
        } else if (view.getId() == com.payu.payuui.R.id.button_get_user_cards) {
            this.deleteUserCard = Boolean.valueOf(false);
            this.editUserCard = Boolean.valueOf(false);
            this.getUserCard = Boolean.valueOf(true);
            getUserCard();
        } else if (view.getId() == com.payu.payuui.R.id.button_get_card_information) {
            getCardInformation();
        } else if (view.getId() == com.payu.payuui.R.id.button_get_ibibo_codes) {
            getIbiboCodes();
        } else if (view.getId() == com.payu.payuui.R.id.button_get_value_added_services) {
            getValueAddedService();
        } else if (view.getId() == com.payu.payuui.R.id.button_get_transaction_information) {
            getTransactionInformation();
        } else if (view.getId() == com.payu.payuui.R.id.button_get_offer_status) {
            getOfferStatus();
        } else if (view.getId() == com.payu.payuui.R.id.button_verify_transaction) {
            verifyPayment();
        } else if (view.getId() == com.payu.payuui.R.id.button_delete_cvv) {
            deleteCvv();
        } else if (view.getId() == com.payu.payuui.R.id.button_check_offer_details) {
            if (this.netBankingList != null) {
                checkOfferDetails();
            } else {
                Toast.makeText(this, "not able to fetch netbanking details", 1).show();
            }
        } else if (view.getId() == com.payu.payuui.R.id.button_get_emi_as_per_interest) {
            getEmiAmountAccordingToInterest();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.payu.payuui.R.layout.activity_verify_api);
        this.netBankingList = new ArrayList();
        this.storedCardsList = new ArrayList();
        this.bundle = getIntent().getExtras();
        this.mPayuHashes = (PayuHashes) this.bundle.getParcelable(PayuConstants.PAYU_HASHES);
        this.mPaymentParams = (PaymentParams) this.bundle.getParcelable(PayuConstants.PAYMENT_PARAMS);
        this.payuConfig = (PayuConfig) this.bundle.getParcelable(PayuConstants.PAYU_CONFIG);
        this.netBankingList = this.bundle.getParcelableArrayList(PayuConstants.NETBANKING);
        this.storedCardsList = this.bundle.getParcelableArrayList(PayuConstants.STORED_CARD);
        if (this.netBankingList == null) {
            getPaymentRelatedDetails();
        }
        this.payuConfig = this.payuConfig != null ? this.payuConfig : new PayuConfig();
        Button button = (Button) findViewById(com.payu.payuui.R.id.button_store_user_card);
        this.storeUserCardButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_user_cards);
        this.getUserCardsButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_delete_user_card);
        this.deleteUserCardButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_edit_user_card);
        this.editUserCardButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_card_information);
        this.getCardInformationButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_ibibo_codes);
        this.getIbiboCodeButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_value_added_services);
        this.getValueAddedServiceButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_transaction_information);
        this.getTransactionInformationButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_offer_status);
        this.getOfferStatusButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_verify_transaction);
        this.verifyTransactionButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_delete_cvv);
        this.deleteCvvButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_check_offer_details);
        this.checkOfferDetailsButton = button;
        button.setOnClickListener(this);
        button = (Button) findViewById(com.payu.payuui.R.id.button_get_emi_as_per_interest);
        this.getEmiAmoutAccordingToInterest = button;
        button.setOnClickListener(this);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    public void onDeleteCardApiResponse(PayuResponse payuResponse) {
        Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
    }

    public void onDeleteCvvApiResponse(PayuResponse payuResponse) {
    }

    public void onEditCardApiListener(PayuResponse payuResponse) {
        Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
    }

    public void onGetCardInformationResponse(PayuResponse payuResponse) {
        if (payuResponse.isCardInformationAvailable().booleanValue()) {
            Toast.makeText(this, "Is Domestic: " + payuResponse.getCardInformation().getIsDomestic() + " Issuing Bank: " + payuResponse.getCardInformation().getIssuingBank() + " Card Type: " + payuResponse.getCardInformation().getCardType() + " Card Category: " + payuResponse.getCardInformation().getCardCategory(), 1).show();
        } else {
            Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
        }
    }

    public void onGetEmiAmountAccordingToInterestApiResponse(PayuResponse payuResponse) {
        HashMap payuEmiAmountAccordingToInterest = payuResponse.getPayuEmiAmountAccordingToInterest();
        Iterable arrayList = new ArrayList();
        for (Entry entry : payuEmiAmountAccordingToInterest.entrySet()) {
            String str = (String) entry.getKey();
            for (Entry entry2 : ((HashMap) entry2.getValue()).entrySet()) {
                arrayList.add(str + "," + ((String) entry2.getKey()));
            }
        }
        View inflate = getLayoutInflater().inflate(com.payu.payuui.R.layout.layout_emi_interest_filter, null);
        EditText editText = (EditText) inflate.findViewById(com.payu.payuui.R.id.filter_txt);
        TextView textView = (TextView) inflate.findViewById(com.payu.payuui.R.id.filtered_results);
        Button button = (Button) inflate.findViewById(com.payu.payuui.R.id.filter_submit_button);
        ((TextView) inflate.findViewById(com.payu.payuui.R.id.emi_api_response)).setText(TextUtils.join("\n", arrayList));
        textView.setVisibility(8);
        Dialog dialog = new Dialog(this);
        dialog.setContentView(inflate);
        dialog.show();
        button.setOnClickListener(new AnonymousClass35(editText, payuResponse, textView));
    }

    public void onGetIbiboCodesApiResponse(PayuResponse payuResponse) {
        Toast.makeText(this, "Response status: " + payuResponse.getResponseStatus().getResult(), 1).show();
    }

    public void onGetOfferStatusApiResponse(PayuResponse payuResponse) {
        Toast.makeText(this, "Response status: " + payuResponse.getResponseStatus().getResult() + ": Discount = " + payuResponse.getPayuOffer().getDiscount(), 1).show();
    }

    public void onGetStoredCardApiResponse(PayuResponse payuResponse) {
        if (payuResponse.getResponseStatus().getCode() != 0) {
            Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
        } else if (this.getUserCard.booleanValue()) {
            showUserCardsDialog(payuResponse.getStoredCards());
        } else if (this.editUserCard.booleanValue()) {
            showEditUserCardsDialog(payuResponse.getStoredCards());
        } else if (this.deleteUserCard.booleanValue()) {
            showDeleteUserCardsDialog(payuResponse.getStoredCards());
        }
    }

    public void onGetTransactionApiListener(PayuResponse payuResponse) {
        Toast.makeText(this, "Response status: " + payuResponse.getResponseStatus().getResult(), 1).show();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return menuItem.getItemId() == com.payu.payuui.R.id.action_settings ? true : super.onOptionsItemSelected(menuItem);
    }

    public void onPaymentRelatedDetailsResponse(PayuResponse payuResponse) {
        this.netBankingList = payuResponse.getNetBanks();
        this.storedCardsList = payuResponse.getStoredCards();
        this.progressDialog.dismiss();
    }

    public void onSaveCardResponse(PayuResponse payuResponse) {
        Toast.makeText(this, payuResponse.getResponseStatus().getResult(), 1).show();
    }

    public void onValueAddedServiceApiResponse(PayuResponse payuResponse) {
        showValueAddedServiceResponse(payuResponse);
    }

    public void onVerifyPaymentResponse(PayuResponse payuResponse) {
        Toast.makeText(this, "Response status:" + payuResponse.getResponseStatus().getResult(), 1).show();
    }
}
