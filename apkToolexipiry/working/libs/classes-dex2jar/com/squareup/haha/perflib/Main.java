package com.squareup.haha.perflib;

import com.squareup.haha.perflib.io.MemoryMappedFileBuffer;
import java.io.File;
import java.util.Map;
import java.util.Set;

public class Main {
    public static void main(String[] strArr) {
        try {
            long nanoTime = System.nanoTime();
            Snapshot parse = new HprofParser(new MemoryMappedFileBuffer(new File(strArr[0]))).parse();
            testClassesQuery(parse);
            testAllClassesQuery(parse);
            testFindInstancesOf(parse);
            testFindAllInstancesOf(parse);
            System.out.println("Memory stats: free=" + Runtime.getRuntime().freeMemory() + " / total=" + Runtime.getRuntime().totalMemory());
            System.out.println("Time: " + ((System.nanoTime() - nanoTime) / 1000000) + "ms");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void testAllClassesQuery(Snapshot snapshot) {
        Map allClasses = Queries.allClasses(snapshot);
        for (String str : allClasses.keySet()) {
            System.out.println("------------------- " + str);
            for (ClassObj classObj : (Set) allClasses.get(str)) {
                System.out.println("     " + classObj.mClassName);
            }
        }
    }

    private static void testClassesQuery(Snapshot snapshot) {
        Map classes = Queries.classes(snapshot, new String[]{"char[", "javax.", "org.xml.sax"});
        for (String str : classes.keySet()) {
            System.out.println("------------------- " + str);
            for (ClassObj classObj : (Set) classes.get(str)) {
                System.out.println("     " + classObj.mClassName);
            }
        }
    }

    private static void testFindAllInstancesOf(Snapshot snapshot) {
        System.out.println("There are " + Queries.allInstancesOf(snapshot, "android.graphics.drawable.Drawable").length + " instances of Drawables and its subclasses.");
    }

    private static void testFindInstancesOf(Snapshot snapshot) {
        System.out.println("There are " + Queries.instancesOf(snapshot, "java.lang.String").length + " Strings.");
    }
}
