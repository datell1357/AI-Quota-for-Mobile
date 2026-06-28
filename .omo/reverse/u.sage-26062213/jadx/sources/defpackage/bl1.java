package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bl1 implements ne1 {
    public final /* synthetic */ int n = 0;
    public final Object o;
    public final /* synthetic */ Object p;

    public bl1(pe1 pe1Var, y84 y84Var) {
        this.o = pe1Var;
        this.p = y84Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v8 */
    @Override // defpackage.ne1
    public final Object a() throws Throwable {
        Throwable th;
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj = this.p;
        Object obj2 = this.o;
        switch (i) {
            case 0:
                cl1 cl1Var = (cl1) obj;
                fl1 fl1Var = (fl1) obj2;
                d21 d21Var = d21.r;
                IOException iOException = null;
                try {
                    try {
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e) {
                    iOException = e;
                }
                if (!fl1Var.b(true, this)) {
                    throw new IOException("Required SETTINGS preface not received");
                }
                do {
                    try {
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } while (fl1Var.b(false, this));
                d21 d21Var2 = d21.p;
                try {
                    d21Var = d21.f62u;
                    cl1Var.b(d21Var2, d21Var, null);
                    this = d21Var2;
                } catch (IOException e2) {
                    iOException = e2;
                    d21 d21Var3 = d21.q;
                    cl1Var.b(d21Var3, d21Var3, iOException);
                    this = d21Var3;
                }
                fi4.a(fl1Var);
                return t64Var;
                this = d21Var;
                cl1Var.b(this, d21Var, iOException);
                fi4.a(fl1Var);
                throw th;
            default:
                ((pe1) obj2).k((y84) obj);
                return t64Var;
        }
    }

    public bl1(cl1 cl1Var, fl1 fl1Var) {
        this.p = cl1Var;
        this.o = fl1Var;
    }
}
