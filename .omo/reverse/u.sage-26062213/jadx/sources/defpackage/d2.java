package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class d2 {
    public e2[] n;
    public int o;
    public int p;
    public vt3 q;

    public final e2 c() {
        e2 e2VarD;
        vt3 vt3Var;
        synchronized (this) {
            try {
                e2[] e2VarArrE = this.n;
                if (e2VarArrE == null) {
                    e2VarArrE = e();
                    this.n = e2VarArrE;
                } else if (this.o >= e2VarArrE.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(e2VarArrE, e2VarArrE.length * 2);
                    this.n = (e2[]) objArrCopyOf;
                    e2VarArrE = (e2[]) objArrCopyOf;
                }
                int i = this.p;
                do {
                    e2VarD = e2VarArrE[i];
                    if (e2VarD == null) {
                        e2VarD = d();
                        e2VarArrE[i] = e2VarD;
                    }
                    i++;
                    if (i >= e2VarArrE.length) {
                        i = 0;
                    }
                } while (!e2VarD.a(this));
                this.p = i;
                this.o++;
                vt3Var = this.q;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (vt3Var != null) {
            vt3Var.w(1);
        }
        return e2VarD;
    }

    public abstract e2 d();

    public abstract e2[] e();

    public final void f(e2 e2Var) {
        vt3 vt3Var;
        int i;
        dh0[] dh0VarArrB;
        synchronized (this) {
            try {
                int i2 = this.o - 1;
                this.o = i2;
                vt3Var = this.q;
                if (i2 == 0) {
                    this.p = 0;
                }
                e2Var.getClass();
                dh0VarArrB = e2Var.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (dh0 dh0Var : dh0VarArrB) {
            if (dh0Var != null) {
                dh0Var.g(t64.a);
            }
        }
        if (vt3Var != null) {
            vt3Var.w(-1);
        }
    }

    public final vt3 g() {
        vt3 vt3Var;
        synchronized (this) {
            vt3Var = this.q;
            if (vt3Var == null) {
                int i = this.o;
                vt3Var = new vt3(1, Api.BaseClientBuilder.API_PRIORITY_OTHER, vy.o);
                vt3Var.q(Integer.valueOf(i));
                this.q = vt3Var;
            }
        }
        return vt3Var;
    }
}
