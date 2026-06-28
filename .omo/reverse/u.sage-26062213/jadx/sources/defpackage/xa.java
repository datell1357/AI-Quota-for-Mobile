package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xa {
    public final Context a;
    public final as0 b;
    public final long c;
    public final zr2 d;

    public xa(Context context, as0 as0Var, long j, zr2 zr2Var) {
        this.a = context;
        this.b = as0Var;
        this.c = j;
        this.d = zr2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!xa.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        xa xaVar = (xa) obj;
        return nt1.g(this.a, xaVar.a) && nt1.g(this.b, xaVar.b) && t70.c(this.c, xaVar.c) && nt1.g(this.d, xaVar.d);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        int i = t70.g;
        return this.d.hashCode() + xw1.l(iHashCode, 31, this.c);
    }
}
