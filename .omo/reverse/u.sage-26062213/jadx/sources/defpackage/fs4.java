package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fs4 implements ls4 {
    @Override // defpackage.ls4
    public final Iterator a() {
        return null;
    }

    @Override // defpackage.ls4
    public final ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        throw new IllegalStateException("null has no function ".concat(str));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof fs4;
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        return ls4.g;
    }

    public final int hashCode() {
        return 1;
    }

    @Override // defpackage.ls4
    public final String zzc() {
        return "null";
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        return Double.valueOf(0.0d);
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        return Boolean.FALSE;
    }
}
