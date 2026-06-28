package defpackage;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class py extends oh0 {
    public static final String[] c = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z"};
    public final /* synthetic */ int b;

    /* JADX WARN: Illegal instructions before constructor call */
    public py(String[] strArr, int i) {
        this.b = i;
        int i2 = 3;
        int i3 = 2;
        int i4 = 1;
        int i5 = 0;
        switch (i) {
            case 2:
                super(new ou(1), new el2(0), new lu(i3), new lu(i5), new pu(strArr != null ? (String[]) strArr.clone() : new String[]{"EEE, dd-MMM-yy HH:mm:ss z"}));
                break;
            default:
                super(new lu(i2), new ou(0), new ou(1), new lu(i4), new lu(i3), new lu(i5), new pu(strArr != null ? (String[]) strArr.clone() : c));
                break;
        }
    }

    @Override // defpackage.oh0, defpackage.nh0
    public boolean b(ku kuVar, jh0 jh0Var) {
        switch (this.b) {
            case 1:
                return false;
            default:
                return super.b(kuVar, jh0Var);
        }
    }

    @Override // defpackage.nh0
    public final List c(ArrayList arrayList) {
        switch (this.b) {
            case 0:
                w80.I(arrayList, "List of cookies");
                b40 b40Var = new b40(arrayList.size() * 20);
                b40Var.b("Cookie");
                b40Var.b(": ");
                for (int i = 0; i < arrayList.size(); i++) {
                    ku kuVar = (ku) arrayList.get(i);
                    if (i > 0) {
                        b40Var.b("; ");
                    }
                    String str = kuVar.n;
                    String str2 = kuVar.p;
                    if (kuVar.f173u <= 0 || (str2 != null && str2.startsWith("\"") && str2.endsWith("\""))) {
                        b40Var.b(str);
                        b40Var.b("=");
                        if (str2 != null) {
                            b40Var.b(str2);
                        }
                    } else {
                        w80.L(str, "Name");
                        int length = str.length();
                        if (str2 != null) {
                            length += str2.length() + 3;
                        }
                        b40Var.e(length);
                        b40Var.b(str);
                        if (str2 != null) {
                            b40Var.a('=');
                            bi4.p(b40Var, str2, false);
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add(new cz(b40Var));
                return arrayList2;
            case 1:
                return Collections.EMPTY_LIST;
            default:
                w80.I(arrayList, "List of cookies");
                b40 b40Var2 = new b40(arrayList.size() * 20);
                b40Var2.b("Cookie");
                b40Var2.b(": ");
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ku kuVar2 = (ku) arrayList.get(i2);
                    if (i2 > 0) {
                        b40Var2.b("; ");
                    }
                    b40Var2.b(kuVar2.n);
                    String str3 = kuVar2.p;
                    if (str3 != null) {
                        b40Var2.b("=");
                        b40Var2.b(str3);
                    }
                }
                ArrayList arrayList3 = new ArrayList(1);
                arrayList3.add(new cz(b40Var2));
                return arrayList3;
        }
    }

    @Override // defpackage.nh0
    public final gj1 d() {
        switch (this.b) {
        }
        return null;
    }

    @Override // defpackage.nh0
    public final List e(gj1 gj1Var, jh0 jh0Var) throws q92 {
        b40 b40Var;
        ky0 ky0Var;
        b40 b40Var2;
        ky0 ky0Var2;
        switch (this.b) {
            case 0:
                w80.L(gj1Var, "Header");
                if (!gj1Var.getName().equalsIgnoreCase("Set-Cookie")) {
                    throw new q92(cm1.a("Unrecognized cookie header '" + gj1Var.toString() + "'"));
                }
                ru[] ruVarArrA = gj1Var.a();
                boolean z = false;
                boolean z2 = false;
                for (ru ruVar : ruVarArrA) {
                    if (ruVar.a("version") != null) {
                        z2 = true;
                    }
                    if (ruVar.a("expires") != null) {
                        z = true;
                    }
                }
                if (!z && z2) {
                    return h(ruVarArrA, jh0Var);
                }
                BitSet bitSet = fl2.a;
                if (gj1Var instanceof cz) {
                    cz czVar = (cz) gj1Var;
                    b40Var = czVar.o;
                    ky0Var = new ky0(czVar.p, b40Var.o);
                } else {
                    String value = gj1Var.getValue();
                    if (value == null) {
                        throw new q92(cm1.a("Header value is null"));
                    }
                    b40Var = new b40(value.length());
                    b40Var.b(value);
                    ky0Var = new ky0(0, b40Var.o);
                }
                ru ruVarA = fl2.a(b40Var, ky0Var);
                String str = ruVarA.n;
                String str2 = ruVarA.o;
                if (str == null || str.isEmpty()) {
                    throw new q92(cm1.a("Cookie name may not be empty"));
                }
                ku kuVar = new ku(str, str2);
                kuVar.s = oh0.g(jh0Var);
                kuVar.c(jh0Var.a);
                sh2[] sh2VarArr = (sh2[]) ruVarA.p.clone();
                for (int length = sh2VarArr.length - 1; length >= 0; length--) {
                    sh2 sh2Var = sh2VarArr[length];
                    String lowerCase = sh2Var.getName().toLowerCase(Locale.ROOT);
                    kuVar.o.put(lowerCase, sh2Var.getValue());
                    ih0 ih0Var = (ih0) this.a.get(lowerCase);
                    if (ih0Var != null) {
                        ih0Var.c(kuVar, sh2Var.getValue());
                    }
                }
                if (z) {
                    kuVar.f173u = 0;
                }
                return Collections.singletonList(kuVar);
            case 1:
                return Collections.EMPTY_LIST;
            default:
                w80.L(gj1Var, "Header");
                if (!gj1Var.getName().equalsIgnoreCase("Set-Cookie")) {
                    throw new q92(cm1.a("Unrecognized cookie header '" + gj1Var.toString() + "'"));
                }
                BitSet bitSet2 = fl2.a;
                if (gj1Var instanceof cz) {
                    cz czVar2 = (cz) gj1Var;
                    b40Var2 = czVar2.o;
                    ky0Var2 = new ky0(czVar2.p, b40Var2.o);
                } else {
                    String value2 = gj1Var.getValue();
                    if (value2 == null) {
                        throw new q92(cm1.a("Header value is null"));
                    }
                    b40Var2 = new b40(value2.length());
                    b40Var2.b(value2);
                    ky0Var2 = new ky0(0, b40Var2.o);
                }
                return h(new ru[]{fl2.a(b40Var2, ky0Var2)}, jh0Var);
        }
    }

    @Override // defpackage.nh0
    public final int f() {
        switch (this.b) {
        }
        return 0;
    }

    public String toString() {
        switch (this.b) {
            case 0:
                return "compatibility";
            case 1:
            default:
                return super.toString();
            case 2:
                return "netscape";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ py(u80[] u80VarArr) {
        super(u80VarArr);
        this.b = 2;
    }
}
