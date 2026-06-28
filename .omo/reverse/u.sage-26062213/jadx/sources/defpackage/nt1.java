package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Path;
import android.graphics.Typeface;
import android.os.Build;
import android.os.LocaleList;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LocaleSpan;
import android.text.style.RelativeSizeSpan;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.translation.TranslationResponseValue;
import android.view.translation.ViewTranslationResponse;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.android.gms.common.api.Api;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class nt1 {
    public static final f54 a = f54.r;
    public static final pd0 b = new pd0();
    public static final ei0 c = new ei0(5);
    public static final z70 d;
    public static final float e;
    public static final z70 f;
    public static final z70 g;
    public static final Object h;

    static {
        z70 z70Var = z70.f434u;
        d = z70Var;
        e = 0.38f;
        f = z70Var;
        g = z70.w;
        h = new Object();
    }

    public nt1() {
        new ConcurrentHashMap();
    }

    public static Object A(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            return arrayList.get(arrayList.size() - 1);
        }
        p61.v();
        return null;
    }

    public static final ww2 B(View view) {
        ww2 ww2Var = (ww2) view.getTag(R.id.pooling_container_listener_holder_tag);
        if (ww2Var != null) {
            return ww2Var;
        }
        ww2 ww2Var2 = new ww2();
        view.setTag(R.id.pooling_container_listener_holder_tag, ww2Var2);
        return ww2Var2;
    }

    public static final zr3 C(gp3 gp3Var) {
        zr3 zr3Var = gp3Var.n;
        zr3Var.getClass();
        return (zr3) wo3.t(zr3Var, gp3Var);
    }

    public static final int E(gp3 gp3Var) {
        zr3 zr3Var = gp3Var.n;
        zr3Var.getClass();
        return ((zr3) wo3.h(zr3Var)).e;
    }

    public static int F(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static boolean G(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static final void I(String str) {
        str.getClass();
        throw new IllegalArgumentException(di0.v("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }

    public static final void J(ya2 ya2Var, k91 k91Var, long j, pe1 pe1Var) {
        if (k75.C(k75.B(ya2Var)) != 0.0f) {
            k91Var.getClass();
            ya2Var.T(ya2Var.K(Api.BaseClientBuilder.API_PRIORITY_OTHER));
            return;
        }
        k75.B(ya2Var);
        dv2 dv2VarE = ya2Var.e(j);
        pe1Var.k(dv2VarE);
        k91Var.getClass();
        dv2VarE.a0();
        dv2VarE.Y();
    }

    public static final boolean K(gp3 gp3Var, pe1 pe1Var) {
        int i;
        s1 s1Var;
        Object objK;
        po3 po3VarJ;
        boolean zH;
        do {
            synchronized (h) {
                zr3 zr3Var = gp3Var.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            vu2 vu2VarG = s1Var.g();
            objK = pe1Var.k(vu2VarG);
            s1 s1VarE = vu2VarG.e();
            if (g(s1VarE, s1Var)) {
                break;
            }
            zr3 zr3Var3 = gp3Var.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = h((zr3) wo3.w(zr3Var3, gp3Var, po3VarJ), i, s1VarE, true);
            }
            wo3.n(po3VarJ, gp3Var);
        } while (!zH);
        return ((Boolean) objK).booleanValue();
    }

    public static HashSet L(int i) {
        int iCeil;
        if (i < 3) {
            ht4.i(i, "expectedSize");
            iCeil = i + 1;
        } else {
            iCeil = i < 1073741824 ? (int) Math.ceil(((double) i) / 0.75d) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return new HashSet(iCeil);
    }

    public static final boolean M(String str) {
        str.getClass();
        return (str.equals(HttpMethods.GET) || str.equals(HttpMethods.HEAD)) ? false : true;
    }

    public static final void N(xn3 xn3Var, kh khVar, int i) {
        while (true) {
            int i2 = xn3Var.v;
            if (i > i2 && i < xn3Var.f410u) {
                return;
            }
            if (i2 == 0 && i == 0) {
                return;
            }
            xn3Var.M();
            if (xn3Var.y(xn3Var.v)) {
                khVar.n();
            }
            xn3Var.j();
        }
    }

    public static final ga4 O(so1 so1Var, ag1 ag1Var) {
        as0 as0Var = (as0) ag1Var.j(kc0.h);
        boolean zE = ag1Var.e((((long) Float.floatToRawIntBits(as0Var.b())) & 4294967295L) | (((long) Float.floatToRawIntBits(so1Var.j)) << 32));
        Object objK = ag1Var.K();
        if (zE || objK == rb0.a) {
            li1 li1Var = new li1();
            s(li1Var, so1Var.f);
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(as0Var.v(so1Var.b))) << 32) | (((long) Float.floatToRawIntBits(as0Var.v(so1Var.c))) & 4294967295L);
            float fIntBitsToFloat = so1Var.d;
            float fIntBitsToFloat2 = so1Var.e;
            if (Float.isNaN(fIntBitsToFloat)) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
            }
            if (Float.isNaN(fIntBitsToFloat2)) {
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L));
            }
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (4294967295L & ((long) Float.floatToRawIntBits(fIntBitsToFloat2)));
            ga4 ga4Var = new ga4(li1Var);
            String str = so1Var.a;
            long j = so1Var.g;
            ow owVar = j != 16 ? new ow(j, so1Var.h) : null;
            boolean z = so1Var.i;
            ga4Var.s.setValue(new mn3(jFloatToRawIntBits));
            ga4Var.t.setValue(Boolean.valueOf(z));
            aa4 aa4Var = ga4Var.f109u;
            aa4Var.g.setValue(owVar);
            aa4Var.i.setValue(new mn3(jFloatToRawIntBits2));
            aa4Var.c = str;
            ag1Var.g0(ga4Var);
            objK = ga4Var;
        }
        return (ga4) objK;
    }

    public static final float P(long j, float f2, as0 as0Var) {
        float fC;
        long jB = cy3.b(j);
        if (dy3.a(jB, 4294967296L)) {
            if (as0Var.k() <= 1.05d) {
                return as0Var.Z(j);
            }
            fC = cy3.c(j) / cy3.c(as0Var.i0(f2));
        } else {
            if (!dy3.a(jB, 8589934592L)) {
                return Float.NaN;
            }
            fC = cy3.c(j);
        }
        return fC * f2;
    }

    public static final void Q(o20 o20Var, dh0 dh0Var, boolean z) {
        Object objW = o20Var.w();
        Throwable thF = o20Var.f(objW);
        Object f83Var = thF != null ? new f83(thF) : o20Var.j(objW);
        if (!z) {
            dh0Var.g(f83Var);
            return;
        }
        dh0Var.getClass();
        su0 su0Var = (su0) dh0Var;
        fh0 fh0Var = su0Var.r;
        Object obj = su0Var.t;
        hi0 hi0VarE = fh0Var.e();
        Object objC = iy3.c(hi0VarE, obj);
        o64 o64VarB0 = objC != iy3.a ? ix.b0(fh0Var, hi0VarE, objC) : null;
        try {
            fh0Var.g(f83Var);
            if (o64VarB0 == null || o64VarB0.u0()) {
                iy3.a(hi0VarE, objC);
            }
        } catch (Throwable th) {
            if (o64VarB0 == null || o64VarB0.u0()) {
                iy3.a(hi0VarE, objC);
            }
            throw th;
        }
    }

    public static void R(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    public static final int S(tg3 tg3Var, int i) {
        int i2;
        int[] iArr = tg3Var.s;
        int i3 = i + 1;
        int length = tg3Var.r.length;
        iArr.getClass();
        int i4 = length - 1;
        int i5 = 0;
        while (true) {
            if (i5 <= i4) {
                i2 = (i5 + i4) >>> 1;
                int i6 = iArr[i2];
                if (i6 >= i3) {
                    if (i6 <= i3) {
                        break;
                    }
                    i4 = i2 - 1;
                } else {
                    i5 = i2 + 1;
                }
            } else {
                i2 = (-i5) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }

    public static final void T(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            spannable.setSpan(new ForegroundColorSpan(c75.R(j)), i, i2, 33);
        }
    }

    public static final void U(Spannable spannable, long j, as0 as0Var, int i, int i2) {
        long jB = cy3.b(j);
        if (dy3.a(jB, 4294967296L)) {
            spannable.setSpan(new AbsoluteSizeSpan(is0.V(as0Var.Z(j)), false), i, i2, 33);
        } else if (dy3.a(jB, 8589934592L)) {
            spannable.setSpan(new RelativeSizeSpan(cy3.c(j)), i, i2, 33);
        }
    }

    public static final void V(Spannable spannable, e72 e72Var, int i, int i2) {
        if (e72Var != null) {
            ArrayList arrayList = new ArrayList(p70.a0(e72Var, 10));
            Iterator it = e72Var.n.iterator();
            while (it.hasNext()) {
                arrayList.add(((d72) it.next()).a);
            }
            Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
            spannable.setSpan(new LocaleSpan(new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length))), i, i2, 33);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String W(String str) {
        int iHashCode = str.hashCode();
        switch (iHashCode) {
            case -2061550653:
                if (str.equals("kotlin.jvm.internal.DoubleCompanionObject")) {
                    return "Companion";
                }
                return null;
            case -2056817302:
                if (str.equals("java.lang.Integer")) {
                    return "Int";
                }
                return null;
            case -2034166429:
                if (str.equals("java.lang.Cloneable")) {
                    return "Cloneable";
                }
                return null;
            case -1979556166:
                if (str.equals("java.lang.annotation.Annotation")) {
                    return "Annotation";
                }
                return null;
            case -1571515090:
                if (str.equals("java.lang.Comparable")) {
                    return "Comparable";
                }
                return null;
            case -1383349348:
                if (str.equals("java.util.Map")) {
                    return "Map";
                }
                return null;
            case -1383343454:
                if (str.equals("java.util.Set")) {
                    return "Set";
                }
                return null;
            case -1325958191:
                if (str.equals("double")) {
                    return "Double";
                }
                return null;
            case -1182275604:
                if (str.equals("kotlin.jvm.internal.ByteCompanionObject")) {
                    return "Companion";
                }
                return null;
            case -1062240117:
                if (str.equals("java.lang.CharSequence")) {
                    return "CharSequence";
                }
                return null;
            case -688322466:
                if (str.equals("java.util.Collection")) {
                    return "Collection";
                }
                return null;
            case -527879800:
                if (str.equals("java.lang.Float")) {
                    return "Float";
                }
                return null;
            case -515992664:
                if (str.equals("java.lang.Short")) {
                    return "Short";
                }
                return null;
            case -246476834:
                if (str.equals("kotlin.jvm.internal.CharCompanionObject")) {
                    return "Companion";
                }
                return null;
            case -207262728:
                if (str.equals("kotlin.jvm.internal.LongCompanionObject")) {
                    return "Companion";
                }
                return null;
            case -165139126:
                if (str.equals("java.util.Map$Entry")) {
                    return "Entry";
                }
                return null;
            case 104431:
                if (str.equals("int")) {
                    return "Int";
                }
                return null;
            case 3039496:
                if (str.equals("byte")) {
                    return "Byte";
                }
                return null;
            case 3052374:
                if (str.equals("char")) {
                    return "Char";
                }
                return null;
            case 3327612:
                if (str.equals("long")) {
                    return "Long";
                }
                return null;
            case 64711720:
                if (str.equals("boolean")) {
                    return "Boolean";
                }
                return null;
            case 65821278:
                if (str.equals("java.util.List")) {
                    return "List";
                }
                return null;
            case 77230534:
                if (str.equals("kotlin.jvm.internal.ShortCompanionObject")) {
                    return "Companion";
                }
                return null;
            case 97526364:
                if (str.equals("float")) {
                    return "Float";
                }
                return null;
            case 109413500:
                if (str.equals("short")) {
                    return "Short";
                }
                return null;
            case 155276373:
                if (str.equals("java.lang.Character")) {
                    return "Char";
                }
                return null;
            case 226173651:
                if (str.equals("kotlin.jvm.internal.EnumCompanionObject")) {
                    return "Companion";
                }
                return null;
            case 344809556:
                if (str.equals("java.lang.Boolean")) {
                    return "Boolean";
                }
                return null;
            case 398507100:
                if (str.equals("java.lang.Byte")) {
                    return "Byte";
                }
                return null;
            case 398585941:
                if (str.equals("java.lang.Enum")) {
                    return "Enum";
                }
                return null;
            case 398795216:
                if (str.equals("java.lang.Long")) {
                    return "Long";
                }
                return null;
            case 482629606:
                if (str.equals("kotlin.jvm.internal.FloatCompanionObject")) {
                    return "Companion";
                }
                return null;
            case 499831342:
                if (str.equals("java.util.Iterator")) {
                    return "Iterator";
                }
                return null;
            case 577341676:
                if (str.equals("java.util.ListIterator")) {
                    return "ListIterator";
                }
                return null;
            case 599019395:
                if (str.equals("kotlin.jvm.internal.StringCompanionObject")) {
                    return "Companion";
                }
                return null;
            case 761287205:
                if (str.equals("java.lang.Double")) {
                    return "Double";
                }
                return null;
            case 1052881309:
                if (str.equals("java.lang.Number")) {
                    return "Number";
                }
                return null;
            case 1063877011:
                if (str.equals("java.lang.Object")) {
                    return "Any";
                }
                return null;
            case 1195259493:
                if (str.equals("java.lang.String")) {
                    return "String";
                }
                return null;
            case 1275614662:
                if (str.equals("java.lang.Iterable")) {
                    return "Iterable";
                }
                return null;
            case 1383693018:
                if (str.equals("kotlin.jvm.internal.BooleanCompanionObject")) {
                    return "Companion";
                }
                return null;
            case 1630335596:
                if (str.equals("java.lang.Throwable")) {
                    return "Throwable";
                }
                return null;
            case 1877171123:
                if (str.equals("kotlin.jvm.internal.IntCompanionObject")) {
                    return "Companion";
                }
                return null;
            default:
                switch (iHashCode) {
                    case -1811142716:
                        if (str.equals("kotlin.jvm.functions.Function10")) {
                            return "Function10";
                        }
                        return null;
                    case -1811142715:
                        if (str.equals("kotlin.jvm.functions.Function11")) {
                            return "Function11";
                        }
                        return null;
                    case -1811142714:
                        if (str.equals("kotlin.jvm.functions.Function12")) {
                            return "Function12";
                        }
                        return null;
                    case -1811142713:
                        if (str.equals("kotlin.jvm.functions.Function13")) {
                            return "Function13";
                        }
                        return null;
                    case -1811142712:
                        if (str.equals("kotlin.jvm.functions.Function14")) {
                            return "Function14";
                        }
                        return null;
                    case -1811142711:
                        if (str.equals("kotlin.jvm.functions.Function15")) {
                            return "Function15";
                        }
                        return null;
                    case -1811142710:
                        if (str.equals("kotlin.jvm.functions.Function16")) {
                            return "Function16";
                        }
                        return null;
                    case -1811142709:
                        if (str.equals("kotlin.jvm.functions.Function17")) {
                            return "Function17";
                        }
                        return null;
                    case -1811142708:
                        if (str.equals("kotlin.jvm.functions.Function18")) {
                            return "Function18";
                        }
                        return null;
                    case -1811142707:
                        if (str.equals("kotlin.jvm.functions.Function19")) {
                            return "Function19";
                        }
                        return null;
                    default:
                        switch (iHashCode) {
                            case -1811142685:
                                if (str.equals("kotlin.jvm.functions.Function20")) {
                                    return "Function20";
                                }
                                return null;
                            case -1811142684:
                                if (str.equals("kotlin.jvm.functions.Function21")) {
                                    return "Function21";
                                }
                                return null;
                            case -1811142683:
                                if (str.equals("kotlin.jvm.functions.Function22")) {
                                    return "Function22";
                                }
                                return null;
                            default:
                                switch (iHashCode) {
                                    case 80123371:
                                        if (str.equals("kotlin.jvm.functions.Function0")) {
                                            return "Function0";
                                        }
                                        return null;
                                    case 80123372:
                                        if (str.equals("kotlin.jvm.functions.Function1")) {
                                            return "Function1";
                                        }
                                        return null;
                                    case 80123373:
                                        if (str.equals("kotlin.jvm.functions.Function2")) {
                                            return "Function2";
                                        }
                                        return null;
                                    case 80123374:
                                        if (str.equals("kotlin.jvm.functions.Function3")) {
                                            return "Function3";
                                        }
                                        return null;
                                    case 80123375:
                                        if (str.equals("kotlin.jvm.functions.Function4")) {
                                            return "Function4";
                                        }
                                        return null;
                                    case 80123376:
                                        if (str.equals("kotlin.jvm.functions.Function5")) {
                                            return "Function5";
                                        }
                                        return null;
                                    case 80123377:
                                        if (str.equals("kotlin.jvm.functions.Function6")) {
                                            return "Function6";
                                        }
                                        return null;
                                    case 80123378:
                                        if (str.equals("kotlin.jvm.functions.Function7")) {
                                            return "Function7";
                                        }
                                        return null;
                                    case 80123379:
                                        if (str.equals("kotlin.jvm.functions.Function8")) {
                                            return "Function8";
                                        }
                                        return null;
                                    case 80123380:
                                        if (str.equals("kotlin.jvm.functions.Function9")) {
                                            return "Function9";
                                        }
                                        return null;
                                    default:
                                        return null;
                                }
                        }
                }
        }
    }

    public static void X(String str) {
        v00 v00Var = new v00(di0.v("lateinit property ", str, " has not been initialized"), 10);
        R(v00Var, nt1.class.getName());
        throw v00Var;
    }

    public static final og4 Y(List list, og4 og4Var) {
        og4 og4VarB;
        list.getClass();
        og4Var.getClass();
        boolean zA = og4Var.e.a("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME");
        boolean zA2 = og4Var.e.a("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
        boolean zA3 = og4Var.e.a("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
        if (!zA && zA2 && zA3) {
            String str = og4Var.c;
            yl0 yl0Var = new yl0(0);
            zl0 zl0Var = og4Var.e;
            zl0Var.getClass();
            yl0Var.a(zl0Var.a);
            LinkedHashMap linkedHashMap = yl0Var.a;
            linkedHashMap.put("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", str);
            zl0 zl0Var2 = new zl0(linkedHashMap);
            bi4.L(zl0Var2);
            og4VarB = og4.b(og4Var, null, null, "androidx.work.multiprocess.RemoteListenableDelegatingWorker", zl0Var2, 0, 0L, 0, 0, 0L, 0, 33554411);
        } else {
            og4VarB = og4Var;
        }
        if (Build.VERSION.SDK_INT <= 25) {
            lf0 lf0Var = og4VarB.j;
            String str2 = og4VarB.c;
            if (!g(str2, ConstraintTrackingWorker.class.getName()) && (lf0Var.e || lf0Var.f)) {
                yl0 yl0Var2 = new yl0(0);
                zl0 zl0Var3 = og4VarB.e;
                zl0Var3.getClass();
                yl0Var2.a(zl0Var3.a);
                LinkedHashMap linkedHashMap2 = yl0Var2.a;
                linkedHashMap2.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str2);
                zl0 zl0Var4 = new zl0(linkedHashMap2);
                bi4.L(zl0Var4);
                return og4.b(og4VarB, null, null, ConstraintTrackingWorker.class.getName(), zl0Var4, 0, 0L, 0, 0, 0L, 0, 33554411);
            }
        }
        return og4VarB;
    }

    public static final void a(dj djVar, nd2 nd2Var, pe1 pe1Var, cw cwVar, mg0 mg0Var, ag1 ag1Var, int i, int i2) {
        int i3;
        jo1 jo1Var;
        ag1Var.X(1236588022);
        cj cjVar = null;
        int i4 = i | (ag1Var.f(djVar) ? 4 : 2) | (ag1Var.f(nd2Var) ? 256 : 128) | (ag1Var.h(pe1Var) ? 2048 : 1024) | (ag1Var.h(null) ? 16384 : 8192) | (ag1Var.f(cwVar) ? 131072 : 65536) | (ag1Var.f(mg0Var) ? 1048576 : 524288) | (ag1Var.c(1.0f) ? 8388608 : 4194304) | (ag1Var.f(null) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE) | (ag1Var.d(1) ? 536870912 : 268435456);
        if ((i2 & 6) == 0) {
            i3 = i2 | (ag1Var.g(true) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if (ag1Var.N(i4 & 1, ((306783379 & i4) == 306783378 && (i3 & 3) == 2) ? false : true)) {
            Object obj = djVar.a;
            int i5 = m94.b;
            ag1Var.W(-329318062);
            boolean z = obj instanceof jo1;
            Object obj2 = rb0.a;
            if (z) {
                ag1Var.W(-1008942344);
                jo1Var = (jo1) obj;
                if (jo1Var.s.g != null) {
                    ag1Var.W(-1008902292);
                    ag1Var.p(false);
                    ag1Var.p(false);
                } else {
                    ag1Var.W(-1008854118);
                    qn3 qn3VarA = m94.a(mg0Var, ag1Var);
                    boolean zF = ag1Var.f(obj) | ag1Var.f(qn3VarA);
                    Object objK = ag1Var.K();
                    if (zF || objK == obj2) {
                        go1 go1VarA = jo1.a(jo1Var);
                        go1VarA.l = qn3VarA;
                        objK = go1VarA.a();
                        ag1Var.g0(objK);
                    }
                    jo1Var = (jo1) objK;
                    ag1Var.p(false);
                    ag1Var.p(false);
                }
            } else {
                ag1Var.W(-1008595950);
                Context context = (Context) ag1Var.j(ea.b);
                qn3 qn3VarA2 = m94.a(mg0Var, ag1Var);
                boolean zF2 = ag1Var.f(context) | ag1Var.f(obj) | ag1Var.f(qn3VarA2);
                Object objK2 = ag1Var.K();
                if (zF2 || objK2 == obj2) {
                    go1 go1Var = new go1(context);
                    go1Var.c = obj;
                    go1Var.l = qn3VarA2;
                    objK2 = go1Var.a();
                    ag1Var.g0(objK2);
                }
                jo1Var = (jo1) objK2;
                ag1Var.p(false);
            }
            ag1Var.p(false);
            jo1 jo1Var2 = jo1Var;
            Object obj3 = jo1Var2.b;
            if (obj3 instanceof go1) {
                k21.f("Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?");
                return;
            }
            if (obj3 instanceof gb) {
                m94.c("ImageBitmap");
                throw null;
            }
            if (obj3 instanceof so1) {
                m94.c("ImageVector");
                throw null;
            }
            if (obj3 instanceof gs2) {
                m94.c("Painter");
                throw null;
            }
            if (jo1Var2.c != null) {
                k21.f("request.target must be null.");
                return;
            }
            if (((h22) k30.w(jo1Var2, no1.e)) != null) {
                k21.f("request.lifecycle must be null.");
                return;
            }
            o23 o23Var = djVar.c;
            si siVar = djVar.b;
            if (((Boolean) ag1Var.j(vr1.a)).booleanValue()) {
                ag1Var.W(2019030948);
                cjVar = (cj) ag1Var.j(v52.a);
                ag1Var.p(false);
            } else {
                ag1Var.W(2019088453);
                ag1Var.p(false);
            }
            nd2 nd2VarC = nd2Var.c(new jg0(jo1Var2, o23Var, siVar, pe1Var, cwVar, mg0Var, cjVar));
            oa oaVar = oa.g;
            int iHashCode = Long.hashCode(ag1Var.T);
            nd2 nd2VarH = is0.H(ag1Var, nd2VarC);
            hu2 hu2VarL = ag1Var.l();
            lb0.c.getClass();
            ne1 ne1Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ne1Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, oaVar);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            df1 df1Var = kb0.g;
            if (ag1Var.S || !g(ag1Var.K(), Integer.valueOf(iHashCode))) {
                ag1Var.g0(Integer.valueOf(iHashCode));
                ag1Var.b(df1Var, Integer.valueOf(iHashCode));
            }
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ri(djVar, nd2Var, pe1Var, cwVar, mg0Var, i, i2);
        }
    }

    public static final void b(nd2 nd2Var, final qh qhVar, final sh shVar, bw bwVar, int i, int i2, final ka0 ka0Var, ag1 ag1Var, final int i3) {
        final nd2 nd2Var2;
        final bw bwVar2;
        final int i4;
        final int i5;
        ag1Var.X(-1303174015);
        int i6 = i3 | 6 | (ag1Var.f(qhVar) ? 32 : 16) | (ag1Var.f(shVar) ? 256 : 128) | 224256;
        if (ag1Var.N(i6 & 1, (599187 & i6) != 599186)) {
            bw bwVar3 = mj1.x;
            w13 w13Var = w13.D;
            int i7 = (i6 & 896) | (i6 & 112) | 1572870 | 12807168;
            kd2 kd2Var = kd2.b;
            c(kd2Var, qhVar, shVar, w13Var, ka0Var, ag1Var, i7);
            nd2Var2 = kd2Var;
            i4 = Integer.MAX_VALUE;
            bwVar2 = bwVar3;
            i5 = Integer.MAX_VALUE;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            bwVar2 = bwVar;
            i4 = i;
            i5 = i2;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(qhVar, shVar, bwVar2, i4, i5, ka0Var, i3) { // from class: f91
                public final /* synthetic */ qh o;
                public final /* synthetic */ sh p;
                public final /* synthetic */ bw q;
                public final /* synthetic */ int r;
                public final /* synthetic */ int s;
                public final /* synthetic */ ka0 t;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(1572865);
                    nt1.b(this.n, this.o, this.p, this.q, this.r, this.s, this.t, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void c(nd2 nd2Var, qh qhVar, sh shVar, w13 w13Var, ka0 ka0Var, ag1 ag1Var, int i) {
        int i2;
        Object obj;
        boolean z;
        Object obj2;
        Object obj3 = mj1.x;
        ag1Var.X(-1956591841);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.f(qhVar) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.f(shVar) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.f(obj3) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= ag1Var.d(Api.BaseClientBuilder.API_PRIORITY_OTHER) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= ag1Var.d(Api.BaseClientBuilder.API_PRIORITY_OTHER) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            obj = w13Var;
            i2 |= ag1Var.f(obj) ? 1048576 : 524288;
        } else {
            obj = w13Var;
        }
        if ((i & 12582912) == 0) {
            i2 |= ag1Var.h(ka0Var) ? 8388608 : 4194304;
        }
        int i3 = i2;
        if (ag1Var.N(i3 & 1, (i3 & 4793491) != 4793490)) {
            int i4 = i3 & 3670016;
            boolean z2 = i4 == 1048576;
            Object objK = ag1Var.K();
            Object obj4 = rb0.a;
            if (z2 || objK == obj4) {
                obj.getClass();
                objK = new i91();
                ag1Var.g0(objK);
            }
            i91 i91Var = (i91) objK;
            int i5 = i3 >> 3;
            boolean zF = ((((i5 & 896) ^ 384) > 256 && ag1Var.f(obj3)) || (i5 & 384) == 256) | ((((i5 & 112) ^ 48) > 32 && ag1Var.f(shVar)) || (i5 & 48) == 32) | ((((i5 & 14) ^ 6) > 4 && ag1Var.f(qhVar)) || (i5 & 6) == 4) | ((((i5 & 7168) ^ 3072) > 2048 && ag1Var.d(Api.BaseClientBuilder.API_PRIORITY_OTHER)) || (i5 & 3072) == 2048) | ((((57344 & i5) ^ 24576) > 16384 && ag1Var.d(Api.BaseClientBuilder.API_PRIORITY_OTHER)) || (i5 & 24576) == 16384) | ag1Var.f(i91Var);
            Object objK2 = ag1Var.K();
            if (zF || objK2 == obj4) {
                Object k91Var = new k91(qhVar, shVar, qhVar.a(), new bl0(), shVar.a(), i91Var);
                ag1Var.g0(k91Var);
                objK2 = k91Var;
            }
            k91 k91Var2 = (k91) objK2;
            boolean z3 = (i4 == 1048576) | ((i3 & 29360128) == 8388608) | ((i3 & 458752) == 131072);
            Object objK3 = ag1Var.K();
            if (z3 || objK3 == obj4) {
                ArrayList arrayList = new ArrayList();
                z = true;
                arrayList.add(new ka0(-1192950673, true, new t7(ka0Var, 4)));
                w13Var.getClass();
                ag1Var.g0(arrayList);
                obj2 = arrayList;
            } else {
                z = true;
                obj2 = objK3;
            }
            ka0 ka0Var2 = new ka0(1271844412, z, new z(7, (List) obj2));
            boolean zF2 = ag1Var.f(k91Var2);
            Object objK4 = ag1Var.K();
            if (zF2 || objK4 == obj4) {
                objK4 = new pe2(k91Var2);
                ag1Var.g0(objK4);
            }
            db2 db2Var = (db2) objK4;
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2Var);
            lb0.c.getClass();
            ne1 ne1Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ne1Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, db2Var);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            ka0Var2.f(ag1Var, 0);
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ri(nd2Var, qhVar, shVar, w13Var, ka0Var, i);
        }
    }

    public static final void d(ne1 ne1Var, nd2 nd2Var, n02 n02Var, e12 e12Var, ag1 ag1Var, int i) {
        e12 e12Var2;
        n02 n02Var2;
        nd2 nd2Var2;
        ag1Var.X(1055276397);
        int i2 = (ag1Var.h(ne1Var) ? 4 : 2) | i | (ag1Var.f(nd2Var) ? 32 : 16) | (ag1Var.f(n02Var) ? 256 : 128) | (ag1Var.f(e12Var) ? 2048 : 1024);
        if (ag1Var.N(i2 & 1, (i2 & 1171) != 1170)) {
            e12Var2 = e12Var;
            e02 e02Var = new e02(n02Var, nd2Var, e12Var2, ca.E(ne1Var, ag1Var), 0);
            n02Var2 = n02Var;
            nd2Var2 = nd2Var;
            fl4.b(qj0.U(-933153643, e02Var, ag1Var), ag1Var, 6);
        } else {
            e12Var2 = e12Var;
            n02Var2 = n02Var;
            nd2Var2 = nd2Var;
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(ne1Var, nd2Var2, n02Var2, e12Var2, i);
        }
    }

    public static final void e(int i, int i2) {
        if (i < 0 || i >= i2) {
            k21.g("index (", i, ") is out of bound of [0, ", i2, ")");
        }
    }

    public static boolean g(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static final boolean h(zr3 zr3Var, int i, s1 s1Var, boolean z) {
        boolean z2;
        synchronized (h) {
            try {
                int i2 = zr3Var.d;
                if (i2 == i) {
                    zr3Var.c = s1Var;
                    z2 = true;
                    if (z) {
                        zr3Var.e++;
                    }
                    zr3Var.d = i2 + 1;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public static final Object i(ef5 ef5Var, yr1 yr1Var) throws Exception {
        if (!ef5Var.i()) {
            o20 o20Var = new o20(1, dm0.A(yr1Var));
            o20Var.x();
            ef5Var.b.b(new n25((Executor) gu0.o, (xo2) new dd1(20, o20Var)));
            ef5Var.s();
            return o20Var.v();
        }
        Exception excF = ef5Var.f();
        if (excF != null) {
            throw excF;
        }
        if (!ef5Var.d) {
            return ef5Var.g();
        }
        throw new CancellationException("Task " + ef5Var + " was cancelled normally.");
    }

    public static final void j(WorkDatabase workDatabase, md0 md0Var, tf4 tf4Var) {
        int i;
        workDatabase.getClass();
        md0Var.getClass();
        ArrayList arrayListH = tv4.H(tf4Var);
        int i2 = 0;
        while (!arrayListH.isEmpty()) {
            List list = ((tf4) o70.u0(arrayListH)).d;
            list.getClass();
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (!((mg4) it.next()).b.j.i.isEmpty() && (i = i + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            i2 += i;
        }
        if (i2 == 0) {
            return;
        }
        int iIntValue = ((Number) gg4.N(workDatabase.w().a, true, false, new ba4(16))).intValue();
        int i3 = md0Var.j;
        if (iIntValue + i2 <= i3) {
            return;
        }
        k21.f(xw1.p(i2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.", xw1.v("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ", i3, ";\nalready enqueued count: ", iIntValue, ";\ncurrent enqueue operation count: ")));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String k(String str) {
        int iHashCode = str.hashCode();
        switch (iHashCode) {
            case -2061550653:
                if (str.equals("kotlin.jvm.internal.DoubleCompanionObject")) {
                    return "kotlin.Double.Companion";
                }
                return null;
            case -2056817302:
                if (str.equals("java.lang.Integer")) {
                    return "kotlin.Int";
                }
                return null;
            case -2034166429:
                if (str.equals("java.lang.Cloneable")) {
                    return "kotlin.Cloneable";
                }
                return null;
            case -1979556166:
                if (str.equals("java.lang.annotation.Annotation")) {
                    return "kotlin.Annotation";
                }
                return null;
            case -1571515090:
                if (str.equals("java.lang.Comparable")) {
                    return "kotlin.Comparable";
                }
                return null;
            case -1383349348:
                if (str.equals("java.util.Map")) {
                    return "kotlin.collections.Map";
                }
                return null;
            case -1383343454:
                if (str.equals("java.util.Set")) {
                    return "kotlin.collections.Set";
                }
                return null;
            case -1325958191:
                if (str.equals("double")) {
                    return "kotlin.Double";
                }
                return null;
            case -1182275604:
                if (str.equals("kotlin.jvm.internal.ByteCompanionObject")) {
                    return "kotlin.Byte.Companion";
                }
                return null;
            case -1062240117:
                if (str.equals("java.lang.CharSequence")) {
                    return "kotlin.CharSequence";
                }
                return null;
            case -688322466:
                if (str.equals("java.util.Collection")) {
                    return "kotlin.collections.Collection";
                }
                return null;
            case -527879800:
                if (str.equals("java.lang.Float")) {
                    return "kotlin.Float";
                }
                return null;
            case -515992664:
                if (str.equals("java.lang.Short")) {
                    return "kotlin.Short";
                }
                return null;
            case -246476834:
                if (str.equals("kotlin.jvm.internal.CharCompanionObject")) {
                    return "kotlin.Char.Companion";
                }
                return null;
            case -207262728:
                if (str.equals("kotlin.jvm.internal.LongCompanionObject")) {
                    return "kotlin.Long.Companion";
                }
                return null;
            case -165139126:
                if (str.equals("java.util.Map$Entry")) {
                    return "kotlin.collections.Map.Entry";
                }
                return null;
            case 104431:
                if (str.equals("int")) {
                    return "kotlin.Int";
                }
                return null;
            case 3039496:
                if (str.equals("byte")) {
                    return "kotlin.Byte";
                }
                return null;
            case 3052374:
                if (str.equals("char")) {
                    return "kotlin.Char";
                }
                return null;
            case 3327612:
                if (str.equals("long")) {
                    return "kotlin.Long";
                }
                return null;
            case 64711720:
                if (str.equals("boolean")) {
                    return "kotlin.Boolean";
                }
                return null;
            case 65821278:
                if (str.equals("java.util.List")) {
                    return "kotlin.collections.List";
                }
                return null;
            case 77230534:
                if (str.equals("kotlin.jvm.internal.ShortCompanionObject")) {
                    return "kotlin.Short.Companion";
                }
                return null;
            case 97526364:
                if (str.equals("float")) {
                    return "kotlin.Float";
                }
                return null;
            case 109413500:
                if (str.equals("short")) {
                    return "kotlin.Short";
                }
                return null;
            case 155276373:
                if (str.equals("java.lang.Character")) {
                    return "kotlin.Char";
                }
                return null;
            case 226173651:
                if (str.equals("kotlin.jvm.internal.EnumCompanionObject")) {
                    return "kotlin.Enum.Companion";
                }
                return null;
            case 344809556:
                if (str.equals("java.lang.Boolean")) {
                    return "kotlin.Boolean";
                }
                return null;
            case 398507100:
                if (str.equals("java.lang.Byte")) {
                    return "kotlin.Byte";
                }
                return null;
            case 398585941:
                if (str.equals("java.lang.Enum")) {
                    return "kotlin.Enum";
                }
                return null;
            case 398795216:
                if (str.equals("java.lang.Long")) {
                    return "kotlin.Long";
                }
                return null;
            case 482629606:
                if (str.equals("kotlin.jvm.internal.FloatCompanionObject")) {
                    return "kotlin.Float.Companion";
                }
                return null;
            case 499831342:
                if (str.equals("java.util.Iterator")) {
                    return "kotlin.collections.Iterator";
                }
                return null;
            case 577341676:
                if (str.equals("java.util.ListIterator")) {
                    return "kotlin.collections.ListIterator";
                }
                return null;
            case 599019395:
                if (str.equals("kotlin.jvm.internal.StringCompanionObject")) {
                    return "kotlin.String.Companion";
                }
                return null;
            case 761287205:
                if (str.equals("java.lang.Double")) {
                    return "kotlin.Double";
                }
                return null;
            case 1052881309:
                if (str.equals("java.lang.Number")) {
                    return "kotlin.Number";
                }
                return null;
            case 1063877011:
                if (str.equals("java.lang.Object")) {
                    return "kotlin.Any";
                }
                return null;
            case 1195259493:
                if (str.equals("java.lang.String")) {
                    return "kotlin.String";
                }
                return null;
            case 1275614662:
                if (str.equals("java.lang.Iterable")) {
                    return "kotlin.collections.Iterable";
                }
                return null;
            case 1383693018:
                if (str.equals("kotlin.jvm.internal.BooleanCompanionObject")) {
                    return "kotlin.Boolean.Companion";
                }
                return null;
            case 1630335596:
                if (str.equals("java.lang.Throwable")) {
                    return "kotlin.Throwable";
                }
                return null;
            case 1877171123:
                if (str.equals("kotlin.jvm.internal.IntCompanionObject")) {
                    return "kotlin.Int.Companion";
                }
                return null;
            default:
                switch (iHashCode) {
                    case -1811142716:
                        if (str.equals("kotlin.jvm.functions.Function10")) {
                            return "kotlin.Function10";
                        }
                        return null;
                    case -1811142715:
                        if (str.equals("kotlin.jvm.functions.Function11")) {
                            return "kotlin.Function11";
                        }
                        return null;
                    case -1811142714:
                        if (str.equals("kotlin.jvm.functions.Function12")) {
                            return "kotlin.Function12";
                        }
                        return null;
                    case -1811142713:
                        if (str.equals("kotlin.jvm.functions.Function13")) {
                            return "kotlin.Function13";
                        }
                        return null;
                    case -1811142712:
                        if (str.equals("kotlin.jvm.functions.Function14")) {
                            return "kotlin.Function14";
                        }
                        return null;
                    case -1811142711:
                        if (str.equals("kotlin.jvm.functions.Function15")) {
                            return "kotlin.Function15";
                        }
                        return null;
                    case -1811142710:
                        if (str.equals("kotlin.jvm.functions.Function16")) {
                            return "kotlin.Function16";
                        }
                        return null;
                    case -1811142709:
                        if (str.equals("kotlin.jvm.functions.Function17")) {
                            return "kotlin.Function17";
                        }
                        return null;
                    case -1811142708:
                        if (str.equals("kotlin.jvm.functions.Function18")) {
                            return "kotlin.Function18";
                        }
                        return null;
                    case -1811142707:
                        if (str.equals("kotlin.jvm.functions.Function19")) {
                            return "kotlin.Function19";
                        }
                        return null;
                    default:
                        switch (iHashCode) {
                            case -1811142685:
                                if (str.equals("kotlin.jvm.functions.Function20")) {
                                    return "kotlin.Function20";
                                }
                                return null;
                            case -1811142684:
                                if (str.equals("kotlin.jvm.functions.Function21")) {
                                    return "kotlin.Function21";
                                }
                                return null;
                            case -1811142683:
                                if (str.equals("kotlin.jvm.functions.Function22")) {
                                    return "kotlin.Function22";
                                }
                                return null;
                            default:
                                switch (iHashCode) {
                                    case 80123371:
                                        if (str.equals("kotlin.jvm.functions.Function0")) {
                                            return "kotlin.Function0";
                                        }
                                        return null;
                                    case 80123372:
                                        if (str.equals("kotlin.jvm.functions.Function1")) {
                                            return "kotlin.Function1";
                                        }
                                        return null;
                                    case 80123373:
                                        if (str.equals("kotlin.jvm.functions.Function2")) {
                                            return "kotlin.Function2";
                                        }
                                        return null;
                                    case 80123374:
                                        if (str.equals("kotlin.jvm.functions.Function3")) {
                                            return "kotlin.Function3";
                                        }
                                        return null;
                                    case 80123375:
                                        if (str.equals("kotlin.jvm.functions.Function4")) {
                                            return "kotlin.Function4";
                                        }
                                        return null;
                                    case 80123376:
                                        if (str.equals("kotlin.jvm.functions.Function5")) {
                                            return "kotlin.Function5";
                                        }
                                        return null;
                                    case 80123377:
                                        if (str.equals("kotlin.jvm.functions.Function6")) {
                                            return "kotlin.Function6";
                                        }
                                        return null;
                                    case 80123378:
                                        if (str.equals("kotlin.jvm.functions.Function7")) {
                                            return "kotlin.Function7";
                                        }
                                        return null;
                                    case 80123379:
                                        if (str.equals("kotlin.jvm.functions.Function8")) {
                                            return "kotlin.Function8";
                                        }
                                        return null;
                                    case 80123380:
                                        if (str.equals("kotlin.jvm.functions.Function9")) {
                                            return "kotlin.Function9";
                                        }
                                        return null;
                                    default:
                                        return null;
                                }
                        }
                }
        }
    }

    public static int l(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static int m(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static void n(ti2 ti2Var, String str, List list, ka0 ka0Var, int i) {
        if ((i & 2) != 0) {
            list = g01.n;
        }
        mk2 mk2Var = ti2Var.f;
        mk2Var.getClass();
        xa0 xa0Var = new xa0((wa0) mk2Var.b(tv4.x(wa0.class)), str, ka0Var);
        for (th2 th2Var : list) {
            th2Var.getClass();
            ((LinkedHashMap) xa0Var.c).put("serviceType", th2Var.a);
        }
        ti2Var.h.add(xa0Var.a());
    }

    public static final void s(li1 li1Var, da4 da4Var) {
        List list = da4Var.w;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            fa4 fa4Var = (fa4) list.get(i);
            if (fa4Var instanceof ha4) {
                dt2 dt2Var = new dt2();
                ha4 ha4Var = (ha4) fa4Var;
                dt2Var.d = ha4Var.o;
                dt2Var.n = true;
                dt2Var.c();
                dt2Var.s.a.setFillType(ha4Var.p == 1 ? Path.FillType.EVEN_ODD : Path.FillType.WINDING);
                dt2Var.c();
                dt2Var.c();
                dt2Var.b = ha4Var.q;
                dt2Var.c();
                dt2Var.c = ha4Var.r;
                dt2Var.c();
                dt2Var.g = ha4Var.s;
                dt2Var.c();
                dt2Var.e = ha4Var.t;
                dt2Var.c();
                dt2Var.f = ha4Var.f125u;
                dt2Var.o = true;
                dt2Var.c();
                dt2Var.h = ha4Var.v;
                dt2Var.o = true;
                dt2Var.c();
                dt2Var.i = ha4Var.w;
                dt2Var.o = true;
                dt2Var.c();
                dt2Var.j = ha4Var.x;
                dt2Var.o = true;
                dt2Var.c();
                dt2Var.k = ha4Var.y;
                dt2Var.p = true;
                dt2Var.c();
                dt2Var.l = ha4Var.z;
                dt2Var.p = true;
                dt2Var.c();
                dt2Var.m = ha4Var.A;
                dt2Var.p = true;
                dt2Var.c();
                li1Var.e(i, dt2Var);
            } else if (fa4Var instanceof da4) {
                li1 li1Var2 = new li1();
                da4 da4Var2 = (da4) fa4Var;
                li1Var2.k = da4Var2.n;
                li1Var2.c();
                li1Var2.l = da4Var2.o;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.o = da4Var2.r;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.p = da4Var2.s;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.q = da4Var2.t;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.r = da4Var2.f67u;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.m = da4Var2.p;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.n = da4Var2.q;
                li1Var2.s = true;
                li1Var2.c();
                li1Var2.f = da4Var2.v;
                li1Var2.g = true;
                li1Var2.c();
                s(li1Var2, da4Var2);
                li1Var.e(i, li1Var2);
            }
        }
    }

    public static void t(ha haVar, LongSparseArray longSparseArray) {
        TranslationResponseValue value;
        CharSequence text;
        ih3 ih3Var;
        gh3 gh3Var;
        pe1 pe1Var;
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            long jKeyAt = longSparseArray.keyAt(i);
            ViewTranslationResponse viewTranslationResponseM = z9.m(longSparseArray.get(jKeyAt));
            if (viewTranslationResponseM != null && (value = viewTranslationResponseM.getValue("android:text")) != null && (text = value.getText()) != null && (ih3Var = (ih3) haVar.b().b((int) jKeyAt)) != null && (gh3Var = ih3Var.a) != null) {
                Object objG = gh3Var.d.n.g(ah3.l);
                if (objG == null) {
                    objG = null;
                }
                o2 o2Var = (o2) objG;
                if (o2Var != null && (pe1Var = (pe1) o2Var.b) != null) {
                }
            }
        }
    }

    public static rb1 u(rb1[] rb1VarArr, int i) {
        int i2 = (i & 1) == 0 ? HttpStatusCodes.STATUS_CODE_BAD_REQUEST : 700;
        boolean z = (i & 2) != 0;
        rb1 rb1Var = null;
        int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (rb1 rb1Var2 : rb1VarArr) {
            int iAbs = (Math.abs(rb1Var2.c - i2) * 2) + (rb1Var2.d == z ? 0 : 1);
            if (rb1Var == null || i3 > iAbs) {
                rb1Var = rb1Var2;
                i3 = iAbs;
            }
        }
        return rb1Var;
    }

    public static final int v(View view, int i) {
        int i2 = 0;
        int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        Object obj = null;
        while (view != null) {
            Object tag = view.getTag(i);
            if (tag != null) {
                if (obj != null) {
                    if (!tag.equals(obj)) {
                        break;
                    }
                } else {
                    obj = tag;
                }
                i3 = i2;
            }
            i2++;
            Object objQ = fl4.q(view);
            view = objQ instanceof View ? (View) objQ : null;
        }
        return i3;
    }

    public static final View w(View view) {
        if (!view.isAttachedToWindow()) {
            return view;
        }
        int iMin = Math.min(v(view, R.id.view_tree_lifecycle_owner), v(view, R.id.view_tree_saved_state_registry_owner));
        View view2 = view;
        int i = 0;
        View view3 = view2;
        while (view != null) {
            if (i == iMin) {
                if (!(view.getParent() instanceof ViewGroup)) {
                    return view2;
                }
            } else if (z(view) == null) {
                i++;
                Object objQ = fl4.q(view);
                View view4 = view2;
                view2 = view;
                view = objQ instanceof View ? (View) objQ : null;
                view3 = view4;
            }
            return view;
        }
        return view3;
    }

    public static final pb0 z(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_compose_view_context);
        WeakReference weakReference = tag instanceof WeakReference ? (WeakReference) tag : null;
        if (weakReference != null) {
            return (pb0) weakReference.get();
        }
        return null;
    }

    public abstract String[] D(Class cls);

    public abstract boolean H(Class cls);

    public abstract int f(int i, int i2, hy1 hy1Var);

    public abstract Typeface o(Context context, hb1 hb1Var, Resources resources, int i);

    public abstract Typeface p(Context context, rb1[] rb1VarArr, int i);

    public Typeface q(Context context, List list, int i) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface r(Context context, Resources resources, int i, String str, int i2) {
        File fileB = is0.B(context);
        if (fileB == null) {
            return null;
        }
        try {
            if (is0.t(fileB, resources, i)) {
                return Typeface.createFromFile(fileB.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileB.delete();
        }
    }

    public abstract Method x(Class cls, Field field);

    public abstract Constructor y(Class cls);
}
