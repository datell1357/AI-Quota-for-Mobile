package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t32 extends x {
    public final lx1 a;
    public final s32 b;

    public t32(lx1 lx1Var) {
        ys3 ys3Var = ys3.a;
        this.a = lx1Var;
        this.b = new s32(ys3.b, lx1Var.d());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        h(obj);
        s32 s32Var = this.b;
        s32Var.getClass();
        b bVarA = bVar.a(s32Var);
        Iterator itG = g(obj);
        int i = 0;
        while (itG.hasNext()) {
            Map.Entry entry = (Map.Entry) itG.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            bVarA.o(s32Var, i, ys3.a, key);
            i += 2;
            bVarA.o(s32Var, i2, this.a, value);
        }
        bVarA.s(s32Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return this.b;
    }

    @Override // defpackage.x
    public final Object e() {
        return new LinkedHashMap();
    }

    @Override // defpackage.x
    public final int f(Object obj) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
        linkedHashMap.getClass();
        return linkedHashMap.size() * 2;
    }

    @Override // defpackage.x
    public final Iterator g(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.entrySet().iterator();
    }

    @Override // defpackage.x
    public final int h(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.size();
    }

    @Override // defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        Map map = (Map) obj;
        map.getClass();
        ys3 ys3Var = ys3.a;
        s32 s32Var = this.b;
        Object objU = xb0Var.u(s32Var, i, ys3Var, null);
        int iH = xb0Var.h(s32Var);
        if (iH != i + 1) {
            k21.l(di0.p(i, iH, "Value must follow key in a map, index for key: ", ", returned index for value: "));
            return;
        }
        boolean zContainsKey = map.containsKey(objU);
        lx1 lx1Var = this.a;
        map.put(objU, (!zContainsKey || (lx1Var.d().c() instanceof ny2)) ? xb0Var.u(s32Var, iH, lx1Var, null) : xb0Var.u(s32Var, iH, lx1Var, oa2.Z(objU, map)));
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        throw null;
    }

    @Override // defpackage.x
    public final Object l(Object obj) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
        linkedHashMap.getClass();
        return linkedHashMap;
    }
}
