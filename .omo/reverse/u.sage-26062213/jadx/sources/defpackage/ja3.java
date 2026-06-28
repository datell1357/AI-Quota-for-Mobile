package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ja3 extends uy1 {
    public static final ja3 c = new ja3("Undefined intrinsics block and it is required", 0);
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ja3(String str, int i) {
        super(str);
        this.b = i;
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        switch (this.b) {
            case 0:
                int size = list.size();
                h01 h01Var = h01.n;
                if (size == 0) {
                    return gb2Var.e0(mf0.j(j), mf0.i(j), h01Var, do2.y);
                }
                if (size == 1) {
                    dv2 dv2VarE = ((ya2) list.get(0)).e(j);
                    return gb2Var.e0(nf0.f(dv2VarE.n, j), nf0.e(dv2VarE.o, j), h01Var, new e9(dv2VarE, 5));
                }
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                int iMax = 0;
                int iMax2 = 0;
                for (int i = 0; i < size2; i++) {
                    dv2 dv2VarE2 = ((ya2) list.get(i)).e(j);
                    iMax = Math.max(dv2VarE2.n, iMax);
                    iMax2 = Math.max(dv2VarE2.o, iMax2);
                    arrayList.add(dv2VarE2);
                }
                return gb2Var.e0(nf0.f(iMax, j), nf0.e(iMax2, j), h01Var, new na(2, arrayList));
            default:
                throw new IllegalStateException("Undefined measure and it is required");
        }
    }
}
