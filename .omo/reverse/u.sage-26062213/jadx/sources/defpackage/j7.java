package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j7 extends zf5 {
    @Override // defpackage.zf5
    public final void w(s80 s80Var, Set set) {
        synchronized (s80Var) {
            try {
                if (s80Var.f161u == null) {
                    s80Var.f161u = set;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.zf5
    public final int z(s80 s80Var) {
        int i;
        synchronized (s80Var) {
            i = s80Var.v - 1;
            s80Var.v = i;
        }
        return i;
    }
}
