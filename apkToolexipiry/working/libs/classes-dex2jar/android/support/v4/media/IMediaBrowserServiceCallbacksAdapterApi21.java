package android.support.v4.media;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class IMediaBrowserServiceCallbacksAdapterApi21 {
    private Method mAsBinderMethod;
    Object mCallbackObject;
    private Method mOnConnectFailedMethod;
    private Method mOnConnectMethod;
    private Method mOnLoadChildrenMethod;

    static class Stub {
        static Method sAsInterfaceMethod;

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        static {
            /*
            r0 = "android.service.media.IMediaBrowserServiceCallbacks$Stub";
            r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x001c, NoSuchMethodException -> 0x0017 }
            r1 = "asInterface";
            r2 = 1;
            r2 = new java.lang.Class[r2];	 Catch:{ ClassNotFoundException -> 0x001c, NoSuchMethodException -> 0x0017 }
            r3 = 0;
            r4 = android.os.IBinder.class;
            r2[r3] = r4;	 Catch:{ ClassNotFoundException -> 0x001c, NoSuchMethodException -> 0x0017 }
            r0 = r0.getMethod(r1, r2);	 Catch:{ ClassNotFoundException -> 0x001c, NoSuchMethodException -> 0x0017 }
            sAsInterfaceMethod = r0;	 Catch:{ ClassNotFoundException -> 0x001c, NoSuchMethodException -> 0x0017 }
        L_0x0016:
            return;
        L_0x0017:
            r0 = move-exception;
        L_0x0018:
            r0.printStackTrace();
            goto L_0x0016;
        L_0x001c:
            r0 = move-exception;
            goto L_0x0018;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.IMediaBrowserServiceCallbacksAdapterApi21.Stub.<clinit>():void");
        }

        Stub() {
        }

        static Object asInterface(IBinder iBinder) {
            ReflectiveOperationException e;
            try {
                return sAsInterfaceMethod.invoke(null, new Object[]{iBinder});
            } catch (IllegalAccessException e2) {
                e = e2;
                e.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                e = e3;
                e.printStackTrace();
                return null;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    IMediaBrowserServiceCallbacksAdapterApi21(java.lang.Object r7) {
        /*
        r6 = this;
        r6.<init>();
        r6.mCallbackObject = r7;
        r0 = "android.service.media.IMediaBrowserServiceCallbacks";
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r1 = "android.content.pm.ParceledListSlice";
        r1 = java.lang.Class.forName(r1);	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = "asBinder";
        r3 = 0;
        r3 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = r0.getMethod(r2, r3);	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r6.mAsBinderMethod = r2;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = "onConnect";
        r3 = 3;
        r3 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r4 = 0;
        r5 = java.lang.String.class;
        r3[r4] = r5;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r4 = 1;
        r5 = android.media.session.MediaSession.Token.class;
        r3[r4] = r5;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r4 = 2;
        r5 = android.os.Bundle.class;
        r3[r4] = r5;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = r0.getMethod(r2, r3);	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r6.mOnConnectMethod = r2;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = "onConnectFailed";
        r3 = 0;
        r3 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = r0.getMethod(r2, r3);	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r6.mOnConnectFailedMethod = r2;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r2 = "onLoadChildren";
        r3 = 2;
        r3 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r4 = 0;
        r5 = java.lang.String.class;
        r3[r4] = r5;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r4 = 1;
        r3[r4] = r1;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r0 = r0.getMethod(r2, r3);	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
        r6.mOnLoadChildrenMethod = r0;	 Catch:{ ClassNotFoundException -> 0x005a, NoSuchMethodException -> 0x0055 }
    L_0x0054:
        return;
    L_0x0055:
        r0 = move-exception;
    L_0x0056:
        r0.printStackTrace();
        goto L_0x0054;
    L_0x005a:
        r0 = move-exception;
        goto L_0x0056;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.IMediaBrowserServiceCallbacksAdapterApi21.<init>(java.lang.Object):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    android.os.IBinder asBinder() {
        /*
        r3 = this;
        r0 = r3.mAsBinderMethod;	 Catch:{ IllegalAccessException -> 0x0014, InvocationTargetException -> 0x000e }
        r1 = r3.mCallbackObject;	 Catch:{ IllegalAccessException -> 0x0014, InvocationTargetException -> 0x000e }
        r2 = 0;
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x0014, InvocationTargetException -> 0x000e }
        r0 = r0.invoke(r1, r2);	 Catch:{ IllegalAccessException -> 0x0014, InvocationTargetException -> 0x000e }
        r0 = (android.os.IBinder) r0;	 Catch:{ IllegalAccessException -> 0x0014, InvocationTargetException -> 0x000e }
    L_0x000d:
        return r0;
    L_0x000e:
        r0 = move-exception;
    L_0x000f:
        r0.printStackTrace();
        r0 = 0;
        goto L_0x000d;
    L_0x0014:
        r0 = move-exception;
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.IMediaBrowserServiceCallbacksAdapterApi21.asBinder():android.os.IBinder");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void onConnect(java.lang.String r5, java.lang.Object r6, android.os.Bundle r7) throws android.os.RemoteException {
        /*
        r4 = this;
        r0 = r4.mOnConnectMethod;	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
        r1 = r4.mCallbackObject;	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
        r2 = 3;
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
        r3 = 0;
        r2[r3] = r5;	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
        r3 = 1;
        r2[r3] = r6;	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
        r3 = 2;
        r2[r3] = r7;	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
        r0.invoke(r1, r2);	 Catch:{ IllegalAccessException -> 0x0019, InvocationTargetException -> 0x0014 }
    L_0x0013:
        return;
    L_0x0014:
        r0 = move-exception;
    L_0x0015:
        r0.printStackTrace();
        goto L_0x0013;
    L_0x0019:
        r0 = move-exception;
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.IMediaBrowserServiceCallbacksAdapterApi21.onConnect(java.lang.String, java.lang.Object, android.os.Bundle):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void onConnectFailed() throws android.os.RemoteException {
        /*
        r3 = this;
        r0 = r3.mOnConnectFailedMethod;	 Catch:{ IllegalAccessException -> 0x0010, InvocationTargetException -> 0x000b }
        r1 = r3.mCallbackObject;	 Catch:{ IllegalAccessException -> 0x0010, InvocationTargetException -> 0x000b }
        r2 = 0;
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x0010, InvocationTargetException -> 0x000b }
        r0.invoke(r1, r2);	 Catch:{ IllegalAccessException -> 0x0010, InvocationTargetException -> 0x000b }
    L_0x000a:
        return;
    L_0x000b:
        r0 = move-exception;
    L_0x000c:
        r0.printStackTrace();
        goto L_0x000a;
    L_0x0010:
        r0 = move-exception;
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.IMediaBrowserServiceCallbacksAdapterApi21.onConnectFailed():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void onLoadChildren(java.lang.String r5, java.lang.Object r6) throws android.os.RemoteException {
        /*
        r4 = this;
        r0 = r4.mOnLoadChildrenMethod;	 Catch:{ IllegalAccessException -> 0x0016, InvocationTargetException -> 0x0011 }
        r1 = r4.mCallbackObject;	 Catch:{ IllegalAccessException -> 0x0016, InvocationTargetException -> 0x0011 }
        r2 = 2;
        r2 = new java.lang.Object[r2];	 Catch:{ IllegalAccessException -> 0x0016, InvocationTargetException -> 0x0011 }
        r3 = 0;
        r2[r3] = r5;	 Catch:{ IllegalAccessException -> 0x0016, InvocationTargetException -> 0x0011 }
        r3 = 1;
        r2[r3] = r6;	 Catch:{ IllegalAccessException -> 0x0016, InvocationTargetException -> 0x0011 }
        r0.invoke(r1, r2);	 Catch:{ IllegalAccessException -> 0x0016, InvocationTargetException -> 0x0011 }
    L_0x0010:
        return;
    L_0x0011:
        r0 = move-exception;
    L_0x0012:
        r0.printStackTrace();
        goto L_0x0010;
    L_0x0016:
        r0 = move-exception;
        goto L_0x0012;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.IMediaBrowserServiceCallbacksAdapterApi21.onLoadChildren(java.lang.String, java.lang.Object):void");
    }
}
