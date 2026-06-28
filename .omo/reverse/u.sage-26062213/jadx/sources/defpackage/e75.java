package defpackage;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e75 extends cs4 {
    public final ui3 o;

    public e75(ui3 ui3Var) {
        this.o = ui3Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.cs4, defpackage.ls4
    public final ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        int iHashCode = str.hashCode();
        ui3 ui3Var = this.o;
        switch (iHashCode) {
            case 21624207:
                if (str.equals("getEventName")) {
                    ai4.g("getEventName", 0, arrayList);
                    return new ss4(((xk4) ui3Var.p).a);
                }
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    ai4.g("getTimestamp", 0, arrayList);
                    return new eq4(Double.valueOf(((xk4) ui3Var.p).b));
                }
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    ai4.g("getParamValue", 1, arrayList);
                    String strZzc = ((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(0)).zzc();
                    HashMap map = ((xk4) ui3Var.p).c;
                    return vj4.c(map.containsKey(strZzc) ? map.get(strZzc) : null);
                }
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    ai4.g("getParams", 0, arrayList);
                    HashMap map2 = ((xk4) ui3Var.p).c;
                    cs4 cs4Var = new cs4();
                    for (String str2 : map2.keySet()) {
                        cs4Var.f(str2, vj4.c(map2.get(str2)));
                    }
                    return cs4Var;
                }
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    ai4.g("setParamValue", 2, arrayList);
                    String strZzc2 = ((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(0)).zzc();
                    ls4 ls4VarH = ((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(1));
                    xk4 xk4Var = (xk4) ui3Var.p;
                    Object objO = ai4.o(ls4VarH);
                    HashMap map3 = xk4Var.c;
                    if (objO == null) {
                        map3.remove(strZzc2);
                        return ls4VarH;
                    }
                    map3.put(strZzc2, xk4.b(map3.get(strZzc2), objO, strZzc2));
                    return ls4VarH;
                }
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    ai4.g("setEventName", 1, arrayList);
                    ls4 ls4VarH2 = ((pc4) qd1Var.r).h(qd1Var, (ls4) arrayList.get(0));
                    if (ls4.f.equals(ls4VarH2) || ls4.g.equals(ls4VarH2)) {
                        k21.f("Illegal event name");
                        return null;
                    }
                    ((xk4) ui3Var.p).a = ls4VarH2.zzc();
                    return new ss4(ls4VarH2.zzc());
                }
                break;
        }
        return super.c(str, qd1Var, arrayList);
    }
}
