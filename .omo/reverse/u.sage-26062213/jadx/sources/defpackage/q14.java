package defpackage;

import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q14 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ q14(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) throws Exception {
        pb3 pb3VarK0;
        int i = this.n;
        dh0 dh0Var = null;
        int i2 = 1;
        t64 t64Var = t64.a;
        Object obj2 = this.p;
        Object obj3 = this.o;
        switch (i) {
            case 0:
                n14 n14Var = (n14) obj3;
                n14 n14Var2 = (n14) obj2;
                n14Var.k.add(n14Var2);
                return new aq(6, n14Var, n14Var2);
            case 1:
                return new aq(7, (n14) obj3, (j14) obj2);
            case 2:
                qi0 qi0Var = (qi0) obj2;
                ne1 ne1Var = (ne1) obj;
                if (obj3 == Thread.currentThread()) {
                    ne1Var.a();
                } else {
                    ca.y(qi0Var, null, null, new h5(ne1Var, dh0Var, i2), 3);
                }
                return t64Var;
            case 3:
                t74 t74Var = (t74) obj3;
                ((Long) obj).getClass();
                float f = t74Var.e;
                t74Var.e = 0.0f;
                ((pe1) obj2).k(Float.valueOf(f));
                return t64Var;
            case 4:
                qe4 qe4Var = (qe4) obj3;
                View view = (View) obj2;
                qr1 qr1Var = qe4Var.f277u;
                if (qe4Var.t == 0) {
                    qr1Var.q = false;
                    qr1Var.r = false;
                    qr1Var.s = null;
                    Field field = lb4.a;
                    fb4.c(view, qr1Var);
                    if (view.isAttachedToWindow()) {
                        view.requestApplyInsets();
                    }
                    view.addOnAttachStateChangeListener(qr1Var);
                    lb4.g(view, qr1Var);
                }
                qe4Var.t++;
                return new aq(8, qe4Var, view);
            case 5:
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                ((ig4) obj3).b.F(jb3Var, (hg4) obj2);
                return t64Var;
            case 6:
                cg4 cg4Var = (cg4) obj3;
                String str = (String) obj2;
                jb3 jb3Var2 = (jb3) obj;
                jb3Var2.getClass();
                pb3VarK0 = jb3Var2.k0("UPDATE workspec SET state=? WHERE id=?");
                try {
                    pb3VarK0.h(1, ug4.i(cg4Var));
                    pb3VarK0.P(2, str);
                    pb3VarK0.c0();
                    int iT = se0.t(jb3Var2);
                    pb3VarK0.close();
                    return Integer.valueOf(iT);
                } finally {
                }
            case 7:
                zl0 zl0Var = (zl0) obj3;
                String str2 = (String) obj2;
                jb3 jb3Var3 = (jb3) obj;
                jb3Var3.getClass();
                pb3VarK0 = jb3Var3.k0("UPDATE workspec SET output=? WHERE id=?");
                try {
                    zl0 zl0Var2 = zl0.b;
                    pb3VarK0.k(1, bi4.L(zl0Var));
                    pb3VarK0.P(2, str2);
                    pb3VarK0.c0();
                    return t64Var;
                } finally {
                }
            case 8:
                jb3 jb3Var4 = (jb3) obj;
                jb3Var4.getClass();
                ((qg4) obj3).b.F(jb3Var4, (og4) obj2);
                return t64Var;
            default:
                jb3 jb3Var5 = (jb3) obj;
                jb3Var5.getClass();
                ((tg4) obj3).b.F(jb3Var5, (sg4) obj2);
                return t64Var;
        }
    }
}
