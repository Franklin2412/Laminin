package com.squareup.haha.perflib;

public class StackFrame {
    public static final int COMPILED_METHOD = -2;
    public static final int NATIVE_METHOD = -3;
    public static final int NO_LINE_NUMBER = 0;
    public static final int UNKNOWN_LOCATION = -1;
    String mFilename;
    long mId;
    int mLineNumber;
    String mMethodName;
    int mSerialNumber;
    String mSignature;

    public StackFrame(long j, String str, String str2, String str3, int i, int i2) {
        this.mId = j;
        this.mMethodName = str;
        this.mSignature = str2;
        this.mFilename = str3;
        this.mSerialNumber = i;
        this.mLineNumber = i2;
    }

    private String lineNumberString() {
        switch (this.mLineNumber) {
            case NATIVE_METHOD /*-3*/:
                return "Native method";
            case COMPILED_METHOD /*-2*/:
                return "Compiled method";
            case UNKNOWN_LOCATION /*-1*/:
                return "Unknown line number";
            case NO_LINE_NUMBER /*0*/:
                return "No line number";
            default:
                return String.valueOf(this.mLineNumber);
        }
    }

    public final String toString() {
        return this.mMethodName + this.mSignature.replace('/', '.') + " - " + this.mFilename + ":" + lineNumberString();
    }
}
