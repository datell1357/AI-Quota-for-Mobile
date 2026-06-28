package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m13 extends k13 {
    public m13(String[] strArr, boolean z) {
        super(z, new ou(7), new j13(1), new ou(5), new ou(6), new lu(1), new lu(2), new lu(0), new pu(strArr != null ? (String[]) strArr.clone() : k13.c), new ou(3), new ou(4));
    }

    public static jh0 k(jh0 jh0Var) {
        String str = jh0Var.a;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '.' || cCharAt == ':') {
                return jh0Var;
            }
        }
        return new jh0(str.concat(".local"), jh0Var.c, jh0Var.b, jh0Var.d);
    }

    @Override // defpackage.k13, defpackage.oh0, defpackage.nh0
    public final void a(ku kuVar, jh0 jh0Var) throws mh0 {
        w80.L(kuVar, "Cookie");
        super.a(kuVar, k(jh0Var));
    }

    @Override // defpackage.oh0, defpackage.nh0
    public final boolean b(ku kuVar, jh0 jh0Var) {
        return super.b(kuVar, k(jh0Var));
    }

    @Override // defpackage.k13, defpackage.nh0
    public final gj1 d() {
        b40 b40Var = new b40(40);
        b40Var.b("Cookie2");
        b40Var.b(": ");
        b40Var.b("$Version=");
        b40Var.b(Integer.toString(1));
        return new cz(b40Var);
    }

    @Override // defpackage.k13, defpackage.nh0
    public final List e(gj1 gj1Var, jh0 jh0Var) throws q92 {
        w80.L(gj1Var, "Header");
        if (gj1Var.getName().equalsIgnoreCase("Set-Cookie2")) {
            return l(gj1Var.a(), k(jh0Var));
        }
        throw new q92(cm1.a("Unrecognized cookie header '" + gj1Var.toString() + "'"));
    }

    @Override // defpackage.k13, defpackage.nh0
    public final int f() {
        return 1;
    }

    @Override // defpackage.oh0
    public final ArrayList h(ru[] ruVarArr, jh0 jh0Var) {
        return l(ruVarArr, k(jh0Var));
    }

    @Override // defpackage.k13
    public final void i(b40 b40Var, ku kuVar, int i) {
        String str;
        int[] iArrA;
        super.i(b40Var, kuVar, i);
        if (!(kuVar instanceof ku) || (str = (String) kuVar.o.get("port")) == null) {
            return;
        }
        b40Var.b("; $Port");
        b40Var.b("=\"");
        if (!str.trim().isEmpty() && (iArrA = kuVar.a()) != null) {
            int length = iArrA.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 > 0) {
                    b40Var.b(",");
                }
                b40Var.b(Integer.toString(iArrA[i2]));
            }
        }
        b40Var.b("\"");
    }

    public final ArrayList l(ru[] ruVarArr, jh0 jh0Var) throws q92 {
        ArrayList arrayList = new ArrayList(ruVarArr.length);
        for (ru ruVar : ruVarArr) {
            String str = ruVar.n;
            String str2 = ruVar.o;
            if (str == null || str.isEmpty()) {
                throw new q92(cm1.a("Cookie name may not be empty"));
            }
            ju juVar = new ju(str, str2);
            juVar.s = oh0.g(jh0Var);
            juVar.c(jh0Var.a);
            juVar.w = new int[]{jh0Var.b};
            sh2[] sh2VarArr = (sh2[]) ruVar.p.clone();
            HashMap map = new HashMap(sh2VarArr.length);
            for (int length = sh2VarArr.length - 1; length >= 0; length--) {
                sh2 sh2Var = sh2VarArr[length];
                map.put(sh2Var.getName().toLowerCase(Locale.ROOT), sh2Var);
            }
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                sh2 sh2Var2 = (sh2) ((Map.Entry) it.next()).getValue();
                String lowerCase = sh2Var2.getName().toLowerCase(Locale.ROOT);
                juVar.o.put(lowerCase, sh2Var2.getValue());
                ih0 ih0Var = (ih0) this.a.get(lowerCase);
                if (ih0Var != null) {
                    ih0Var.c(juVar, sh2Var2.getValue());
                }
            }
            arrayList.add(juVar);
        }
        return arrayList;
    }

    @Override // defpackage.k13
    public final String toString() {
        return "rfc2965";
    }
}
