package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mk2 {
    public static final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a(lk2 lk2Var) {
        lk2Var.getClass();
        String strX = tv4.x(lk2Var.getClass());
        if (strX.length() <= 0) {
            k21.f("navigator name cannot be an empty string");
            return;
        }
        LinkedHashMap linkedHashMap = this.a;
        lk2 lk2Var2 = (lk2) linkedHashMap.get(strX);
        if (nt1.g(lk2Var2, lk2Var)) {
            return;
        }
        if (lk2Var2 != null && lk2Var2.b) {
            p61.m("Navigator ", lk2Var, " is replacing an already attached ", lk2Var2);
        } else if (lk2Var.b) {
            k21.m(lk2Var, " is already attached to another NavController", "Navigator ");
        }
    }

    public final lk2 b(String str) {
        str.getClass();
        if (str.length() <= 0) {
            k21.f("navigator name cannot be an empty string");
            return null;
        }
        lk2 lk2Var = (lk2) this.a.get(str);
        if (lk2Var != null) {
            return lk2Var;
        }
        k21.n(di0.v("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        return null;
    }
}
