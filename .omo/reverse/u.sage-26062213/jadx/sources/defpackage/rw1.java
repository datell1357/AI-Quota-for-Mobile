package defpackage;

import java.util.Map;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rw1 implements lx1 {
    public static final rw1 a = new rw1();
    public static final qw1 b = qw1.b;

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gg4.f(vn0Var);
        ys3 ys3Var = ys3.a;
        return new ow1((Map) new t32(bw1.a).i(vn0Var));
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        ow1 ow1Var = (ow1) obj;
        ow1Var.getClass();
        gg4.e(bVar);
        ys3 ys3Var = ys3.a;
        new t32(bw1.a).c(bVar, ow1Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
