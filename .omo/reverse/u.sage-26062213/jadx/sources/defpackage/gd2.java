package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gd2 extends md2 implements fc0, oy1 {
    public LinkedHashMap B;

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        float f = ((cw0) n44.g0(this, at1.c)).n;
        if (f < 0.0f) {
            f = 0.0f;
        }
        dv2 dv2VarE = ya2Var.e(j);
        boolean z = this.A && !Float.isNaN(f) && cw0.a(f, 0.0f) > 0;
        int iN = !Float.isNaN(f) ? gb2Var.N(f) : 0;
        int iMax = dv2VarE.n;
        if (z) {
            iMax = Math.max(iMax, iN);
        }
        int iMax2 = dv2VarE.o;
        if (z) {
            iMax2 = Math.max(iMax2, iN);
        }
        if (z) {
            LinkedHashMap linkedHashMap = this.B;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
                this.B = linkedHashMap;
            }
            ab4 ab4Var = at1.b;
            int iRound = Math.round((iN - dv2VarE.n) / 2.0f);
            if (iRound < 0) {
                iRound = 0;
            }
            linkedHashMap.put(ab4Var, Integer.valueOf(iRound));
            ck1 ck1Var = at1.a;
            int iRound2 = Math.round((iN - dv2VarE.o) / 2.0f);
            linkedHashMap.put(ck1Var, Integer.valueOf(iRound2 >= 0 ? iRound2 : 0));
        }
        Map map = this.B;
        if (map == null) {
            map = h01.n;
        }
        return gb2Var.e0(iMax, iMax2, map, new sr1(iMax, dv2VarE, iMax2));
    }
}
