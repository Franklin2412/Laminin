package com.payu.testapp;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Toast;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.CallBackHandler.OnetapCallback;
import com.payu.india.Extras.PayUChecksum;
import com.payu.india.Extras.PayUSdkDetails;
import com.payu.india.Interfaces.OneClickPaymentListener;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuHashes;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.Payu;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.payuui.Activity.PayUBaseActivity;
import com.payu.payuui.Activity.VerifyApiActivity;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity implements OnClickListener, OneClickPaymentListener {
    private Button addButton;
    private String cardBin;
    private PayUChecksum checksum;
    int env;
    int[] idsKey;
    int[] idsValue;
    String inputData;
    private Intent intent;
    private String key;
    EditText leftChild;
    private PaymentParams mPaymentParams;
    private ScrollView mainScrollView;
    String[] mandatoryKeys;
    String[] mandatoryValues;
    int merchantIndex;
    String merchantKey;
    String[] merchantProductionKeys;
    String[] merchantProductionSalts;
    String[] merchantTestKeys;
    private Button nextButton;
    private boolean nextButtonClicked;
    String[] offerKeys;
    private PayuConfig payuConfig;
    private PostData postData;
    EditText rightChild;
    private LinearLayout rowContainerLinearLayout;
    private String salt;
    Boolean smsPermission;
    private int storeOneClickHash;
    private Toolbar toolBar;
    private String var1;
    private Button verifyApiButton;
    private boolean verifyApiButtonClicked;

    /* renamed from: com.payu.testapp.MainActivity.3 */
    class AnonymousClass3 extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ String val$postParams;

        AnonymousClass3(String str) {
            this.val$postParams = str;
        }

        protected Void doInBackground(Void... voidArr) {
            try {
                URL url = new URL("https://payu.herokuapp.com/store_merchant_hash");
                byte[] bytes = this.val$postParams.getBytes("UTF-8");
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
                httpURLConnection.setDoOutput(true);
                httpURLConnection.getOutputStream().write(bytes);
                InputStream inputStream = httpURLConnection.getInputStream();
                StringBuffer stringBuffer = new StringBuffer();
                byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    stringBuffer.append(new String(bArr, 0, read));
                }
                JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
            } catch (ProtocolException e3) {
                e3.printStackTrace();
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return null;
        }

        protected void onPostExecute(Void voidR) {
            super.onPostExecute(voidR);
            cancel(true);
        }
    }

    /* renamed from: com.payu.testapp.MainActivity.4 */
    class AnonymousClass4 extends AsyncTask<Void, Void, HashMap<String, String>> {
        final /* synthetic */ Intent val$baseActivityIntent;
        final /* synthetic */ String val$postParams;

        AnonymousClass4(String str, Intent intent) {
            this.val$postParams = str;
            this.val$baseActivityIntent = intent;
        }

        protected HashMap<String, String> doInBackground(Void... voidArr) {
            try {
                URL url = new URL("https://payu.herokuapp.com/get_merchant_hashes");
                byte[] bytes = this.val$postParams.getBytes("UTF-8");
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
                httpURLConnection.setDoOutput(true);
                httpURLConnection.getOutputStream().write(bytes);
                InputStream inputStream = httpURLConnection.getInputStream();
                StringBuffer stringBuffer = new StringBuffer();
                byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    stringBuffer.append(new String(bArr, 0, read));
                }
                JSONObject jSONObject = new JSONObject(stringBuffer.toString());
                HashMap<String, String> hashMap = new HashMap();
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                int length = jSONArray.length();
                if (length >= 1) {
                    for (int i = 0; i < length; i++) {
                        hashMap.put(jSONArray.getJSONArray(i).getString(0), jSONArray.getJSONArray(i).getString(1));
                    }
                    return hashMap;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
            } catch (ProtocolException e3) {
                e3.printStackTrace();
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return null;
        }

        protected void onPostExecute(HashMap<String, String> hashMap) {
            super.onPostExecute(hashMap);
            this.val$baseActivityIntent.putExtra(PayuConstants.ONE_CLICK_CARD_TOKENS, hashMap);
            MainActivity.this.startActivityForResult(this.val$baseActivityIntent, 100);
        }
    }

    /* renamed from: com.payu.testapp.MainActivity.5 */
    class AnonymousClass5 extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ String val$postParams;

        AnonymousClass5(String str) {
            this.val$postParams = str;
        }

        protected Void doInBackground(Void... voidArr) {
            try {
                URL url = new URL("https://payu.herokuapp.com/delete_merchant_hash");
                byte[] bytes = this.val$postParams.getBytes("UTF-8");
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
                httpURLConnection.setDoOutput(true);
                httpURLConnection.getOutputStream().write(bytes);
                httpURLConnection.getInputStream();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (ProtocolException e2) {
                e2.printStackTrace();
            } catch (UnsupportedEncodingException e3) {
                e3.printStackTrace();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return null;
        }

        protected void onPostExecute(Void voidR) {
            super.onPostExecute(voidR);
            cancel(true);
        }
    }

    class GetHashesFromServerTask extends AsyncTask<String, String, PayuHashes> {
        GetHashesFromServerTask() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected com.payu.india.Model.PayuHashes doInBackground(java.lang.String... r11) {
            /*
            r10 = this;
            r5 = 1;
            r4 = -1;
            r3 = 0;
            r1 = new com.payu.india.Model.PayuHashes;
            r1.<init>();
            r0 = java.lang.Thread.currentThread();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2 = "GetHashesFromServerTask";
            r0.setName(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2 = "https://payu.herokuapp.com/get_hash";
            r0.<init>(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2 = 0;
            r2 = r11[r2];	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = "UTF-8";
            r2 = r2.getBytes(r6);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = "POST";
            r0.setRequestMethod(r6);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = "Content-Type";
            r7 = "application/x-www-form-urlencoded";
            r0.setRequestProperty(r6, r7);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = "Content-Length";
            r7 = r2.length;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r7 = java.lang.String.valueOf(r7);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0.setRequestProperty(r6, r7);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = 1;
            r0.setDoOutput(r6);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6.write(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2.<init>();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
            r6 = new byte[r6];	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
        L_0x0055:
            r7 = r0.read(r6);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r7 == r4) goto L_0x006b;
        L_0x005b:
            r8 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r9 = 0;
            r8.<init>(r6, r9, r7);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2.append(r8);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0055;
        L_0x0065:
            r0 = move-exception;
            r0.printStackTrace();
        L_0x0069:
            r0 = r1;
        L_0x006a:
            return r0;
        L_0x006b:
            r6 = new org.json.JSONObject;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0 = r2.toString();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r6.<init>(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r7 = r6.keys();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
        L_0x0078:
            r0 = r7.hasNext();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r0 == 0) goto L_0x0069;
        L_0x007e:
            r0 = r7.next();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r2 = r0.hashCode();	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            switch(r2) {
                case -2050627101: goto L_0x00b2;
                case -1294126997: goto L_0x00e4;
                case -1217572816: goto L_0x00bc;
                case -1004002761: goto L_0x00a8;
                case -759051651: goto L_0x00c6;
                case -533907394: goto L_0x00da;
                case -497312857: goto L_0x009e;
                case 989650549: goto L_0x00d0;
                case 1678261582: goto L_0x00f9;
                case 1805532257: goto L_0x00ee;
                default: goto L_0x008b;
            };	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
        L_0x008b:
            r2 = r4;
        L_0x008c:
            switch(r2) {
                case 0: goto L_0x0090;
                case 1: goto L_0x0104;
                case 2: goto L_0x0114;
                case 3: goto L_0x0124;
                case 4: goto L_0x012d;
                case 5: goto L_0x0136;
                case 6: goto L_0x013f;
                case 7: goto L_0x0148;
                case 8: goto L_0x0151;
                case 9: goto L_0x015a;
                default: goto L_0x008f;
            };	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
        L_0x008f:
            goto L_0x0078;
        L_0x0090:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setPaymentHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x0098:
            r0 = move-exception;
            r0.printStackTrace();
            r0 = r1;
            goto L_0x006a;
        L_0x009e:
            r2 = "payment_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00a6:
            r2 = r3;
            goto L_0x008c;
        L_0x00a8:
            r2 = "get_merchant_ibibo_codes_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00b0:
            r2 = r5;
            goto L_0x008c;
        L_0x00b2:
            r2 = "vas_for_mobile_sdk_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00ba:
            r2 = 2;
            goto L_0x008c;
        L_0x00bc:
            r2 = "payment_related_details_for_mobile_sdk_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00c4:
            r2 = 3;
            goto L_0x008c;
        L_0x00c6:
            r2 = "delete_user_card_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00ce:
            r2 = 4;
            goto L_0x008c;
        L_0x00d0:
            r2 = "get_user_cards_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00d8:
            r2 = 5;
            goto L_0x008c;
        L_0x00da:
            r2 = "edit_user_card_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00e2:
            r2 = 6;
            goto L_0x008c;
        L_0x00e4:
            r2 = "save_user_card_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00ec:
            r2 = 7;
            goto L_0x008c;
        L_0x00ee:
            r2 = "check_offer_status_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x00f6:
            r2 = 8;
            goto L_0x008c;
        L_0x00f9:
            r2 = "check_isDomestic_hash";
            r2 = r0.equals(r2);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            if (r2 == 0) goto L_0x008b;
        L_0x0101:
            r2 = 9;
            goto L_0x008c;
        L_0x0104:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setMerchantIbiboCodesHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x010d:
            r0 = move-exception;
            r0.printStackTrace();
            r0 = r1;
            goto L_0x006a;
        L_0x0114:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setVasForMobileSdkHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x011d:
            r0 = move-exception;
            r0.printStackTrace();
            r0 = r1;
            goto L_0x006a;
        L_0x0124:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setPaymentRelatedDetailsForMobileSdkHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x012d:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setDeleteCardHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x0136:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setStoredCardsHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x013f:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setEditCardHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x0148:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setSaveCardHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x0151:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setCheckOfferStatusHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
        L_0x015a:
            r0 = r6.getString(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            r1.setCheckIsDomesticHash(r0);	 Catch:{ MalformedURLException -> 0x0065, ProtocolException -> 0x0098, IOException -> 0x010d, JSONException -> 0x011d }
            goto L_0x0078;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.payu.testapp.MainActivity.GetHashesFromServerTask.doInBackground(java.lang.String[]):com.payu.india.Model.PayuHashes");
        }

        protected void onPostExecute(PayuHashes payuHashes) {
            super.onPostExecute(payuHashes);
            if (MainActivity.this.nextButtonClicked) {
                MainActivity.this.nextButton.setEnabled(true);
                MainActivity.this.launchSdkUI(payuHashes);
            } else if (MainActivity.this.verifyApiButtonClicked) {
                MainActivity.this.verifyApiButton.setEnabled(true);
                MainActivity.this.launchVerifyApi(payuHashes);
            }
        }

        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    public MainActivity() {
        this.merchantIndex = 0;
        this.env = 1;
        this.merchantTestKeys = new String[]{"gtKFFx", "DXOF8m", "obScKz", "smsplus"};
        this.smsPermission = Boolean.valueOf(true);
        this.merchantProductionKeys = new String[]{"0MQaQP", "smsplus"};
        this.merchantProductionSalts = new String[]{"13p0PXZk", "1b1b0"};
        this.offerKeys = new String[]{"cardnumber@8370,cardnumbers2@8380", "netbanking@8372", "netbank@8374", "cardnumbers2@8380"};
        this.merchantKey = this.env == 0 ? this.merchantProductionKeys[this.merchantIndex] : this.merchantTestKeys[this.merchantIndex];
        this.mandatoryKeys = new String[]{MRConstant.KEY, PayuConstants.AMOUNT, PayuConstants.PRODUCT_INFO, PayuConstants.FIRST_NAME, PayuConstants.EMAIL, MRConstant.TRANSACTION_ID, PayuConstants.SURL, PayuConstants.FURL, PayuConstants.USER_CREDENTIALS, PayuConstants.UDF1, PayuConstants.UDF2, PayuConstants.UDF3, PayuConstants.UDF4, PayuConstants.UDF5, PayuConstants.ENV, PayuConstants.STORE_ONE_CLICK_HASH, PayuConstants.SMS_PERMISSION};
        this.mandatoryValues = new String[]{this.merchantKey, "1.0", "myproduct", PayuConstants.FIRST_NAME, "test@itsme.com", BuildConfig.VERSION_NAME + System.currentTimeMillis(), "https://payu.herokuapp.com/success", "https://payu.herokuapp.com/failure", this.merchantKey + ":snooze@payu.in", PayuConstants.UDF1, PayuConstants.UDF2, PayuConstants.UDF3, PayuConstants.UDF4, PayuConstants.UDF5, BuildConfig.VERSION_NAME + this.env, "1", this.smsPermission.toString()};
        this.idsKey = new int[]{R.id.k_merchant_key, R.id.k_amount, R.id.k_product_info, R.id.k_first_name, R.id.k_email, R.id.k_txnid, R.id.k_surl, R.id.k_furl, R.id.k_user_credentials, R.id.k_udf1, R.id.k_udf2, R.id.k_udf3, R.id.k_udf4, R.id.k_udf5, R.id.k_env, R.id.k_store_one_click_payment, R.id.k_sms_permission};
        this.idsValue = new int[]{R.id.v_merchant_key, R.id.v_amount, R.id.v_product_info, R.id.v_first_name, R.id.v_email, R.id.v_txnid, R.id.v_surl, R.id.v_furl, R.id.v_user_credentials, R.id.v_udf1, R.id.v_udf2, R.id.v_udf3, R.id.v_udf4, R.id.v_udf5, R.id.v_env, R.id.v_store_one_click_payment, R.id.v_sms_permission};
        this.inputData = BuildConfig.VERSION_NAME;
    }

    private void addView() {
        this.rowContainerLinearLayout.addView(getLayoutInflater().inflate(R.layout.row, null));
        findViewById(R.id.scroll_view_main).post(new Runnable() {
            public void run() {
                MainActivity.this.mainScrollView.fullScroll(TransportMediator.KEYCODE_MEDIA_RECORD);
            }
        });
    }

    private PostData calculateHash(String str, String str2, String str3, String str4) {
        this.checksum = null;
        this.checksum = new PayUChecksum();
        this.checksum.setKey(str);
        this.checksum.setCommand(str2);
        this.checksum.setVar1(str3);
        this.checksum.setSalt(str4);
        return this.checksum.getHash();
    }

    private void deleteMerchantHash(String str) {
        new AnonymousClass5("card_token=" + str).execute(new Void[0]);
    }

    private void fetchMerchantHashes(Intent intent) {
        new AnonymousClass4("merchant_key=" + this.key + "&user_credentials=" + this.var1, intent).execute(new Void[0]);
    }

    private void launchVerifyApi(PayuHashes payuHashes) {
        Intent intent = new Intent(this, VerifyApiActivity.class);
        intent.putExtra(PayuConstants.PAYU_CONFIG, this.payuConfig);
        intent.putExtra(PayuConstants.PAYMENT_PARAMS, this.mPaymentParams);
        intent.putExtra(PayuConstants.PAYU_HASHES, payuHashes);
        intent.putExtra(PayuConstants.SALT, this.salt);
        startActivityForResult(intent, 100);
    }

    private void navigateToBaseActivity() {
        this.intent = new Intent(this, PayUBaseActivity.class);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.linear_layout_row_container);
        this.mPaymentParams = new PaymentParams();
        this.payuConfig = new PayuConfig();
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(i);
            this.inputData = ((EditText) linearLayout2.getChildAt(1)).getText().toString();
            String obj = ((EditText) linearLayout2.getChildAt(0)).getText().toString();
            int i2 = -1;
            switch (obj.hashCode()) {
                case -1690518411:
                    if (obj.equals(PayuConstants.SMS_PERMISSION)) {
                        i2 = 19;
                        break;
                    }
                    break;
                case -1491000803:
                    if (obj.equals(PayuConstants.PRODUCT_INFO)) {
                        i2 = 2;
                        break;
                    }
                    break;
                case -1413853096:
                    if (obj.equals(PayuConstants.AMOUNT)) {
                        i2 = 1;
                        break;
                    }
                    break;
                case -1271262072:
                    if (obj.equals(PayuConstants.USER_CREDENTIALS)) {
                        i2 = 13;
                        break;
                    }
                    break;
                case -7921832:
                    if (obj.equals(PayuConstants.CARD_BIN)) {
                        i2 = 17;
                        break;
                    }
                    break;
                case 100589:
                    if (obj.equals(PayuConstants.ENV)) {
                        i2 = 16;
                        break;
                    }
                    break;
                case 106079:
                    if (obj.equals(MRConstant.KEY)) {
                        i2 = 0;
                        break;
                    }
                    break;
                case 3154761:
                    if (obj.equals(PayuConstants.FURL)) {
                        i2 = 7;
                        break;
                    }
                    break;
                case 3522646:
                    if (obj.equals(PayuConstants.SALT)) {
                        i2 = 15;
                        break;
                    }
                    break;
                case 3542044:
                    if (obj.equals(PayuConstants.SURL)) {
                        i2 = 6;
                        break;
                    }
                    break;
                case 3584858:
                    if (obj.equals(PayuConstants.UDF1)) {
                        i2 = 8;
                        break;
                    }
                    break;
                case 3584859:
                    if (obj.equals(PayuConstants.UDF2)) {
                        i2 = 9;
                        break;
                    }
                    break;
                case 3584860:
                    if (obj.equals(PayuConstants.UDF3)) {
                        i2 = 10;
                        break;
                    }
                    break;
                case 3584861:
                    if (obj.equals(PayuConstants.UDF4)) {
                        i2 = 11;
                        break;
                    }
                    break;
                case 3584862:
                    if (obj.equals(PayuConstants.UDF5)) {
                        i2 = 12;
                        break;
                    }
                    break;
                case 96619420:
                    if (obj.equals(PayuConstants.EMAIL)) {
                        i2 = 4;
                        break;
                    }
                    break;
                case 110812421:
                    if (obj.equals(MRConstant.TRANSACTION_ID)) {
                        i2 = 5;
                        break;
                    }
                    break;
                case 133788987:
                    if (obj.equals(PayuConstants.FIRST_NAME)) {
                        i2 = 3;
                        break;
                    }
                    break;
                case 1138633724:
                    if (obj.equals(PayuConstants.STORE_ONE_CLICK_HASH)) {
                        i2 = 18;
                        break;
                    }
                    break;
                case 1944869372:
                    if (obj.equals(PayuConstants.OFFER_KEY)) {
                        i2 = 14;
                        break;
                    }
                    break;
            }
            switch (i2) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    this.mPaymentParams.setKey(this.inputData);
                    this.key = this.inputData;
                    break;
                case R.styleable.WaitingDots_period /*1*/:
                    this.mPaymentParams.setAmount(this.inputData);
                    break;
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    this.mPaymentParams.setProductInfo(this.inputData);
                    break;
                case R.styleable.WaitingDots_autoplay /*3*/:
                    this.mPaymentParams.setFirstName(this.inputData);
                    break;
                case R.styleable.View_theme /*4*/:
                    this.mPaymentParams.setEmail(this.inputData);
                    break;
                case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                    this.mPaymentParams.setTxnId(this.inputData);
                    break;
                case R.styleable.Toolbar_contentInsetEnd /*6*/:
                    this.mPaymentParams.setSurl(this.inputData);
                    break;
                case R.styleable.Toolbar_contentInsetLeft /*7*/:
                    this.mPaymentParams.setFurl(this.inputData);
                    break;
                case R.styleable.Toolbar_contentInsetRight /*8*/:
                    this.mPaymentParams.setUdf1(this.inputData);
                    break;
                case R.styleable.Toolbar_popupTheme /*9*/:
                    this.mPaymentParams.setUdf2(this.inputData);
                    break;
                case R.styleable.Toolbar_titleTextAppearance /*10*/:
                    this.mPaymentParams.setUdf3(this.inputData);
                    break;
                case R.styleable.Toolbar_subtitleTextAppearance /*11*/:
                    this.mPaymentParams.setUdf4(this.inputData);
                    break;
                case R.styleable.Toolbar_titleMargins /*12*/:
                    this.mPaymentParams.setUdf5(this.inputData);
                    break;
                case R.styleable.Toolbar_titleMarginStart /*13*/:
                    this.mPaymentParams.setUserCredentials(this.inputData);
                    this.var1 = this.inputData;
                    break;
                case R.styleable.Toolbar_titleMarginEnd /*14*/:
                    this.mPaymentParams.setOfferKey(this.inputData);
                    break;
                case R.styleable.Toolbar_titleMarginTop /*15*/:
                    this.intent.putExtra(PayuConstants.SALT, this.inputData);
                    this.salt = this.inputData;
                    break;
                case R.styleable.Toolbar_titleMarginBottom /*16*/:
                    String str = this.inputData;
                    try {
                        this.payuConfig.setEnvironment(Integer.parseInt(this.inputData));
                        break;
                    } catch (Exception e) {
                        this.payuConfig.setEnvironment(0);
                        break;
                    }
                case R.styleable.Toolbar_maxButtonHeight /*17*/:
                    this.cardBin = this.inputData;
                    break;
                case R.styleable.Toolbar_collapseIcon /*18*/:
                    try {
                        this.storeOneClickHash = Integer.parseInt(this.inputData);
                        break;
                    } catch (Exception e2) {
                        this.storeOneClickHash = 0;
                        break;
                    }
                case R.styleable.Toolbar_collapseContentDescription /*19*/:
                    this.smsPermission = Boolean.valueOf(Boolean.parseBoolean(this.inputData));
                    this.intent.putExtra(PayuConstants.SMS_PERMISSION, this.smsPermission);
                    break;
                default:
                    break;
            }
        }
        if (this.salt == null) {
            generateHashFromServer(this.mPaymentParams);
        } else {
            generateHashFromSDK(this.mPaymentParams, this.intent.getStringExtra(PayuConstants.SALT));
        }
    }

    private void storeMerchantHash(String str, String str2) {
        new AnonymousClass3("merchant_key=" + this.key + "&user_credentials=" + this.var1 + "&card_token=" + str + "&merchant_hash=" + str2).execute(new Void[0]);
    }

    private void test() {
    }

    protected String concatParams(String str, String str2) {
        return str + "=" + str2 + "&";
    }

    public void deleteOneClickHash(String str, String str2) {
        deleteMerchantHash(str);
    }

    public void generateHashFromSDK(PaymentParams paymentParams, String str) {
        PayuHashes payuHashes = new PayuHashes();
        this.postData = new PostData();
        this.checksum = null;
        this.checksum = new PayUChecksum();
        this.checksum.setAmount(paymentParams.getAmount());
        this.checksum.setKey(paymentParams.getKey());
        this.checksum.setTxnid(paymentParams.getTxnId());
        this.checksum.setEmail(paymentParams.getEmail());
        this.checksum.setSalt(this.salt);
        this.checksum.setProductinfo(paymentParams.getProductInfo());
        this.checksum.setFirstname(paymentParams.getFirstName());
        this.checksum.setUdf1(paymentParams.getUdf1());
        this.checksum.setUdf2(paymentParams.getUdf2());
        this.checksum.setUdf3(paymentParams.getUdf3());
        this.checksum.setUdf4(paymentParams.getUdf4());
        this.checksum.setUdf5(paymentParams.getUdf5());
        this.postData = this.checksum.getHash();
        if (this.postData.getCode() == 0) {
            payuHashes.setPaymentHash(this.postData.getResult());
        }
        this.var1 = this.var1 == null ? PayuConstants.DEFAULT : this.var1;
        PostData calculateHash = calculateHash(this.key, PayuConstants.PAYMENT_RELATED_DETAILS_FOR_MOBILE_SDK, this.var1, this.salt);
        this.postData = calculateHash;
        if (calculateHash != null && this.postData.getCode() == 0) {
            payuHashes.setPaymentRelatedDetailsForMobileSdkHash(this.postData.getResult());
        }
        calculateHash = calculateHash(this.key, PayuConstants.VAS_FOR_MOBILE_SDK, PayuConstants.DEFAULT, this.salt);
        this.postData = calculateHash;
        if (calculateHash != null && this.postData.getCode() == 0) {
            payuHashes.setVasForMobileSdkHash(this.postData.getResult());
        }
        calculateHash = calculateHash(this.key, PayuConstants.GET_MERCHANT_IBIBO_CODES, PayuConstants.DEFAULT, this.salt);
        this.postData = calculateHash;
        if (calculateHash != null && this.postData.getCode() == 0) {
            payuHashes.setMerchantIbiboCodesHash(this.postData.getResult());
        }
        if (!this.var1.contentEquals(PayuConstants.DEFAULT)) {
            calculateHash = calculateHash(this.key, PayuConstants.GET_USER_CARDS, this.var1, this.salt);
            this.postData = calculateHash;
            if (calculateHash != null && this.postData.getCode() == 0) {
                payuHashes.setStoredCardsHash(this.postData.getResult());
            }
            calculateHash = calculateHash(this.key, PayuConstants.SAVE_USER_CARD, this.var1, this.salt);
            this.postData = calculateHash;
            if (calculateHash != null && this.postData.getCode() == 0) {
                payuHashes.setSaveCardHash(this.postData.getResult());
            }
            calculateHash = calculateHash(this.key, PayuConstants.DELETE_USER_CARD, this.var1, this.salt);
            this.postData = calculateHash;
            if (calculateHash != null && this.postData.getCode() == 0) {
                payuHashes.setDeleteCardHash(this.postData.getResult());
            }
            calculateHash = calculateHash(this.key, PayuConstants.EDIT_USER_CARD, this.var1, this.salt);
            this.postData = calculateHash;
            if (calculateHash != null && this.postData.getCode() == 0) {
                payuHashes.setEditCardHash(this.postData.getResult());
            }
        }
        if (paymentParams.getOfferKey() != null) {
            this.postData = calculateHash(this.key, PayuConstants.OFFER_KEY, paymentParams.getOfferKey(), this.salt);
            if (this.postData.getCode() == 0) {
                payuHashes.setCheckOfferStatusHash(this.postData.getResult());
            }
        }
        if (paymentParams.getOfferKey() != null) {
            calculateHash = calculateHash(this.key, PayuConstants.CHECK_OFFER_STATUS, paymentParams.getOfferKey(), this.salt);
            this.postData = calculateHash;
            if (calculateHash != null && this.postData.getCode() == 0) {
                payuHashes.setCheckOfferStatusHash(this.postData.getResult());
            }
        }
        if (this.nextButtonClicked) {
            this.nextButton.setEnabled(true);
            launchSdkUI(payuHashes);
        } else if (this.verifyApiButtonClicked) {
            this.verifyApiButton.setEnabled(true);
            launchVerifyApi(payuHashes);
        }
    }

    public void generateHashFromServer(PaymentParams paymentParams) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(concatParams(MRConstant.KEY, paymentParams.getKey()));
        stringBuffer.append(concatParams(PayuConstants.AMOUNT, paymentParams.getAmount()));
        stringBuffer.append(concatParams(MRConstant.TRANSACTION_ID, paymentParams.getTxnId()));
        stringBuffer.append(concatParams(PayuConstants.EMAIL, paymentParams.getEmail() == null ? BuildConfig.VERSION_NAME : paymentParams.getEmail()));
        stringBuffer.append(concatParams(PayuConstants.PRODUCT_INFO, paymentParams.getProductInfo()));
        stringBuffer.append(concatParams(PayuConstants.FIRST_NAME, paymentParams.getFirstName() == null ? BuildConfig.VERSION_NAME : paymentParams.getFirstName()));
        stringBuffer.append(concatParams(PayuConstants.UDF1, paymentParams.getUdf1() == null ? BuildConfig.VERSION_NAME : paymentParams.getUdf1()));
        stringBuffer.append(concatParams(PayuConstants.UDF2, paymentParams.getUdf2() == null ? BuildConfig.VERSION_NAME : paymentParams.getUdf2()));
        stringBuffer.append(concatParams(PayuConstants.UDF3, paymentParams.getUdf3() == null ? BuildConfig.VERSION_NAME : paymentParams.getUdf3()));
        stringBuffer.append(concatParams(PayuConstants.UDF4, paymentParams.getUdf4() == null ? BuildConfig.VERSION_NAME : paymentParams.getUdf4()));
        stringBuffer.append(concatParams(PayuConstants.UDF5, paymentParams.getUdf5() == null ? BuildConfig.VERSION_NAME : paymentParams.getUdf5()));
        stringBuffer.append(concatParams(PayuConstants.USER_CREDENTIALS, paymentParams.getUserCredentials() == null ? PayuConstants.DEFAULT : paymentParams.getUserCredentials()));
        if (paymentParams.getOfferKey() != null) {
            stringBuffer.append(concatParams(PayuConstants.OFFER_KEY, paymentParams.getOfferKey()));
        }
        if (this.cardBin != null) {
            stringBuffer.append(concatParams(PayuConstants.CARD_BIN, this.cardBin));
        }
        String str = stringBuffer.charAt(stringBuffer.length() + -1) == '&' ? stringBuffer.substring(0, stringBuffer.length() - 1).toString() : stringBuffer.toString();
        new GetHashesFromServerTask().execute(new String[]{str});
    }

    public HashMap<String, String> getAllOneClickHash(String str) {
        return getAllOneClickHashHelper(this.key, str);
    }

    public HashMap<String, String> getAllOneClickHashHelper(String str, String str2) {
        String str3 = "merchant_key=" + str + "&user_credentials=" + str2;
        Intent intent = this.intent;
        HashMap<String, String> hashMap = new HashMap();
        try {
            URL url = new URL("https://payu.herokuapp.com/get_merchant_hashes");
            byte[] bytes = str3.getBytes("UTF-8");
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
            httpURLConnection.setDoOutput(true);
            httpURLConnection.getOutputStream().write(bytes);
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuffer stringBuffer = new StringBuffer();
            bytes = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
            while (true) {
                int read = inputStream.read(bytes);
                if (read == -1) {
                    break;
                }
                stringBuffer.append(new String(bytes, 0, read));
            }
            JSONArray jSONArray = new JSONObject(stringBuffer.toString()).getJSONArray("data");
            int length = jSONArray.length();
            if (length >= 1) {
                for (int i = 0; i < length; i++) {
                    hashMap.put(jSONArray.getJSONArray(i).getString(0), jSONArray.getJSONArray(i).getString(1));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return hashMap;
        } catch (ProtocolException e3) {
            e3.printStackTrace();
            return hashMap;
        } catch (IOException e4) {
            e4.printStackTrace();
            return hashMap;
        }
        return hashMap;
    }

    public void getOneClickHash(String str, String str2, String str3) {
    }

    public void launchSdkUI(PayuHashes payuHashes) {
        this.intent.putExtra(PayuConstants.PAYU_CONFIG, this.payuConfig);
        this.intent.putExtra(PayuConstants.PAYMENT_PARAMS, this.mPaymentParams);
        this.intent.putExtra(PayuConstants.PAYU_HASHES, payuHashes);
        this.intent.putExtra(PayuConstants.SALT, this.salt);
        this.intent.putExtra(PayuConstants.STORE_ONE_CLICK_HASH, this.storeOneClickHash);
        if (this.storeOneClickHash == 1) {
            fetchMerchantHashes(this.intent);
        } else {
            startActivityForResult(this.intent, 100);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 100) {
            return;
        }
        if (intent != null) {
            new Builder(this).setCancelable(false).setMessage("Payu's Data : " + intent.getStringExtra(PayuConstants.PAYU_RESPONSE) + "\n\n\n Merchant's Data: " + intent.getStringExtra("result")).setPositiveButton(17039370, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).show();
        } else {
            Toast.makeText(this, "Could not receive data", 1).show();
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.button_add /*2131558527*/:
                addView();
            case R.id.button_next /*2131558528*/:
                this.nextButtonClicked = true;
                this.nextButton.setEnabled(false);
                navigateToBaseActivity();
            case R.id.button_verify_api /*2131558529*/:
                this.verifyApiButtonClicked = true;
                this.verifyApiButton.setEnabled(false);
                navigateToBaseActivity();
            default:
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_main);
        test();
        OnetapCallback.setOneTapCallback(this);
        Payu.setInstance(this);
        this.toolBar = (Toolbar) findViewById(R.id.app_bar);
        setSupportActionBar(this.toolBar);
        this.addButton = (Button) findViewById(R.id.button_add);
        this.nextButton = (Button) findViewById(R.id.button_next);
        this.verifyApiButton = (Button) findViewById(R.id.button_verify_api);
        this.rowContainerLinearLayout = (LinearLayout) findViewById(R.id.linear_layout_row_container);
        this.mainScrollView = (ScrollView) findViewById(R.id.scroll_view_main);
        this.addButton.setOnClickListener(this);
        this.nextButton.setOnClickListener(this);
        this.verifyApiButton.setOnClickListener(this);
        for (int i = 0; i < this.mandatoryKeys.length; i++) {
            addView();
            LinearLayout linearLayout = (LinearLayout) this.rowContainerLinearLayout.getChildAt(i);
            this.leftChild = (EditText) linearLayout.getChildAt(0);
            this.rightChild = (EditText) linearLayout.getChildAt(1);
            this.leftChild.setText(this.mandatoryKeys[i]);
            if (this.mandatoryValues[i] != null) {
                this.rightChild.setText(this.mandatoryValues[i]);
            }
            if (i <= this.mandatoryKeys.length) {
                this.leftChild.setId(this.idsKey[i]);
                this.rightChild.setId(this.idsValue[i]);
            }
        }
        PayUSdkDetails payUSdkDetails = new PayUSdkDetails();
        Toast.makeText(this, "Build No: " + payUSdkDetails.getSdkBuildNumber() + "\n Build Type: " + payUSdkDetails.getSdkBuildType() + " \n Build Flavor: " + payUSdkDetails.getSdkFlavor() + "\n Application Id: " + payUSdkDetails.getSdkApplicationId() + "\n Version Code: " + payUSdkDetails.getSdkVersionCode() + "\n Version Name: " + payUSdkDetails.getSdkVersionName(), 1).show();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.action_next /*2131558726*/:
                navigateToBaseActivity();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    protected void onPause() {
        super.onPause();
    }

    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.linear_layout_row_container);
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(i);
            String obj = ((EditText) linearLayout2.getChildAt(0)).getText().toString();
            boolean z = true;
            switch (obj.hashCode()) {
                case 110812421:
                    if (obj.equals(MRConstant.TRANSACTION_ID)) {
                        z = false;
                        break;
                    }
                    break;
            }
            switch (z) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    ((EditText) linearLayout2.getChildAt(1)).setText(BuildConfig.VERSION_NAME + System.currentTimeMillis());
                    break;
                default:
                    break;
            }
        }
        this.verifyApiButtonClicked = false;
        this.nextButtonClicked = false;
    }

    public void saveOneClickHash(String str, String str2) {
        storeMerchantHash(str, str2);
    }
}
