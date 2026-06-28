package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jp4 implements ls4 {
    public final ls4 n;
    public final String o;

    public jp4(String str) {
        this.n = ls4.f;
        this.o = str;
    }

    @Override // defpackage.ls4
    public final Iterator a() {
        return null;
    }

    @Override // defpackage.ls4
    public final ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jp4)) {
            return false;
        }
        jp4 jp4Var = (jp4) obj;
        return this.o.equals(jp4Var.o) && this.n.equals(jp4Var.n);
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        return new jp4(this.o, this.n.h());
    }

    public final int hashCode() {
        return this.n.hashCode() + (this.o.hashCode() * 31);
    }

    @Override // defpackage.ls4
    public final String zzc() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        throw new IllegalStateException("Control is not a boolean");
    }

    public jp4(String str, ls4 ls4Var) {
        this.n = ls4Var;
        this.o = str;
    }
}
