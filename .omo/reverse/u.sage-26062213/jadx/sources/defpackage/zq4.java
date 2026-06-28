package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zq4 implements ls4, as4 {
    public final String n;
    public final HashMap o = new HashMap();

    public zq4(String str) {
        this.n = str;
    }

    @Override // defpackage.ls4
    public final Iterator a() {
        return new tr4(this.o.keySet().iterator());
    }

    public abstract ls4 b(qd1 qd1Var, List list);

    @Override // defpackage.ls4
    public final ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        return "toString".equals(str) ? new ss4(this.n) : as4.g(this, new ss4(str), qd1Var, arrayList);
    }

    @Override // defpackage.as4
    public final ls4 d(String str) {
        HashMap map = this.o;
        return map.containsKey(str) ? (ls4) map.get(str) : ls4.f;
    }

    @Override // defpackage.as4
    public final boolean e(String str) {
        return this.o.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zq4)) {
            return false;
        }
        zq4 zq4Var = (zq4) obj;
        String str = this.n;
        if (str != null) {
            return str.equals(zq4Var.n);
        }
        return false;
    }

    @Override // defpackage.as4
    public final void f(String str, ls4 ls4Var) {
        HashMap map = this.o;
        if (ls4Var == null) {
            map.remove(str);
        } else {
            map.put(str, ls4Var);
        }
    }

    public final int hashCode() {
        String str = this.n;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // defpackage.ls4
    public final String zzc() {
        return this.n;
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        return Double.valueOf(Double.NaN);
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        return Boolean.TRUE;
    }

    @Override // defpackage.ls4
    public ls4 h() {
        return this;
    }
}
