package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hh3 {
    public final bh3 a;
    public final uf2 b;

    public hh3(gh3 gh3Var, hs1 hs1Var) {
        this.a = gh3Var.d;
        List listJ = gh3.j(4, gh3Var);
        this.b = new uf2(listJ.size());
        int size = listJ.size();
        for (int i = 0; i < size; i++) {
            gh3 gh3Var2 = (gh3) listJ.get(i);
            if (hs1Var.a(gh3Var2.f)) {
                this.b.a(gh3Var2.f);
            }
        }
    }
}
