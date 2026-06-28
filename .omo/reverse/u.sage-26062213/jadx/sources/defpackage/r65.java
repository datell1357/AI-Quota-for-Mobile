package defpackage;

import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r65 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ long o;
    public final /* synthetic */ m75 p;

    public r65(m75 m75Var, long j, int i) {
        this.n = i;
        switch (i) {
            case 1:
                this.o = j;
                this.p = m75Var;
                break;
            default:
                this.o = j;
                Objects.requireNonNull(m75Var);
                this.p = m75Var;
                break;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        long j = this.o;
        m75 m75Var = this.p;
        switch (i) {
            case 0:
                r45 r45Var = (r45) m75Var.a;
                f35 f35Var = r45Var.e;
                r45.j(f35Var);
                f35Var.k.b(j);
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.m.b(Long.valueOf(j), "Session timeout duration set");
                break;
            default:
                m75Var.v();
                m75Var.w();
                r45 r45Var2 = (r45) m75Var.a;
                a25 a25Var2 = r45Var2.f;
                r45.l(a25Var2);
                a25Var2.m.a("Resetting analytics data (FE)");
                ia5 ia5Var = r45Var2.h;
                r45.k(ia5Var);
                ia5Var.v();
                x23 x23Var = ia5Var.f;
                ((ea5) x23Var.p).c();
                long jElapsedRealtime = ((r45) ((ia5) x23Var.q).a).k.elapsedRealtime();
                x23Var.n = jElapsedRealtime;
                x23Var.o = jElapsedRealtime;
                r45Var2.q().A();
                boolean z = !r45Var2.a();
                f35 f35Var2 = r45Var2.e;
                r45.j(f35Var2);
                f35Var2.f.b(j);
                r45 r45Var3 = (r45) f35Var2.a;
                f35 f35Var3 = r45Var3.e;
                r45.j(f35Var3);
                if (!TextUtils.isEmpty(f35Var3.v.h())) {
                    f35Var2.v.i(null);
                }
                f35Var2.p.b(0L);
                f35Var2.q.b(0L);
                if (!r45Var3.d.J()) {
                    f35Var2.D(z);
                }
                f35Var2.w.i(null);
                f35Var2.x.b(0L);
                f35Var2.y.N(null);
                o95 o95VarO = r45Var2.o();
                o95VarO.v();
                o95VarO.w();
                vc5 vc5VarL = o95VarO.L(false);
                o95VarO.H();
                ((r45) o95VarO.a).n().z();
                o95VarO.J(new q85(o95VarO, vc5VarL, 0));
                r45.k(ia5Var);
                ia5Var.e.a();
                m75Var.r = z;
                r45Var2.o().z(new AtomicReference());
                break;
        }
    }
}
