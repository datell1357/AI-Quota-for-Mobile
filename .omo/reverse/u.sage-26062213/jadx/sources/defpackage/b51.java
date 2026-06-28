package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b51 {
    public static final /* synthetic */ int c = 0;
    public final zn3 a = zn3.g();
    public boolean b;

    static {
        new b51(0);
    }

    public b51(int i) {
        a();
        a();
    }

    public static void b(d70 d70Var, pf4 pf4Var, int i, Object obj) throws IOException {
        if (pf4Var == pf4.q) {
            d70Var.B(i, 3);
            ((l1) obj).b(d70Var);
            d70Var.B(i, 4);
        }
        d70Var.B(i, pf4Var.o);
        switch (pf4Var.ordinal()) {
            case 0:
                d70Var.u(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                d70Var.s(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                d70Var.F(((Long) obj).longValue());
                break;
            case 3:
                d70Var.F(((Long) obj).longValue());
                break;
            case 4:
                d70Var.w(((Integer) obj).intValue());
                break;
            case 5:
                d70Var.u(((Long) obj).longValue());
                break;
            case 6:
                d70Var.s(((Integer) obj).intValue());
                break;
            case 7:
                d70Var.m(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof f00)) {
                    d70Var.A((String) obj);
                } else {
                    d70Var.q((f00) obj);
                }
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                ((l1) obj).b(d70Var);
                break;
            case 10:
                l1 l1Var = (l1) obj;
                d70Var.D(((sg1) l1Var).a(null));
                l1Var.b(d70Var);
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                if (!(obj instanceof f00)) {
                    byte[] bArr = (byte[]) obj;
                    int length = bArr.length;
                    d70Var.D(length);
                    d70Var.n(bArr, 0, length);
                } else {
                    d70Var.q((f00) obj);
                }
                break;
            case 12:
                d70Var.D(((Integer) obj).intValue());
                break;
            case 13:
                d70Var.w(((Integer) obj).intValue());
                break;
            case 14:
                d70Var.s(((Integer) obj).intValue());
                break;
            case 15:
                d70Var.u(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                d70Var.D((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                d70Var.F((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    public final void a() {
        if (this.b) {
            return;
        }
        zn3 zn3Var = this.a;
        int size = zn3Var.n.size();
        for (int i = 0; i < size; i++) {
            Map.Entry entryD = zn3Var.d(i);
            if (entryD.getValue() instanceof sg1) {
                sg1 sg1Var = (sg1) entryD.getValue();
                sg1Var.getClass();
                zz2 zz2Var = zz2.c;
                zz2Var.getClass();
                zz2Var.a(sg1Var.getClass()).d(sg1Var);
                sg1Var.h();
            }
        }
        if (!zn3Var.p) {
            if (zn3Var.n.size() > 0) {
                zn3Var.d(0).getKey().getClass();
                mk0.b();
                return;
            } else {
                Iterator it = zn3Var.e().iterator();
                if (it.hasNext()) {
                    ((Map.Entry) it.next()).getKey().getClass();
                    mk0.b();
                    return;
                }
            }
        }
        if (!zn3Var.p) {
            zn3Var.o = zn3Var.o.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zn3Var.o);
            zn3Var.r = zn3Var.r.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zn3Var.r);
            zn3Var.p = true;
        }
        this.b = true;
    }

    public final Object clone() {
        b51 b51Var = new b51();
        zn3 zn3Var = this.a;
        if (zn3Var.n.size() > 0) {
            Map.Entry entryD = zn3Var.d(0);
            if (entryD.getKey() != null) {
                mk0.b();
                return null;
            }
            entryD.getValue();
            throw null;
        }
        Iterator it = zn3Var.e().iterator();
        if (!it.hasNext()) {
            return b51Var;
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
        if (obj instanceof b51) {
            return this.a.equals(((b51) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public b51() {
    }
}
