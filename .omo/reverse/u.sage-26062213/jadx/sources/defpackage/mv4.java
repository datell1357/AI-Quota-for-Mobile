package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mv4 {
    public final qd1 a;
    public qd1 b;
    public final ui3 c;
    public final pc4 d;

    public mv4() {
        qd1 qd1Var = new qd1(21);
        this.a = qd1Var;
        this.b = ((qd1) qd1Var.p).O();
        this.c = new ui3(5);
        this.d = new pc4(29);
        final int i = 1;
        Callable callable = new Callable(this) { // from class: qk4
            public final /* synthetic */ mv4 b;

            {
                this.b = this;
            }

            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                int i2 = i;
                mv4 mv4Var = this.b;
                switch (i2) {
                    case 0:
                        return new p65(mv4Var.c);
                    default:
                        return new p65(mv4Var.d);
                }
            }
        };
        ra3 ra3Var = (ra3) qd1Var.r;
        ((HashMap) ra3Var.o).put("internal.registerCallback", callable);
        final int i2 = 0;
        ((HashMap) ra3Var.o).put("internal.eventLogger", new Callable(this) { // from class: qk4
            public final /* synthetic */ mv4 b;

            {
                this.b = this;
            }

            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                int i22 = i2;
                mv4 mv4Var = this.b;
                switch (i22) {
                    case 0:
                        return new p65(mv4Var.c);
                    default:
                        return new p65(mv4Var.d);
                }
            }
        });
    }

    public final boolean a(xk4 xk4Var) throws ax4 {
        ui3 ui3Var = this.c;
        try {
            ui3Var.o = xk4Var;
            ui3Var.p = xk4Var.clone();
            ((ArrayList) ui3Var.q).clear();
            ((qd1) this.a.q).Q("runtime.counter", new eq4(Double.valueOf(0.0d)));
            this.d.j(this.b.O(), ui3Var);
            if (((xk4) ui3Var.p).equals((xk4) ui3Var.o)) {
                return !((ArrayList) ui3Var.q).isEmpty();
            }
            return true;
        } catch (Throwable th) {
            throw new ax4(th);
        }
    }

    public final void b(n55 n55Var) {
        zq4 zq4Var;
        try {
            qd1 qd1Var = this.a;
            this.b = ((qd1) qd1Var.p).O();
            if (qd1Var.K(this.b, (p55[]) n55Var.t().toArray(new p55[0])) instanceof jp4) {
                throw new IllegalStateException("Program loading failed");
            }
            for (l55 l55Var : n55Var.u().t()) {
                List listU = l55Var.u();
                String strT = l55Var.t();
                Iterator it = listU.iterator();
                while (it.hasNext()) {
                    ls4 ls4VarK = qd1Var.K(this.b, (p55) it.next());
                    if (!(ls4VarK instanceof cs4)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    qd1 qd1Var2 = this.b;
                    if (qd1Var2.P(strT)) {
                        ls4 ls4VarS = qd1Var2.S(strT);
                        if (!(ls4VarS instanceof zq4)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(strT)));
                        }
                        zq4Var = (zq4) ls4VarS;
                    } else {
                        zq4Var = null;
                    }
                    if (zq4Var == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(strT)));
                    }
                    zq4Var.b(this.b, Collections.singletonList(ls4VarK));
                }
            }
        } catch (Throwable th) {
            throw new ax4(th);
        }
    }
}
