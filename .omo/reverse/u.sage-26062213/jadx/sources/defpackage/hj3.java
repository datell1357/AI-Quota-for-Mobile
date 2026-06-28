package defpackage;

import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hj3 implements oi3 {
    public final uj3 n;

    public hj3(uj3 uj3Var) {
        uj3Var.getClass();
        this.n = uj3Var;
    }

    @Override // defpackage.oi3
    public final Object c() {
        return new gj3(this.n.a(null), null, null);
    }

    @Override // defpackage.oi3
    public final void i(Object obj, l64 l64Var) throws IOException {
        byte[] bytes = fv1.d.b(gj3.Companion.serializer(), (gj3) obj).getBytes(k40.a);
        bytes.getClass();
        l64Var.n.write(bytes);
    }

    @Override // defpackage.oi3
    public final Object k(FileInputStream fileInputStream) throws xi0 {
        try {
            fv1 fv1Var = fv1.d;
            String str = new String(qn0.D(fileInputStream), k40.a);
            fv1Var.getClass();
            return (gj3) fv1Var.a(gj3.Companion.serializer(), str);
        } catch (Exception e) {
            throw new xi0("Cannot parse session data", e);
        }
    }
}
