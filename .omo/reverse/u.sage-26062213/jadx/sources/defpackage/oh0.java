package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class oh0 implements nh0 {
    public final ConcurrentHashMap a;

    public oh0(u80... u80VarArr) {
        this.a = new ConcurrentHashMap(u80VarArr.length);
        for (u80 u80Var : u80VarArr) {
            this.a.put(u80Var.d(), u80Var);
        }
    }

    public static String g(jh0 jh0Var) {
        String str = jh0Var.c;
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf < 0) {
            return str;
        }
        if (iLastIndexOf == 0) {
            iLastIndexOf = 1;
        }
        return str.substring(0, iLastIndexOf);
    }

    @Override // defpackage.nh0
    public void a(ku kuVar, jh0 jh0Var) {
        w80.L(kuVar, "Cookie");
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((ih0) it.next()).a(kuVar, jh0Var);
        }
    }

    @Override // defpackage.nh0
    public boolean b(ku kuVar, jh0 jh0Var) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            if (!((ih0) it.next()).b(kuVar, jh0Var)) {
                return false;
            }
        }
        return true;
    }

    public ArrayList h(ru[] ruVarArr, jh0 jh0Var) {
        ArrayList arrayList = new ArrayList(ruVarArr.length);
        for (ru ruVar : ruVarArr) {
            String str = ruVar.n;
            String str2 = ruVar.o;
            if (str != null && !str.isEmpty()) {
                ku kuVar = new ku(str, str2);
                kuVar.s = g(jh0Var);
                kuVar.c(jh0Var.a);
                sh2[] sh2VarArr = (sh2[]) ruVar.p.clone();
                for (int length = sh2VarArr.length - 1; length >= 0; length--) {
                    sh2 sh2Var = sh2VarArr[length];
                    String lowerCase = sh2Var.getName().toLowerCase(Locale.ROOT);
                    kuVar.o.put(lowerCase, sh2Var.getValue());
                    ih0 ih0Var = (ih0) this.a.get(lowerCase);
                    if (ih0Var != null) {
                        ih0Var.c(kuVar, sh2Var.getValue());
                    }
                }
                arrayList.add(kuVar);
            }
        }
        return arrayList;
    }

    public oh0() {
        this.a = new ConcurrentHashMap(10);
    }
}
