package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mn4 {
    public static final /* synthetic */ int c = 0;
    public final ep4 a = new ep4();
    public boolean b;

    static {
        new mn4(0);
    }

    public mn4(int i) {
        a();
        a();
    }

    public static void b(jn4 jn4Var, up4 up4Var, int i, Object obj) {
        if (up4Var == up4.q) {
            jn4Var.d(i, 3);
            ((rn4) ((sm4) obj)).f(jn4Var);
            jn4Var.d(i, 4);
            return;
        }
        jn4Var.d(i, up4Var.o);
        vp4 vp4Var = vp4.n;
        switch (up4Var.ordinal()) {
            case 0:
                jn4Var.u(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                jn4Var.s(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                jn4Var.t(((Long) obj).longValue());
                break;
            case 3:
                jn4Var.t(((Long) obj).longValue());
                break;
            case 4:
                jn4Var.q(((Integer) obj).intValue());
                break;
            case 5:
                jn4Var.u(((Long) obj).longValue());
                break;
            case 6:
                jn4Var.s(((Integer) obj).intValue());
                break;
            case 7:
                jn4Var.p(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof zm4)) {
                    jn4Var.v((String) obj);
                } else {
                    jn4Var.m((zm4) obj);
                }
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((rn4) ((sm4) obj)).f(jn4Var);
                break;
            case 10:
                jn4Var.o((sm4) obj);
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                if (!(obj instanceof zm4)) {
                    byte[] bArr = (byte[]) obj;
                    jn4Var.n(bArr.length, bArr);
                } else {
                    jn4Var.m((zm4) obj);
                }
                break;
            case 12:
                jn4Var.r(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof tn4)) {
                    jn4Var.q(((Integer) obj).intValue());
                } else {
                    jn4Var.q(((tn4) obj).zza());
                }
                break;
            case 14:
                jn4Var.s(((Integer) obj).intValue());
                break;
            case 15:
                jn4Var.u(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                jn4Var.r((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                jn4Var.t((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    public final void a() {
        if (this.b) {
            return;
        }
        ep4 ep4Var = this.a;
        int i = ep4Var.o;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ep4Var.a(i2).o;
            if (obj instanceof rn4) {
                rn4 rn4Var = (rn4) obj;
                zo4.c.a(rn4Var.getClass()).h(rn4Var);
                rn4Var.h();
            }
        }
        Iterator it = ep4Var.b().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof rn4) {
                rn4 rn4Var2 = (rn4) value;
                zo4.c.a(rn4Var2.getClass()).h(rn4Var2);
                rn4Var2.h();
            }
        }
        if (!ep4Var.q) {
            if (ep4Var.o > 0) {
                ep4Var.a(0).n.getClass();
                mk0.b();
                return;
            } else {
                Iterator it2 = ep4Var.b().iterator();
                if (it2.hasNext()) {
                    ((Map.Entry) it2.next()).getKey().getClass();
                    mk0.b();
                    return;
                }
            }
        }
        if (!ep4Var.q) {
            ep4Var.p = ep4Var.p.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(ep4Var.p);
            ep4Var.s = ep4Var.s.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(ep4Var.s);
            ep4Var.q = true;
        }
        this.b = true;
    }

    public final Object clone() {
        mn4 mn4Var = new mn4();
        ep4 ep4Var = this.a;
        if (ep4Var.o > 0) {
            ep4Var.a(0).n.getClass();
            mk0.b();
            return null;
        }
        Iterator it = ep4Var.b().iterator();
        if (!it.hasNext()) {
            return mn4Var;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (entry.getKey() != null) {
            mk0.b();
            return null;
        }
        entry.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof mn4) {
            return this.a.equals(((mn4) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public mn4() {
    }
}
