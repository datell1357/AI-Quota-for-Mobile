package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u4 extends bv3 implements ff1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u4(int i, dh0 dh0Var, int i2) {
        super(i, dh0Var);
        this.r = i2;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.r;
        t64 t64Var = t64.a;
        int i2 = 3;
        switch (i) {
            case 0:
                u4 u4Var = new u4(i2, (dh0) obj3, 0);
                u4Var.s = (String) obj;
                u4Var.t = (w3) obj2;
                return u4Var.q(t64Var);
            default:
                u4 u4Var2 = new u4(i2, (dh0) obj3, 1);
                u4Var2.s = (fm3) obj;
                u4Var2.t = (hg2) obj2;
                return u4Var2.q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        switch (this.r) {
            case 0:
                String str = (String) this.s;
                w3 w3Var = (w3) this.t;
                gg4.T(obj);
                wr3 wr3Var = a.D;
                return qv3.v(str, "ACCOUNT", w3Var, null, null, 24);
            default:
                gg4.T(obj);
                fm3 fm3Var = (fm3) this.s;
                hg2 hg2Var = (hg2) this.t;
                Set setKeySet = hg2Var.a().keySet();
                ArrayList arrayList = new ArrayList(p70.a0(setKeySet, 10));
                Iterator it = setKeySet.iterator();
                while (it.hasNext()) {
                    arrayList.add(((rx2) it.next()).a);
                }
                Map<String, ?> all = fm3Var.a.getAll();
                all.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(oa2.a0(linkedHashMap.size()));
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            if (value instanceof Set) {
                                value = o70.F0((Iterable) value);
                            }
                            linkedHashMap2.put(key, value);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                            if (!arrayList.contains((String) entry2.getKey())) {
                                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                            }
                        }
                        hg2 hg2Var2 = new hg2(new LinkedHashMap(hg2Var.a()), false);
                        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
                            String str2 = (String) entry3.getKey();
                            Object value2 = entry3.getValue();
                            if (value2 instanceof Boolean) {
                                str2.getClass();
                                hg2Var2.f(new rx2(str2), value2);
                            } else if (value2 instanceof Float) {
                                str2.getClass();
                                hg2Var2.f(new rx2(str2), value2);
                            } else if (value2 instanceof Integer) {
                                str2.getClass();
                                hg2Var2.f(new rx2(str2), value2);
                            } else if (value2 instanceof Long) {
                                str2.getClass();
                                hg2Var2.f(new rx2(str2), value2);
                            } else if (value2 instanceof String) {
                                str2.getClass();
                                hg2Var2.f(new rx2(str2), value2);
                            } else if (value2 instanceof Set) {
                                str2.getClass();
                                hg2Var2.f(new rx2(str2), (Set) value2);
                            }
                        }
                        return new hg2(new LinkedHashMap(hg2Var2.a()), true);
                    }
                    Map.Entry<String, ?> next = it2.next();
                    String key2 = next.getKey();
                    Set set = fm3Var.b;
                    if (set != null ? set.contains(key2) : true) {
                        linkedHashMap.put(next.getKey(), next.getValue());
                    }
                }
                break;
        }
    }
}
