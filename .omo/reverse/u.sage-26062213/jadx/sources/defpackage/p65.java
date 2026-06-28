package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p65 extends zq4 {
    public final /* synthetic */ int p = 1;
    public final Object q;

    public p65(gt4 gt4Var) {
        super("internal.logger");
        this.q = gt4Var;
        this.o.put("log", new kd5(this, false, true));
        this.o.put("silent", new e95("silent", 1));
        ((zq4) this.o.get("silent")).f("log", new kd5(this, true, true));
        this.o.put("unmonitored", new e95("unmonitored", 2));
        ((zq4) this.o.get("unmonitored")).f("log", new kd5(this, false, false));
    }

    @Override // defpackage.zq4
    public final ls4 b(qd1 qd1Var, List list) {
        TreeMap treeMap;
        int i = this.p;
        String str = this.n;
        vs4 vs4Var = ls4.f;
        Object obj = this.q;
        String str2 = null;
        switch (i) {
            case 0:
                ai4.g(str, 3, list);
                String strZzc = ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(0)).zzc();
                ls4 ls4Var = (ls4) list.get(1);
                pc4 pc4Var = (pc4) qd1Var.r;
                long jN = (long) ai4.n(pc4Var.h(qd1Var, ls4Var).zzd().doubleValue());
                ls4 ls4VarH = pc4Var.h(qd1Var, (ls4) list.get(2));
                HashMap mapP = ls4VarH instanceof cs4 ? ai4.p((cs4) ls4VarH) : new HashMap();
                ui3 ui3Var = (ui3) obj;
                ui3Var.getClass();
                HashMap map = new HashMap();
                for (String str3 : mapP.keySet()) {
                    HashMap map2 = ((xk4) ui3Var.o).c;
                    map.put(str3, xk4.b(map2.containsKey(str3) ? map2.get(str3) : null, mapP.get(str3), str3));
                }
                ((ArrayList) ui3Var.q).add(new xk4(strZzc, jN, map));
                return vs4Var;
            case 1:
                ai4.g("getValue", 2, list);
                ls4 ls4VarH2 = ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(0));
                ls4 ls4VarH3 = ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(1));
                String strZzc2 = ls4VarH2.zzc();
                pc4 pc4Var2 = (pc4) obj;
                Map map3 = (Map) ((w35) pc4Var2.p).d.get((String) pc4Var2.o);
                if (map3 != null && map3.containsKey(strZzc2)) {
                    str2 = (String) map3.get(strZzc2);
                }
                return str2 != null ? new ss4(str2) : ls4VarH3;
            case 2:
                return vs4Var;
            case 3:
                try {
                    return vj4.c(((p35) obj).call());
                } catch (Exception unused) {
                    return vs4Var;
                }
            default:
                ai4.g(str, 3, list);
                ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(0)).zzc();
                ls4 ls4Var2 = (ls4) list.get(1);
                pc4 pc4Var3 = (pc4) qd1Var.r;
                ls4 ls4VarH4 = pc4Var3.h(qd1Var, ls4Var2);
                if (ls4VarH4 instanceof is4) {
                    ls4 ls4VarH5 = pc4Var3.h(qd1Var, (ls4) list.get(2));
                    if (ls4VarH5 instanceof cs4) {
                        cs4 cs4Var = (cs4) ls4VarH5;
                        HashMap map4 = cs4Var.n;
                        if (map4.containsKey("type")) {
                            String strZzc3 = cs4Var.d("type").zzc();
                            int iM = map4.containsKey("priority") ? ai4.m(cs4Var.d("priority").zzd().doubleValue()) : 1000;
                            pc4 pc4Var4 = (pc4) obj;
                            is4 is4Var = (is4) ls4VarH4;
                            pc4Var4.getClass();
                            if ("create".equals(strZzc3)) {
                                treeMap = (TreeMap) pc4Var4.p;
                            } else if ("edit".equals(strZzc3)) {
                                treeMap = (TreeMap) pc4Var4.o;
                            } else {
                                k21.n("Unknown callback type: ".concat(String.valueOf(strZzc3)));
                            }
                            if (treeMap.containsKey(Integer.valueOf(iM))) {
                                iM = ((Integer) treeMap.lastKey()).intValue() + 1;
                            }
                            treeMap.put(Integer.valueOf(iM), is4Var);
                            return vs4Var;
                        }
                        k21.f("Undefined rule type");
                    } else {
                        k21.f("Invalid callback params");
                    }
                } else {
                    k21.f("Invalid callback type");
                }
                return null;
        }
    }

    public p65(pc4 pc4Var) {
        super("internal.registerCallback");
        this.q = pc4Var;
    }

    public p65(ui3 ui3Var) {
        super("internal.eventLogger");
        this.q = ui3Var;
    }

    public p65(p35 p35Var) {
        super("internal.appMetadata");
        this.q = p35Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p65(e95 e95Var, pc4 pc4Var) {
        super("getValue");
        this.q = pc4Var;
    }
}
