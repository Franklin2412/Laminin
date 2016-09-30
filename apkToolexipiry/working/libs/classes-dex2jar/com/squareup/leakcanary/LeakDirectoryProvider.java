package com.squareup.leakcanary;

import java.io.File;

public interface LeakDirectoryProvider {
    boolean isLeakStorageWritable();

    File leakDirectory();

    void requestWritePermission();
}
