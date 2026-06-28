package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u41 extends w41 {
    public final long b;
    public final long c;
    public final boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u41(List list, long j, long j2, boolean z) {
        super(list);
        list.getClass();
        this.b = j;
        this.c = j2;
        this.d = z;
    }

    @Override // defpackage.w41
    public final w41 a(uv2 uv2Var) {
        a42 a42VarP = tv4.p();
        List list = this.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a42VarP.add(((cl0) list.get(i)).e(uv2Var));
        }
        return new u41(tv4.l(a42VarP), ix.X(this.b, uv2Var), ix.X(this.c, uv2Var), this.d);
    }

    public final String toString() {
        return "Corner: vertex=" + ((Object) v71.b(this.b)) + ", center=" + ((Object) v71.b(this.c)) + ", convex=" + this.d;
    }
}
