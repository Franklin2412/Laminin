package com.payu.india.Interfaces;

import java.util.HashMap;

public interface OneClickPaymentListener {
    void deleteOneClickHash(String str, String str2);

    HashMap<String, String> getAllOneClickHash(String str);

    void getOneClickHash(String str, String str2, String str3);

    void saveOneClickHash(String str, String str2);
}
