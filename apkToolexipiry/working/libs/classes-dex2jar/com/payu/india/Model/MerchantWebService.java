package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MerchantWebService implements Parcelable {
    public static final Creator<MerchantWebService> CREATOR;
    private String command;
    private String hash;
    private String key;
    private String var1;
    private String var10;
    private String var11;
    private String var12;
    private String var13;
    private String var14;
    private String var15;
    private String var2;
    private String var3;
    private String var4;
    private String var5;
    private String var6;
    private String var7;
    private String var8;
    private String var9;

    static {
        CREATOR = new Creator<MerchantWebService>() {
            public MerchantWebService createFromParcel(Parcel parcel) {
                return new MerchantWebService(null);
            }

            public MerchantWebService[] newArray(int i) {
                return new MerchantWebService[i];
            }
        };
    }

    private MerchantWebService(Parcel parcel) {
        this.key = parcel.readString();
        this.command = parcel.readString();
        this.hash = parcel.readString();
        this.var1 = parcel.readString();
        this.var2 = parcel.readString();
        this.var3 = parcel.readString();
        this.var4 = parcel.readString();
        this.var5 = parcel.readString();
        this.var6 = parcel.readString();
        this.var7 = parcel.readString();
        this.var8 = parcel.readString();
        this.var9 = parcel.readString();
        this.var10 = parcel.readString();
        this.var11 = parcel.readString();
        this.var12 = parcel.readString();
        this.var13 = parcel.readString();
        this.var14 = parcel.readString();
        this.var15 = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getCommand() {
        return this.command;
    }

    public String getHash() {
        return this.hash;
    }

    public String getKey() {
        return this.key;
    }

    public String getVar1() {
        return this.var1;
    }

    public String getVar10() {
        return this.var10;
    }

    public String getVar11() {
        return this.var11;
    }

    public String getVar12() {
        return this.var12;
    }

    public String getVar13() {
        return this.var13;
    }

    public String getVar14() {
        return this.var14;
    }

    public String getVar15() {
        return this.var15;
    }

    public String getVar2() {
        return this.var2;
    }

    public String getVar3() {
        return this.var3;
    }

    public String getVar4() {
        return this.var4;
    }

    public String getVar5() {
        return this.var5;
    }

    public String getVar6() {
        return this.var6;
    }

    public String getVar7() {
        return this.var7;
    }

    public String getVar8() {
        return this.var8;
    }

    public String getVar9() {
        return this.var9;
    }

    public void setCommand(String str) {
        this.command = str;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setVar1(String str) {
        this.var1 = str;
    }

    public void setVar10(String str) {
        this.var10 = str;
    }

    public void setVar11(String str) {
        this.var11 = str;
    }

    public void setVar12(String str) {
        this.var12 = str;
    }

    public void setVar13(String str) {
        this.var13 = str;
    }

    public void setVar14(String str) {
        this.var14 = str;
    }

    public void setVar15(String str) {
        this.var15 = str;
    }

    public void setVar2(String str) {
        this.var2 = str;
    }

    public void setVar3(String str) {
        this.var3 = str;
    }

    public void setVar4(String str) {
        this.var4 = str;
    }

    public void setVar5(String str) {
        this.var5 = str;
    }

    public void setVar6(String str) {
        this.var6 = str;
    }

    public void setVar7(String str) {
        this.var7 = str;
    }

    public void setVar8(String str) {
        this.var8 = str;
    }

    public void setVar9(String str) {
        this.var9 = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeString(this.command);
        parcel.writeString(this.hash);
        parcel.writeString(this.var1);
        parcel.writeString(this.var2);
        parcel.writeString(this.var3);
        parcel.writeString(this.var4);
        parcel.writeString(this.var5);
        parcel.writeString(this.var6);
        parcel.writeString(this.var7);
        parcel.writeString(this.var8);
        parcel.writeString(this.var9);
        parcel.writeString(this.var10);
        parcel.writeString(this.var11);
        parcel.writeString(this.var12);
        parcel.writeString(this.var13);
        parcel.writeString(this.var14);
        parcel.writeString(this.var15);
    }
}
