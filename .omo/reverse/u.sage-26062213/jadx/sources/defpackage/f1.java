package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class f1 implements km1 {
    public final boolean d(String str, boolean z) {
        Object objC = c(str);
        return objC == null ? z : ((Boolean) objC).booleanValue();
    }

    public final int e(int i, String str) {
        Object objC = c(str);
        return objC == null ? i : ((Integer) objC).intValue();
    }

    public Set f() {
        throw new UnsupportedOperationException();
    }
}
