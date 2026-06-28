package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s03 implements u80 {
    public final u80 a;
    public final zw2 b;
    public final ConcurrentHashMap c;

    public s03(u80 u80Var, zw2 zw2Var) {
        this.a = u80Var;
        w80.L(zw2Var, "Public suffix matcher");
        this.b = zw2Var;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put(".localhost.", bool);
        concurrentHashMap.put(".test.", bool);
        concurrentHashMap.put(".local.", bool);
        concurrentHashMap.put(".local", bool);
        concurrentHashMap.put(".localdomain", bool);
        this.c = concurrentHashMap;
    }

    public static u80 e(u80 u80Var, zw2 zw2Var) {
        return zw2Var != null ? new s03(u80Var, zw2Var) : u80Var;
    }

    @Override // defpackage.ih0
    public final void a(ku kuVar, jh0 jh0Var) {
        this.a.a(kuVar, jh0Var);
    }

    @Override // defpackage.ih0
    public final boolean b(ku kuVar, jh0 jh0Var) {
        String strSubstring = kuVar.q;
        if (strSubstring == null) {
            return false;
        }
        int iIndexOf = strSubstring.indexOf(46);
        zw2 zw2Var = this.b;
        if (iIndexOf >= 0) {
            if (!this.c.containsKey(strSubstring.substring(iIndexOf))) {
                zw2Var.getClass();
                if (strSubstring.startsWith(".")) {
                    strSubstring = strSubstring.substring(1);
                }
                if (zw2Var.a(strSubstring) == null) {
                    return false;
                }
            }
        } else if (!strSubstring.equalsIgnoreCase(jh0Var.a)) {
            zw2Var.getClass();
            if (strSubstring.startsWith(".")) {
                strSubstring = strSubstring.substring(1);
            }
            if (zw2Var.a(strSubstring) == null) {
                return false;
            }
        }
        return this.a.b(kuVar, jh0Var);
    }

    @Override // defpackage.ih0
    public final void c(ku kuVar, String str) {
        this.a.c(kuVar, str);
    }

    @Override // defpackage.u80
    public final String d() {
        return this.a.d();
    }
}
