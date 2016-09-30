package com.laminin.chatmaster;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.ListViewCompat;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;

import java.io.BufferedReader;
import java.io.FileReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    private final String HOTSPOT_NAME = "donttryme";
    private final String HOTSPOT_PASSWORD = "tryme";
    private ListView mIpListView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // create wifi hotspot
        createWifiHotspot();
        Button scanButton = (Button) findViewById(R.id.scan_button);
        scanButton.setOnClickListener(this);
        mIpListView = (ListView) findViewById(R.id.ip_list_view);
    }


    private void createWifiHotspot(){
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService(Context.WIFI_SERVICE);

        if(wifiManager.isWifiEnabled())
        {
            wifiManager.setWifiEnabled(false);
        }

        WifiConfiguration netConfig = new WifiConfiguration();

        netConfig.SSID = HOTSPOT_NAME;
        netConfig.allowedAuthAlgorithms.set(WifiConfiguration.AuthAlgorithm.OPEN);
        netConfig.allowedProtocols.set(WifiConfiguration.Protocol.RSN);
        netConfig.allowedProtocols.set(WifiConfiguration.Protocol.WPA);
        netConfig.allowedKeyManagement.set(WifiConfiguration.KeyMgmt.NONE);
        netConfig.preSharedKey = HOTSPOT_PASSWORD;

        try {
            Method setWifiApMethod = wifiManager.getClass().getMethod("setWifiApEnabled",  WifiConfiguration.class, boolean.class);
            boolean apstatus=(Boolean) setWifiApMethod.invoke(wifiManager, netConfig,true);
            Method isWifiApEnabledmethod = wifiManager.getClass().getMethod("isWifiApEnabled");
            while(!(Boolean)isWifiApEnabledmethod.invoke(wifiManager)){};
            Method getWifiApStateMethod = wifiManager.getClass().getMethod("getWifiApState");
            int apstate=(Integer)getWifiApStateMethod.invoke(wifiManager);
            Method getWifiApConfigurationMethod = wifiManager.getClass().getMethod("getWifiApConfiguration");
            netConfig=(WifiConfiguration)getWifiApConfigurationMethod.invoke(wifiManager);
        } catch (Exception e) {
        }
    }

    @Override
    public void onClick(View view) {
        switch(view.getId()){
            case R.id.scan_button:
                scanDevices();
                break;
            default:
                break;
        }
    }

    private void scanDevices(){
        ArrayList<String> ipList = new ArrayList<>();
        BufferedReader br = null;
        try {
            br = new BufferedReader(new FileReader("/proc/net/arp"));
            String line;
            while ((line = br.readLine()) != null) {
                String[] splitted = line.split(" +");
                if (splitted != null) {
                    ipList.add(splitted[0]);
                }
            }
        } catch(Exception e) {

        }

        setupIpListView(ipList);
    }

    private void setupIpListView(ArrayList<String> ipList){
        // setup adapter.
        IPListViewAdapter ipListViewAdapter = new IPListViewAdapter(this, ipList);
        mIpListView.setAdapter(ipListViewAdapter);
    }

}
