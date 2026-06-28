package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class k13 extends oh0 {
    public static final String[] c = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy"};
    public final boolean b;

    public k13(String[] strArr, boolean z) {
        super(new lu(4), new j13(0), new ou(2), new lu(1), new lu(2), new lu(0), new pu(strArr != null ? (String[]) strArr.clone() : c));
        this.b = z;
    }

    public static void j(b40 b40Var, String str, String str2, int i) {
        b40Var.b(str);
        b40Var.b("=");
        if (str2 != null) {
            if (i <= 0) {
                b40Var.b(str2);
                return;
            }
            b40Var.a('\"');
            b40Var.b(str2);
            b40Var.a('\"');
        }
    }

    @Override // defpackage.oh0, defpackage.nh0
    public void a(ku kuVar, jh0 jh0Var) throws mh0 {
        w80.L(kuVar, "Cookie");
        String str = kuVar.n;
        if (str.indexOf(32) != -1) {
            throw new mh0(cm1.a("Cookie name may not contain blanks"));
        }
        if (str.startsWith("$")) {
            throw new mh0(cm1.a("Cookie name may not start with $"));
        }
        super.a(kuVar, jh0Var);
    }

    @Override // defpackage.nh0
    public final List c(ArrayList arrayList) {
        w80.I(arrayList, "List of cookies");
        if (arrayList.size() > 1) {
            ArrayList arrayList2 = new ArrayList(arrayList);
            Collections.sort(arrayList2, kh0.o);
            arrayList = arrayList2;
        }
        int i = 0;
        if (!this.b) {
            ArrayList arrayList3 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ku kuVar = (ku) obj;
                int i2 = kuVar.f173u;
                b40 b40Var = new b40(40);
                b40Var.b("Cookie: ");
                b40Var.b("$Version=");
                b40Var.b(Integer.toString(i2));
                b40Var.b("; ");
                i(b40Var, kuVar, i2);
                arrayList3.add(new cz(b40Var));
            }
            return arrayList3;
        }
        int size2 = arrayList.size();
        int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList.get(i4);
            i4++;
            ku kuVar2 = (ku) obj2;
            if (kuVar2.f173u < i3) {
                i3 = kuVar2.f173u;
            }
        }
        b40 b40Var2 = new b40(arrayList.size() * 40);
        b40Var2.b("Cookie");
        b40Var2.b(": ");
        b40Var2.b("$Version=");
        b40Var2.b(Integer.toString(i3));
        int size3 = arrayList.size();
        while (i < size3) {
            Object obj3 = arrayList.get(i);
            i++;
            b40Var2.b("; ");
            i(b40Var2, (ku) obj3, i3);
        }
        ArrayList arrayList4 = new ArrayList(1);
        arrayList4.add(new cz(b40Var2));
        return arrayList4;
    }

    @Override // defpackage.nh0
    public gj1 d() {
        return null;
    }

    @Override // defpackage.nh0
    public List e(gj1 gj1Var, jh0 jh0Var) throws q92 {
        w80.L(gj1Var, "Header");
        if (gj1Var.getName().equalsIgnoreCase("Set-Cookie")) {
            return h(gj1Var.a(), jh0Var);
        }
        throw new q92(cm1.a("Unrecognized cookie header '" + gj1Var.toString() + "'"));
    }

    @Override // defpackage.nh0
    public int f() {
        return 1;
    }

    public void i(b40 b40Var, ku kuVar, int i) {
        j(b40Var, kuVar.n, kuVar.p, i);
        if (kuVar.s != null && (kuVar instanceof ku) && kuVar.o.containsKey("path")) {
            b40Var.b("; ");
            j(b40Var, "$Path", kuVar.s, i);
        }
        if (kuVar.q != null && (kuVar instanceof ku) && kuVar.o.containsKey("domain")) {
            b40Var.b("; ");
            j(b40Var, "$Domain", kuVar.q, i);
        }
    }

    public String toString() {
        return "rfc2109";
    }

    public k13(boolean z, u80... u80VarArr) {
        super(u80VarArr);
        this.b = z;
    }
}
