package defpackage;

import android.os.Bundle;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bx4 extends az4 {
    public final di b;
    public final di c;
    public long d;

    public bx4(r45 r45Var) {
        super(r45Var);
        this.c = new di(0);
        this.b = new di(0);
    }

    public final void A(String str, long j, w75 w75Var) {
        r45 r45Var = (r45) this.a;
        if (w75Var == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.a("Not logging ad unit exposure. No active activity");
        } else {
            if (j < 1000) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.n.b(Long.valueOf(j), "Not logging ad unit exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            ac5.q0(w75Var, bundle, true);
            m75 m75Var = r45Var.m;
            r45.k(m75Var);
            m75Var.C("am", "_xu", bundle);
        }
    }

    public final void B(long j) {
        di diVar = this.b;
        Iterator it = ((ai) diVar.keySet()).iterator();
        while (it.hasNext()) {
            diVar.put((String) it.next(), Long.valueOf(j));
        }
        if (diVar.isEmpty()) {
            return;
        }
        this.d = j;
    }

    public final void w(long j, String str) {
        r45 r45Var = (r45) this.a;
        if (str == null || str.length() == 0) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Ad unit id must be a non-empty string");
        } else {
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.E(new tk4(this, str, j, 0));
        }
    }

    public final void x(long j, String str) {
        r45 r45Var = (r45) this.a;
        if (str == null || str.length() == 0) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Ad unit id must be a non-empty string");
        } else {
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.E(new tk4(this, str, j, 1));
        }
    }

    public final void y(long j) {
        f85 f85Var = ((r45) this.a).l;
        r45.k(f85Var);
        w75 w75VarZ = f85Var.z(false);
        di diVar = this.b;
        for (String str : (ai) diVar.keySet()) {
            A(str, j - ((Long) diVar.get(str)).longValue(), w75VarZ);
        }
        if (!diVar.isEmpty()) {
            z(j - this.d, w75VarZ);
        }
        B(j);
    }

    public final void z(long j, w75 w75Var) {
        r45 r45Var = (r45) this.a;
        if (w75Var == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.n.b(Long.valueOf(j), "Not logging ad exposure. Less than 1000 ms. exposure");
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            ac5.q0(w75Var, bundle, true);
            m75 m75Var = r45Var.m;
            r45.k(m75Var);
            m75Var.C("am", "_xa", bundle);
        }
    }
}
