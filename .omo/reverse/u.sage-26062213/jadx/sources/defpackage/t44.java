package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class t44 extends nt1 {
    public static Class i = null;
    public static Constructor j = null;
    public static Method k = null;
    public static Method l = null;
    public static boolean m = false;

    public static boolean Z(Object obj, String str, int i2, boolean z) throws NoSuchMethodException {
        a0();
        try {
            return ((Boolean) k.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    public static void a0() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (m) {
            return;
        }
        m = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method = null;
            cls = null;
            method2 = null;
        }
        j = constructor;
        i = cls;
        k = method2;
        l = method;
    }

    @Override // defpackage.nt1
    public Typeface o(Context context, hb1 hb1Var, Resources resources, int i2) throws NoSuchMethodException {
        a0();
        try {
            Object objNewInstance = j.newInstance(null);
            for (ib1 ib1Var : hb1Var.a) {
                File fileB = is0.B(context);
                if (fileB == null) {
                    return null;
                }
                try {
                    if (!is0.t(fileB, resources, ib1Var.f)) {
                        return null;
                    }
                    if (!Z(objNewInstance, fileB.getPath(), ib1Var.b, ib1Var.c)) {
                        return null;
                    }
                    fileB.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    fileB.delete();
                }
            }
            a0();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) i, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) l.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // defpackage.nt1
    public Typeface p(Context context, rb1[] rb1VarArr, int i2) {
        Typeface typefaceCreateFromFile;
        String str;
        if (rb1VarArr.length >= 1) {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(nt1.u(rb1VarArr, i2).a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        try {
                            str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                        } finally {
                        }
                    } catch (ErrnoException unused) {
                    }
                    File file = OsConstants.S_ISREG(Os.stat(str).st_mode) ? new File(str) : null;
                    if (file != null && file.canRead()) {
                        Typeface typefaceCreateFromFile2 = Typeface.createFromFile(file);
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return typefaceCreateFromFile2;
                    }
                    FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    try {
                        File fileB = is0.B(context);
                        if (fileB == null) {
                            typefaceCreateFromFile = null;
                        } else {
                            try {
                                if (is0.u(fileB, fileInputStream)) {
                                    typefaceCreateFromFile = Typeface.createFromFile(fileB.getPath());
                                    fileB.delete();
                                }
                            } catch (RuntimeException unused2) {
                            } catch (Throwable th) {
                                fileB.delete();
                                throw th;
                            }
                            fileB.delete();
                            typefaceCreateFromFile = null;
                        }
                        fileInputStream.close();
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return typefaceCreateFromFile;
                    } finally {
                    }
                }
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return null;
                }
            } catch (IOException unused3) {
            }
        }
        return null;
    }
}
