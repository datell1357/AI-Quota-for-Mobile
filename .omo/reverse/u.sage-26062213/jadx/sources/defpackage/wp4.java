package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wp4 implements ze1 {
    public static final /* synthetic */ wp4 o = new wp4(0);
    public static final /* synthetic */ wp4 p = new wp4(1);
    public static final /* synthetic */ wp4 q = new wp4(2);
    public static final /* synthetic */ wp4 r = new wp4(3);
    public final /* synthetic */ int n;

    public /* synthetic */ wp4(int i) {
        this.n = i;
    }

    @Override // defpackage.ze1
    public final Object apply(Object obj) {
        switch (this.n) {
            case 0:
                Context context = (Context) obj;
                String strB = xp4.b;
                if (strB == null) {
                    synchronized (xp4.class) {
                        try {
                            strB = xp4.b;
                            if (strB == null) {
                                strB = l75.b(context, "com.google.android.gms.measurement");
                                xp4.b = strB;
                            }
                        } finally {
                        }
                        break;
                    }
                }
                return strB;
            case 1:
                ps0 ps0Var = qb5.i;
                return "";
            case 2:
                p85 p85Var = (p85) obj;
                qc5 qc5VarZ = rc5.z();
                if (p85Var == null) {
                    return (rc5) qc5VarZ.d();
                }
                for (s85 s85Var : p85Var.x()) {
                    sc5 sc5VarZ = tc5.z();
                    String strT = s85Var.t();
                    sc5VarZ.b();
                    ((tc5) sc5VarZ.o).A(strT);
                    int iH = s85Var.H();
                    int i = iH - 1;
                    if (iH == 0) {
                        throw null;
                    }
                    if (i == 0) {
                        long jU = s85Var.u();
                        sc5VarZ.b();
                        ((tc5) sc5VarZ.o).B(jU);
                    } else if (i == 1) {
                        boolean zV = s85Var.v();
                        sc5VarZ.b();
                        ((tc5) sc5VarZ.o).C(zV);
                    } else if (i == 2) {
                        double dW = s85Var.w();
                        sc5VarZ.b();
                        ((tc5) sc5VarZ.o).D(dW);
                    } else if (i == 3) {
                        String strX = s85Var.x();
                        sc5VarZ.b();
                        ((tc5) sc5VarZ.o).E(strX);
                    } else {
                        if (i != 4) {
                            k21.n("No known flag type");
                            return null;
                        }
                        zm4 zm4VarY = s85Var.y();
                        sc5VarZ.b();
                        ((tc5) sc5VarZ.o).F(zm4VarY);
                    }
                    tc5 tc5Var = (tc5) sc5VarZ.d();
                    qc5VarZ.b();
                    ((rc5) qc5VarZ.o).F(tc5Var);
                }
                String strW = p85Var.w();
                qc5VarZ.b();
                ((rc5) qc5VarZ.o).D(strW);
                String strT2 = p85Var.t();
                qc5VarZ.b();
                ((rc5) qc5VarZ.o).B(strT2);
                long jY = p85Var.y();
                qc5VarZ.b();
                ((rc5) qc5VarZ.o).E(jY);
                if (p85Var.u()) {
                    zm4 zm4VarV = p85Var.v();
                    qc5VarZ.b();
                    ((rc5) qc5VarZ.o).C(zm4VarV);
                }
                return (rc5) qc5VarZ.d();
            default:
                t85 t85Var = (t85) obj;
                if (t85Var.n != 29514) {
                    throw t85Var;
                }
                s95 s95VarW = t95.w();
                l95 l95VarG = m95.G();
                long jCurrentTimeMillis = System.currentTimeMillis();
                l95VarG.b();
                ((m95) l95VarG.o).I(jCurrentTimeMillis);
                s95VarW.b();
                ((t95) s95VarW.o).x((m95) l95VarG.d());
                return (t95) s95VarW.d();
        }
    }
}
