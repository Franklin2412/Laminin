package com.laminin.franklinmichael.poc;

import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.zip.GZIPOutputStream;

import static android.R.id.input;


public class MainActivity extends AppCompatActivity {

    public static final String TAG = "franklin-poc";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        WebDriver driver = new AndroidDriver(getActivity());

        /*new AsyncTask<Void, Void, Void>() {
            @Override
            protected Void doInBackground(Void... voids) {
                try {
                    URL url = new URL("https://mobiletest.payu.in/_payment");
                    String inputData = "device_type=1&udid=d13a092942834c35&imei=default&key=gtKFFx&txnid=1470722807197&amount=1000.0&productinfo=myproduct&firstname=firstname&email=test@itsme.com&surl=https%3A%2F%2Fpayu.herokuapp.com%2Fsuccess&furl=https%3A%2F%2Fpayu.herokuapp.com%2Ffailure&hash=0a54f2670c58fa097020d4a3c85d7ec6b179134ae4ce6da37e1fdafcd3e675e848cac19d7af2cff14c63911bed5ea24230cc747f912957477ffdd37acaa02fd9&udf1=udf1&udf2=udf2&udf3=udf3&udf4=udf4&udf5=udf5&offer_key=cardnumber@8370,cardnumbers2@8380&pg=CC&bankcode=CC&user_credentials=gtKFFx:snooze@payu.in&store_card_token=f8ff6ca736b70d5252cb02474e6d4088ccb77bdd&ccvv=123&ccexpmon=12&ccexpyr=2028&ccname=test&snooze=3";
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    conn.setDoOutput(true);
                    conn.setInstanceFollowRedirects(false);
                    conn.getOutputStream().write(inputData.getBytes());
                    InputStream responseInputStream = conn.getInputStream();


                    switch (conn.getResponseCode())
                    {
                        case HttpURLConnection.HTTP_MOVED_PERM:
                        case HttpURLConnection.HTTP_MOVED_TEMP:
                        case HttpURLConnection.HTTP_OK:
                            location = conn.getHeaderField("Location");
                            base     = new URL(url);
                            next     = new URL(base, location);  // Deal with relative URLs
                            url      = next.toExternalForm();
                            continue;
                    }


                } catch (ProtocolException e) {
                    e.printStackTrace();
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return null;
            }
        }.execute();*/
    }


    private void sendGZipedData(){
        new AsyncTask<Void, Void, Void>(){

            @Override
            protected Void doInBackground(Void... voids) {
                String input = "command=sdkWsNew&var1=[{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"payu_back_button\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"back_button_ok\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"last_url\",\"value\":\"s%3ahttps%3a%2f%2fsecure.payu.in%2fpay%7c%7cf%3ahttps%3a%2f%2fsecure.payu.in%2fpay\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"payu_back_button\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"back_button_ok\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"last_url\",\"value\":\"s%3ahttps%3a%2f%2fsecure.payu.in%2fpay%7c%7cf%3ahttps%3a%2f%2fsecure.payu.in%2fpay\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"payu_back_button\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"back_button_ok\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"last_url\",\"value\":\"s%3ahttps%3a%2f%2fsecure.payu.in%2fpay%7c%7cf%3ahttps%3a%2f%2fsecure.payu.in%2fpay\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"payu_back_button\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"back_button_ok\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"last_url\",\"value\":\"s%3ahttps%3a%2f%2fsecure.payu.in%2fpay%7c%7cf%3ahttps%3a%2f%2fsecure.payu.in%2fpay\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"cb_status\",\"value\":\"non_custom_browser\",\"merchant_key\":\"smsplus\"},{\"txnid\":\"1471348680668\",\"cb_version\":\"6.0.0\",\"package_name\":\"com.payu.testapp\",\"bank\":\"\",\"key\":\"user_input\",\"value\":\"terminate_transaction\",\"merchant_key\":\"smsplus\"}]";
                GZIPOutputStream gzipOS = null;
                try {
                    ByteArrayOutputStream byteArrayOS = new ByteArrayOutputStream();
                    gzipOS = new GZIPOutputStream(byteArrayOS);
                    gzipOS.write(input.getBytes());
                    gzipOS.flush();
                    gzipOS.close();
                    gzipOS = null;
                    byteArrayOS.toByteArray();

//                        URL url = new URL("http://10.100.32.12:8001");
                    Log.d("franklin", "GZIP DATA: " + byteArrayOS);
                    URL url = new URL("http://www.google.com");
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    conn.setRequestProperty("Content-Length", String.valueOf(byteArrayOS.toByteArray().length));
                    conn.setRequestProperty("Content-Encoding", "gzip");
                    conn.setDoOutput(true);
//                        conn.getOutputStream().write(byteArrayOS.toByteArray());
                    conn.getOutputStream().write(input.getBytes());


                    InputStream responseInputStream = conn.getInputStream();
                    StringBuffer responseStringBuffer = new StringBuffer();
                    byte[] byteContainer = new byte[1024];
                    for (int i; (i = responseInputStream.read(byteContainer)) != -1; ) {
                        responseStringBuffer.append(new String(byteContainer, 0, i));
                    }


                } catch (Exception e) {
//                        throw new WebbException(e); // <-- just a RuntimeException
                    Log.d("error", e.getMessage());
                } finally {
                    if (gzipOS != null) {
                        try { gzipOS.close(); } catch (Exception ignored) {}
                    }
                }



                return null;
            }
        }.execute();
    }
}






// https://github.com/geb/geb-example-gradle/blob/master/build.gradle
