package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class au2 implements m53 {
    public final Set n;
    public final ug2 o = new ug2(new eg1[16]);

    public au2(Set set) {
        this.n = set;
    }

    @Override // defpackage.m53
    public final void a() {
        ug2 ug2Var = this.o;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            m53 m53Var = ((eg1) objArr[i2]).a;
            this.n.remove(m53Var);
            m53Var.a();
        }
    }

    @Override // defpackage.m53
    public final void c() {
    }

    @Override // defpackage.m53
    public final void e() {
    }
}
