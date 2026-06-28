package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ie implements db2 {
    public final qe a;
    public boolean b;

    public ie(qe qeVar) {
        this.a = qeVar;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int iG = ((ya2) list.get(0)).g(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iG2 = ((ya2) list.get(i2)).g(i);
                if (iG2 > iG) {
                    iG = iG2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return iG;
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int iR = ((ya2) list.get(0)).R(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iR2 = ((ya2) list.get(i2)).R(i);
                if (iR2 > iR) {
                    iR = iR2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return iR;
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        ws2 ws2Var = this.a.a;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i = 0; i < size; i++) {
            dv2 dv2VarE = ((ya2) list.get(i)).e(j);
            iMax = Math.max(iMax, dv2VarE.n);
            iMax2 = Math.max(iMax2, dv2VarE.o);
            arrayList.add(dv2VarE);
        }
        if (gb2Var.q()) {
            this.b = true;
            ws2Var.setValue(new rs1((((long) iMax2) & 4294967295L) | (((long) iMax) << 32)));
        } else if (!this.b) {
            ws2Var.setValue(new rs1((((long) iMax2) & 4294967295L) | (((long) iMax) << 32)));
        }
        return gb2Var.e0(iMax, iMax2, h01.n, new na(1, arrayList));
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int iT = ((ya2) list.get(0)).T(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iT2 = ((ya2) list.get(i2)).T(i);
                if (iT2 > iT) {
                    iT = iT2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return iT;
    }

    @Override // defpackage.db2
    public final int i(jt1 jt1Var, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int iK = ((ya2) list.get(0)).K(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int iK2 = ((ya2) list.get(i2)).K(i);
                if (iK2 > iK) {
                    iK = iK2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return iK;
    }
}
