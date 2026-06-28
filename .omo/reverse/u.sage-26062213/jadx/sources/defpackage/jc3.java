package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jc3 implements ic3 {
    public final pe1 n;
    public final kg2 o;
    public kg2 p;

    public jc3(Map map, pe1 pe1Var) {
        kg2 kg2Var;
        this.n = pe1Var;
        if (map == null || map.isEmpty()) {
            kg2Var = null;
        } else {
            kg2Var = new kg2(map.size());
            for (Map.Entry entry : map.entrySet()) {
                kg2Var.m(entry.getKey(), entry.getValue());
            }
        }
        this.o = kg2Var;
    }

    @Override // defpackage.ic3
    public final hc3 a(String str, ne1 ne1Var) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!qj0.P(str.charAt(i))) {
                kg2 kg2Var = this.p;
                if (kg2Var == null) {
                    long[] jArr = td3.a;
                    kg2Var = new kg2();
                    this.p = kg2Var;
                }
                kg2 kg2Var2 = kg2Var;
                Object objG = kg2Var2.g(str);
                if (objG == null) {
                    objG = new ArrayList();
                    kg2Var2.m(str, objG);
                }
                ((List) objG).add(ne1Var);
                return new eh(kg2Var2, str, ne1Var, 29, false);
            }
        }
        k21.f("Registered key is empty or blank");
        return null;
    }

    @Override // defpackage.ic3
    public final boolean b(Object obj) {
        return ((Boolean) this.n.k(obj)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008e  */
    @Override // defpackage.ic3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map c() {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jc3.c():java.util.Map");
    }

    @Override // defpackage.ic3
    public final Object d(String str) {
        kg2 kg2Var = this.o;
        List list = kg2Var != null ? (List) kg2Var.k(str) : null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() > 1 && kg2Var != null) {
            List listSubList = list.subList(1, list.size());
            int iF = kg2Var.f(str);
            if (iF < 0) {
                iF = ~iF;
            }
            Object[] objArr = kg2Var.c;
            Object obj = objArr[iF];
            kg2Var.b[iF] = str;
            objArr[iF] = listSubList;
        }
        return list.get(0);
    }
}
