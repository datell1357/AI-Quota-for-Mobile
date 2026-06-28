package defpackage;

import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x23 implements ia4 {
    public long n;
    public long o;
    public final Object p;
    public final Object q;

    public x23(t82 t82Var, long j) {
        this.q = t82Var;
        this.p = new LinkedHashMap(0, 0.75f, true);
        this.n = j;
        if (j > 0) {
            return;
        }
        k21.f("maxSize <= 0");
        throw null;
    }

    @Override // defpackage.ia4
    public boolean a() {
        return true;
    }

    public void b(Object obj, Object obj2, w23 w23Var) {
        w23 w23Var2 = (w23) obj2;
        ((d90) ((t82) this.q).b).p((qb2) obj, w23Var2.a, w23Var2.b, w23Var2.c);
    }

    @Override // defpackage.ia4
    public long c(bf bfVar, bf bfVar2, bf bfVar3) {
        return Long.MAX_VALUE;
    }

    public long d() {
        if (this.o == -1) {
            long jG = 0;
            for (Map.Entry entry : ((LinkedHashMap) this.p).entrySet()) {
                jG += g(entry.getKey(), entry.getValue());
            }
            this.o = jG;
        }
        return this.o;
    }

    public long e(long j) {
        long j2 = this.o;
        if (j + j2 <= 0) {
            return 0L;
        }
        long j3 = j + j2;
        long j4 = this.n;
        long j5 = j3 / j4;
        return (((d63) this.q) == d63.n || j5 % 2 == 0) ? j3 - (j5 * j4) : ((j5 + 1) * j4) - j3;
    }

    public bf f(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        long j2 = this.o;
        long j3 = j + j2;
        long j4 = this.n;
        return j3 > j4 ? ((ka4) this.p).m(j4 - j2, bfVar, bfVar3, bfVar2) : bfVar2;
    }

    public long g(Object obj, Object obj2) throws Exception {
        try {
            long j = ((w23) obj2).c;
            if (j >= 0) {
                return j;
            }
            throw new IllegalStateException(("sizeOf(" + obj + ", " + obj2 + ") returned a negative value: " + j).toString());
        } catch (Exception e) {
            this.o = -1L;
            throw e;
        }
    }

    public void h(long j) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.p;
        while (d() > j) {
            if (linkedHashMap.isEmpty()) {
                if (d() == 0) {
                    return;
                }
                k21.n("sizeOf() is returning inconsistent values");
                return;
            } else {
                Map.Entry entry = (Map.Entry) o70.g0(linkedHashMap.entrySet());
                Object key = entry.getKey();
                Object value = entry.getValue();
                linkedHashMap.remove(key);
                this.o = d() - g(key, value);
                b(key, value, null);
            }
        }
    }

    public boolean i(boolean z, boolean z2, long j) {
        ia5 ia5Var = (ia5) this.q;
        ia5Var.v();
        ia5Var.w();
        r45 r45Var = (r45) ia5Var.a;
        boolean zA = r45Var.a();
        a25 a25Var = r45Var.f;
        if (zA) {
            f35 f35Var = r45Var.e;
            r45.j(f35Var);
            f35Var.p.b(r45Var.k.currentTimeMillis());
        }
        long j2 = j - this.n;
        if (!z && j2 < 1000) {
            r45.l(a25Var);
            a25Var.n.b(Long.valueOf(j2), "Screen exposed for less than 1000 ms. Event not sent. time");
            return false;
        }
        if (!z2) {
            j2 = j - this.o;
            this.o = j;
        }
        r45.l(a25Var);
        a25Var.n.b(Long.valueOf(j2), "Recording user engagement, ms");
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        boolean z3 = !r45Var.d.K();
        f85 f85Var = r45Var.l;
        r45.k(f85Var);
        ac5.q0(f85Var.z(z3), bundle, true);
        if (!z2) {
            m75 m75Var = r45Var.m;
            r45.k(m75Var);
            m75Var.C("auto", "_e", bundle);
        }
        this.n = j;
        ea5 ea5Var = (ea5) this.p;
        ea5Var.c();
        ea5Var.b(((Long) e05.p0.a(null)).longValue());
        return true;
    }

    @Override // defpackage.ia4
    public bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return ((ka4) this.p).m(e(j), bfVar, bfVar2, f(j, bfVar, bfVar3, bfVar2));
    }

    @Override // defpackage.ia4
    public bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return ((ka4) this.p).p(e(j), bfVar, bfVar2, f(j, bfVar, bfVar3, bfVar2));
    }

    public x23(ia5 ia5Var) {
        this.q = ia5Var;
        r45 r45Var = (r45) ia5Var.a;
        this.p = new ea5(this, r45Var, 0);
        long jElapsedRealtime = r45Var.k.elapsedRealtime();
        this.n = jElapsedRealtime;
        this.o = jElapsedRealtime;
    }

    public x23(ka4 ka4Var, d63 d63Var) {
        this.p = ka4Var;
        this.q = d63Var;
        this.n = ((long) (ka4Var.o() + ka4Var.k())) * 1000000;
        this.o = 0L;
    }
}
