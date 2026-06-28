package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e95 extends zq4 {
    public final /* synthetic */ int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e95(String str, int i) {
        super(str);
        this.p = i;
    }

    @Override // defpackage.zq4
    public final ls4 b(qd1 qd1Var, List list) {
        int i = this.p;
        vs4 vs4Var = ls4.f;
        switch (i) {
            case 0:
                return vs4Var;
            case 1:
            case 2:
                return this;
            case 3:
                return new eq4(Double.valueOf(0.0d));
            default:
                return vs4Var;
        }
    }
}
