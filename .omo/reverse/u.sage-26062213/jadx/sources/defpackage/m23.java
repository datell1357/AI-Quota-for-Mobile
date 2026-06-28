package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m23 {
    public final Context a;
    public final ho1 b;
    public final nv3 c;
    public final nv3 d;
    public final nv3 e;
    public final da0 f;

    public m23(Context context, ho1 ho1Var, nv3 nv3Var, nv3 nv3Var2, nv3 nv3Var3, da0 da0Var) {
        this.a = context;
        this.b = ho1Var;
        this.c = nv3Var;
        this.d = nv3Var2;
        this.e = nv3Var3;
        this.f = da0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m23) {
            m23 m23Var = (m23) obj;
            return nt1.g(this.a, m23Var.a) && this.b.equals(m23Var.b) && this.c == m23Var.c && this.d == m23Var.d && this.e == m23Var.e && this.f == m23Var.f;
        }
        return false;
    }

    public final int hashCode() {
        return (this.f.hashCode() + ((k21.o.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
    }

    public final String toString() {
        return "Options(application=" + this.a + ", defaults=" + this.b + ", mainCoroutineContextLazy=" + this.c + ", memoryCacheLazy=" + this.d + ", diskCacheLazy=" + this.e + ", eventListenerFactory=" + k21.o + ", componentRegistry=" + this.f + ", logger=null)";
    }
}
