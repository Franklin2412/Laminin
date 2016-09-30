package com.payu.payuui.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.payu.india.Model.PaymentDetails;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuHashes;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.PostParams.PaymentPostParams;
import com.payu.payuui.Activity.PayUBaseActivity;
import com.payu.payuui.Activity.PaymentsActivity;
import com.payu.payuui.R;
import com.payu.payuui.SdkuiUtil.SdkUIConstants;
import com.squareup.haha.perflib.StackFrame;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class NetBankingFragment extends Fragment implements OnClickListener {
    private ImageButton axisImageButton;
    private TextView bankDownText;
    private String bankcode;
    private ImageButton citiImageButton;
    private ImageButton hdfcImageButton;
    private ImageButton iciciImageButton;
    private ArrayAdapter<String> mAdapter;
    private Bundle mBundle;
    private PaymentParams mPaymentParams;
    private ArrayList<PaymentDetails> netBankingList;
    private String[] netBanksCodesArray;
    private String[] netBanksNamesArray;
    private PayuConfig payuConfig;
    private PayuHashes payuHashes;
    private PostData postData;
    private ImageButton sbiImageButton;
    private Spinner spinnerNetbanking;
    private HashMap<String, Integer> valueAddedHashMap;
    private View view;

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100) {
            getActivity().setResult(i2, intent);
            getActivity().finish();
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        this.mPaymentParams.setHash(this.payuHashes.getPaymentHash());
        if (id == R.id.image_button_axis) {
            this.mPaymentParams.setBankCode("AXIB");
        } else if (id == R.id.image_button_hdfc) {
            this.mPaymentParams.setBankCode("HDFB");
        } else if (id == R.id.image_button_citi) {
            ViewPager viewPager = (ViewPager) getActivity().findViewById(R.id.pager);
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            return;
        } else if (id == R.id.image_button_sbi) {
            this.mPaymentParams.setBankCode("SBIB");
        } else if (id == R.id.image_button_icici) {
            this.mPaymentParams.setBankCode("ICIB");
        }
        try {
            this.postData = new PaymentPostParams(this.mPaymentParams, PayuConstants.NB).getPaymentPostParams();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.postData.getCode() == 0) {
            this.payuConfig.setData(this.postData.getResult());
            Intent intent = new Intent(getActivity(), PaymentsActivity.class);
            intent.putExtra(PayuConstants.PAYU_CONFIG, this.payuConfig);
            startActivityForResult(intent, 100);
            return;
        }
        Toast.makeText(getActivity(), this.postData.getResult(), 1).show();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.netBankingList = getArguments().getParcelableArrayList(PayuConstants.NETBANKING);
        this.valueAddedHashMap = (HashMap) getArguments().getSerializable(SdkUIConstants.VALUE_ADDED);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.view = layoutInflater.inflate(R.layout.fragment_net_banking, viewGroup, false);
        this.bankDownText = (TextView) this.view.findViewById(R.id.text_view_bank_down_error);
        ImageButton imageButton = (ImageButton) this.view.findViewById(R.id.image_button_axis);
        this.axisImageButton = imageButton;
        imageButton.setOnClickListener(this);
        imageButton = (ImageButton) this.view.findViewById(R.id.image_button_hdfc);
        this.hdfcImageButton = imageButton;
        imageButton.setOnClickListener(this);
        imageButton = (ImageButton) this.view.findViewById(R.id.image_button_citi);
        this.citiImageButton = imageButton;
        imageButton.setOnClickListener(this);
        imageButton = (ImageButton) this.view.findViewById(R.id.image_button_sbi);
        this.sbiImageButton = imageButton;
        imageButton.setOnClickListener(this);
        imageButton = (ImageButton) this.view.findViewById(R.id.image_button_icici);
        this.iciciImageButton = imageButton;
        imageButton.setOnClickListener(this);
        this.mBundle = ((PayUBaseActivity) getActivity()).bundle;
        this.mPaymentParams = (PaymentParams) this.mBundle.getParcelable(PayuConstants.PAYMENT_PARAMS);
        this.payuHashes = (PayuHashes) this.mBundle.getParcelable(PayuConstants.PAYU_HASHES);
        this.payuConfig = (PayuConfig) this.mBundle.getParcelable(PayuConstants.PAYU_CONFIG);
        this.payuConfig = this.payuConfig != null ? this.payuConfig : new PayuConfig();
        this.postData = new PostData();
        if (this.netBankingList != null) {
            List arrayList = new ArrayList();
            for (int i = 0; i < this.netBankingList.size(); i++) {
                arrayList.add(((PaymentDetails) this.netBankingList.get(i)).getBankName());
                String bankCode = ((PaymentDetails) this.netBankingList.get(i)).getBankCode();
                boolean z = true;
                switch (bankCode.hashCode()) {
                    case 2023312:
                        if (bankCode.equals("AXIB")) {
                            z = false;
                            break;
                        }
                        break;
                    case 2212536:
                        if (bankCode.equals("HDFB")) {
                            z = true;
                            break;
                        }
                        break;
                    case 2241459:
                        if (bankCode.equals("ICIB")) {
                            z = true;
                            break;
                        }
                        break;
                    case 2538408:
                        if (bankCode.equals("SBIB")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case StackFrame.NO_LINE_NUMBER /*0*/:
                        ((LinearLayout) this.view.findViewById(R.id.layout_axis)).setVisibility(0);
                        break;
                    case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                        ((LinearLayout) this.view.findViewById(R.id.layout_hdfc)).setVisibility(0);
                        break;
                    case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                        ((LinearLayout) this.view.findViewById(R.id.layout_sbi)).setVisibility(0);
                        break;
                    case com.payu.testapp.R.styleable.WaitingDots_autoplay /*3*/:
                        ((LinearLayout) this.view.findViewById(R.id.layout_icici)).setVisibility(0);
                        break;
                    default:
                        break;
                }
            }
            this.spinnerNetbanking = (Spinner) this.view.findViewById(R.id.spinner);
            this.mAdapter = new ArrayAdapter(getActivity(), 17367048, arrayList);
            this.mAdapter.setDropDownViewResource(17367049);
            this.spinnerNetbanking.setAdapter(this.mAdapter);
            this.spinnerNetbanking.setOnItemSelectedListener(new OnItemSelectedListener() {
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    NetBankingFragment.this.bankcode = ((PaymentDetails) NetBankingFragment.this.netBankingList.get(i)).getBankCode();
                    if (NetBankingFragment.this.valueAddedHashMap == null || NetBankingFragment.this.valueAddedHashMap.get(((PaymentDetails) NetBankingFragment.this.netBankingList.get(i)).getBankCode()) == null || NetBankingFragment.this.getActivity() == null) {
                        NetBankingFragment.this.bankDownText.setVisibility(8);
                    } else if (((Integer) NetBankingFragment.this.valueAddedHashMap.get(NetBankingFragment.this.bankcode)).intValue() == 0) {
                        NetBankingFragment.this.bankDownText.setVisibility(0);
                        NetBankingFragment.this.bankDownText.setText(((PaymentDetails) NetBankingFragment.this.netBankingList.get(i)).getBankName() + " is temporarily down");
                    } else {
                        NetBankingFragment.this.bankDownText.setVisibility(8);
                    }
                }

                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
        } else {
            Toast.makeText(getActivity(), "Could not get netbanking list Data from the previous activity", 1).show();
        }
        return this.view;
    }
}
