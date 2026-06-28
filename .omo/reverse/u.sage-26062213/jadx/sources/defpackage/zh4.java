package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zh4 implements df1 {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ d23 o;
    public final /* synthetic */ w33 p;
    public final /* synthetic */ w33 q;
    public final /* synthetic */ w33 r;

    public /* synthetic */ zh4(d23 d23Var, w33 w33Var, w33 w33Var2, w33 w33Var3) {
        this.o = d23Var;
        this.p = w33Var;
        this.q = w33Var2;
        this.r = w33Var3;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws IOException {
        int i = this.n;
        t64 t64Var = t64.a;
        w33 w33Var = this.r;
        w33 w33Var2 = this.q;
        w33 w33Var3 = this.p;
        d23 d23Var = this.o;
        switch (i) {
            case 0:
                int iIntValue = ((Integer) obj).intValue();
                long jLongValue = ((Long) obj2).longValue();
                if (iIntValue == 1) {
                    if (w33Var3.n != null) {
                        p61.k("bad zip: NTFS extra attribute tag 0x0001 repeated");
                    } else if (jLongValue != 24) {
                        p61.k("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                    } else {
                        w33Var3.n = Long.valueOf(d23Var.z());
                        w33Var2.n = Long.valueOf(d23Var.z());
                        w33Var.n = Long.valueOf(d23Var.z());
                    }
                }
                break;
            default:
                int iIntValue2 = ((Integer) obj).intValue();
                long jLongValue2 = ((Long) obj2).longValue();
                if (iIntValue2 == 21589) {
                    if (jLongValue2 < 1) {
                        p61.k("bad zip: extended timestamp extra too short");
                    } else {
                        byte b = d23Var.readByte();
                        boolean z = (b & 1) == 1;
                        boolean z2 = (b & 2) == 2;
                        boolean z3 = (b & 4) == 4;
                        long j = z ? 5L : 1L;
                        if (z2) {
                            j += 4;
                        }
                        if (z3) {
                            j += 4;
                        }
                        if (jLongValue2 < j) {
                            p61.k("bad zip: extended timestamp extra too short");
                        } else {
                            if (z) {
                                w33Var3.n = Integer.valueOf(d23Var.r());
                            }
                            if (z2) {
                                w33Var2.n = Integer.valueOf(d23Var.r());
                            }
                            if (z3) {
                                w33Var.n = Integer.valueOf(d23Var.r());
                            }
                        }
                    }
                }
                break;
        }
        return t64Var;
    }

    public /* synthetic */ zh4(w33 w33Var, d23 d23Var, w33 w33Var2, w33 w33Var3) {
        this.p = w33Var;
        this.o = d23Var;
        this.q = w33Var2;
        this.r = w33Var3;
    }
}
