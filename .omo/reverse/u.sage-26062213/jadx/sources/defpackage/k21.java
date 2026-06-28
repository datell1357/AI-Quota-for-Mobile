package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.firebase.abt.component.AbtRegistrar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k21 implements aa0, q20, yv0, on2 {
    public static final k21 o = new k21(0);
    public final /* synthetic */ int n;

    public /* synthetic */ k21(int i) {
        this.n = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(int i, String str, int i2) {
        throw new IllegalArgumentException((str + i + ((char) i2)).toString());
    }

    public static /* synthetic */ void c(Object obj) {
        throw new AssertionError(obj);
    }

    public static /* synthetic */ void e(Object obj, Object obj2, String str) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void f(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void g(String str, int i, Object obj, int i2, Object obj2) {
        throw new IndexOutOfBoundsException(str + i + obj + i2 + obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void h(String str, Object obj, Object obj2, Object obj3, int i) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + ((char) i));
    }

    public static /* synthetic */ void i(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* synthetic */ void k(StringBuilder sb, int i) {
        sb.append(i);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static /* synthetic */ void l(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void n(String str) {
        throw new IllegalStateException(str);
    }

    @Override // defpackage.yv0
    public double b(double d) {
        switch (this.n) {
            case 13:
                double d2 = d < 0.0d ? -d : d;
                return Math.copySign(d2 >= 0.0031308049535603718d ? (Math.pow(d2, 0.4166666666666667d) - 0.05213270142180095d) / 0.9478672985781991d : d2 / 0.07739938080495357d, d);
            case 14:
                double d3 = d < 0.0d ? -d : d;
                return Math.copySign(d3 >= 0.04045d ? Math.pow((0.9478672985781991d * d3) + 0.05213270142180095d, 2.4d) : d3 * 0.07739938080495357d, d);
            case 15:
                float[] fArr = e80.a;
                return e80.b(e80.c, d);
            case 16:
                float[] fArr2 = e80.a;
                return e80.a(e80.c, d);
            case 17:
                float[] fArr3 = e80.a;
                return e80.d(e80.d, d);
            default:
                float[] fArr4 = e80.a;
                return e80.c(e80.d, d);
        }
    }

    @Override // defpackage.on2
    public Object d() {
        switch (this.n) {
            case 19:
                return new ArrayList();
            case 20:
                return new ConcurrentHashMap();
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new ConcurrentSkipListMap();
            case 22:
                return new LinkedHashSet();
            case ConnectionResult.API_DISABLED /* 23 */:
                return new TreeSet();
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return new ArrayDeque();
            case 25:
                return new x32(true);
            case 26:
                return new LinkedHashMap();
            default:
                return new TreeMap();
        }
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        return AbtRegistrar.lambda$getComponents$0(hgVar);
    }

    @Override // defpackage.q20
    public void cancel() {
    }
}
