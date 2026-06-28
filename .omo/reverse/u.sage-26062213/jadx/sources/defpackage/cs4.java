package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class cs4 implements ls4, as4 {
    public final HashMap n = new HashMap();

    @Override // defpackage.ls4
    public final Iterator a() {
        return new tr4(this.n.keySet().iterator());
    }

    @Override // defpackage.ls4
    public ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        return "toString".equals(str) ? new ss4(toString()) : as4.g(this, new ss4(str), qd1Var, arrayList);
    }

    @Override // defpackage.as4
    public final ls4 d(String str) {
        HashMap map = this.n;
        return map.containsKey(str) ? (ls4) map.get(str) : ls4.f;
    }

    @Override // defpackage.as4
    public final boolean e(String str) {
        return this.n.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cs4) {
            return this.n.equals(((cs4) obj).n);
        }
        return false;
    }

    @Override // defpackage.as4
    public final void f(String str, ls4 ls4Var) {
        HashMap map = this.n;
        if (ls4Var == null) {
            map.remove(str);
        } else {
            map.put(str, ls4Var);
        }
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        cs4 cs4Var = new cs4();
        for (Map.Entry entry : this.n.entrySet()) {
            boolean z = entry.getValue() instanceof as4;
            HashMap map = cs4Var.n;
            if (z) {
                map.put((String) entry.getKey(), (ls4) entry.getValue());
            } else {
                map.put((String) entry.getKey(), ((ls4) entry.getValue()).h());
            }
        }
        return cs4Var;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        HashMap map = this.n;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // defpackage.ls4
    public final String zzc() {
        return "[object Object]";
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        return Double.valueOf(Double.NaN);
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        return Boolean.TRUE;
    }
}
