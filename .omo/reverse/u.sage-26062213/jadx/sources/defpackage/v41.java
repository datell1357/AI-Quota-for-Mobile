package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v41 extends w41 {
    @Override // defpackage.w41
    public final w41 a(uv2 uv2Var) {
        a42 a42VarP = tv4.p();
        List list = this.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a42VarP.add(((cl0) list.get(i)).e(uv2Var));
        }
        a42 a42VarL = tv4.l(a42VarP);
        a42VarL.getClass();
        return new v41(a42VarL);
    }

    public final String toString() {
        return "Edge";
    }
}
