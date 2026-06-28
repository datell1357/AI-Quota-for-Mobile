package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class v44 extends t44 {
    public final Class n;
    public final Constructor o;
    public final Method p;
    public final Method q;
    public final Method r;
    public final Method s;
    public final Method t;

    public v44() throws NoSuchMethodException {
        Method methodF0;
        Constructor<?> constructor;
        Method methodE0;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodE0 = e0(cls2);
            Class cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodF0 = f0(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e.getClass().getName()), e);
            methodF0 = null;
            constructor = null;
            methodE0 = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.n = cls;
        this.o = constructor;
        this.p = methodE0;
        this.q = method;
        this.r = method2;
        this.s = method3;
        this.t = methodF0;
    }

    public static Method e0(Class cls) {
        Class cls2 = Boolean.TYPE;
        Class cls3 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls3, cls2, cls3, cls3, cls3, FontVariationAxis[].class);
    }

    public final boolean b0(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.p.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface c0(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.n, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.t.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean d0(Object obj) {
        try {
            return ((Boolean) this.r.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Method f0(Class cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance((Class<?>) cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // defpackage.t44, defpackage.nt1
    public final Typeface o(Context context, hb1 hb1Var, Resources resources, int i) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        Method method = this.p;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.o(context, hb1Var, resources, i);
        }
        try {
            objNewInstance = this.o.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            ib1[] ib1VarArr = hb1Var.a;
            int length = ib1VarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    ib1 ib1Var = ib1VarArr[i2];
                    String str = ib1Var.a;
                    int i3 = ib1Var.e;
                    int i4 = ib1Var.b;
                    boolean z = ib1Var.c;
                    FontVariationAxis[] fontVariationAxisArrFromFontVariationSettings = FontVariationAxis.fromFontVariationSettings(ib1Var.d);
                    v44 v44Var = this;
                    Context context2 = context;
                    if (v44Var.b0(context2, objNewInstance, str, i3, i4, z ? 1 : 0, fontVariationAxisArrFromFontVariationSettings)) {
                        i2++;
                        this = v44Var;
                        context = context2;
                    } else {
                        try {
                            v44Var.s.invoke(objNewInstance, null);
                            break;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                } else {
                    v44 v44Var2 = this;
                    if (v44Var2.d0(objNewInstance)) {
                        return v44Var2.c0(objNewInstance);
                    }
                }
            }
        }
        return null;
    }

    @Override // defpackage.t44, defpackage.nt1
    public final Typeface p(Context context, rb1[] rb1VarArr, int i) throws IOException {
        Object objNewInstance;
        Typeface typefaceC0;
        boolean zBooleanValue;
        if (rb1VarArr.length >= 1) {
            Method method = this.p;
            if (method == null) {
                Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
            }
            try {
                if (method != null) {
                    HashMap map = new HashMap();
                    for (rb1 rb1Var : rb1VarArr) {
                        if (rb1Var.f == 0) {
                            Uri uri = rb1Var.a;
                            if (!map.containsKey(uri)) {
                                map.put(uri, is0.I(context, uri));
                            }
                        }
                    }
                    Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
                    try {
                        objNewInstance = this.o.newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        objNewInstance = null;
                    }
                    if (objNewInstance != null) {
                        int length = rb1VarArr.length;
                        int i2 = 0;
                        boolean z = false;
                        while (true) {
                            Method method2 = this.s;
                            if (i2 < length) {
                                rb1 rb1Var2 = rb1VarArr[i2];
                                ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(rb1Var2.a);
                                if (byteBuffer != null) {
                                    try {
                                        zBooleanValue = ((Boolean) this.q.invoke(objNewInstance, byteBuffer, Integer.valueOf(rb1Var2.b), null, Integer.valueOf(rb1Var2.c), Integer.valueOf(rb1Var2.d ? 1 : 0))).booleanValue();
                                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                                        zBooleanValue = false;
                                    }
                                    if (!zBooleanValue) {
                                        method2.invoke(objNewInstance, null);
                                        break;
                                    }
                                    z = true;
                                }
                                i2++;
                                z = z;
                            } else if (!z) {
                                method2.invoke(objNewInstance, null);
                            } else if (d0(objNewInstance) && (typefaceC0 = c0(objNewInstance)) != null) {
                                return Typeface.create(typefaceC0, i);
                            }
                        }
                    }
                } else {
                    rb1 rb1VarU = nt1.u(rb1VarArr, i);
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(rb1VarU.a, "r", null);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(rb1VarU.c).setItalic(rb1VarU.d).build();
                            parcelFileDescriptorOpenFileDescriptor.close();
                            return typefaceBuild;
                        } finally {
                        }
                    }
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return null;
                    }
                }
            } catch (IOException | IllegalAccessException | InvocationTargetException unused3) {
            }
        }
        return null;
    }

    @Override // defpackage.nt1
    public final Typeface r(Context context, Resources resources, int i, String str, int i2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        Method method = this.p;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.r(context, resources, i, str, i2);
        }
        try {
            objNewInstance = this.o.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            if (!b0(context, objNewInstance, str, 0, -1, -1, null)) {
                try {
                    this.s.invoke(objNewInstance, null);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            } else if (d0(objNewInstance)) {
                return c0(objNewInstance);
            }
        }
        return null;
    }
}
