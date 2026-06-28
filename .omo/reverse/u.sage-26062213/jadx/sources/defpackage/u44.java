package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u44 extends nt1 {
    public static final Class i;
    public static final Constructor j;
    public static final Method k;
    public static final Method l;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            method2 = null;
        }
        j = constructor;
        i = cls;
        k = method2;
        l = method;
    }

    public static boolean Z(Object obj, ByteBuffer byteBuffer, int i2, int i3, boolean z) {
        try {
            return ((Boolean) k.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface a0(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) i, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) l.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // defpackage.nt1
    public final Typeface o(Context context, hb1 hb1Var, Resources resources, int i2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        MappedByteBuffer map;
        FileInputStream fileInputStream;
        try {
            objNewInstance = j.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            for (ib1 ib1Var : hb1Var.a) {
                int i3 = ib1Var.f;
                File fileB = is0.B(context);
                if (fileB != null) {
                    try {
                        if (is0.t(fileB, resources, i3)) {
                            try {
                                fileInputStream = new FileInputStream(fileB);
                            } catch (IOException unused2) {
                                map = null;
                            }
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                if (map != null && Z(objNewInstance, map, ib1Var.e, ib1Var.b, ib1Var.c)) {
                                }
                            } finally {
                            }
                        }
                    } finally {
                        fileB.delete();
                    }
                }
                map = null;
                if (map != null) {
                }
            }
            return a0(objNewInstance);
        }
        return null;
    }

    @Override // defpackage.nt1
    public final Typeface p(Context context, rb1[] rb1VarArr, int i2) {
        Object objNewInstance;
        try {
            objNewInstance = j.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            int i3 = 0;
            wm3 wm3Var = new wm3(0);
            int length = rb1VarArr.length;
            while (true) {
                if (i3 < length) {
                    rb1 rb1Var = rb1VarArr[i3];
                    Uri uri = rb1Var.a;
                    ByteBuffer byteBufferI = (ByteBuffer) wm3Var.get(uri);
                    if (byteBufferI == null) {
                        byteBufferI = is0.I(context, uri);
                        wm3Var.put(uri, byteBufferI);
                    }
                    if (byteBufferI == null || !Z(objNewInstance, byteBufferI, rb1Var.b, rb1Var.c, rb1Var.d)) {
                        break;
                    }
                    i3++;
                } else {
                    Typeface typefaceA0 = a0(objNewInstance);
                    if (typefaceA0 != null) {
                        return Typeface.create(typefaceA0, i2);
                    }
                }
            }
        }
        return null;
    }
}
