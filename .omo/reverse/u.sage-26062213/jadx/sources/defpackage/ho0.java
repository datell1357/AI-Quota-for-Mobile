package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ho0 implements nh0 {
    public final m13 a;
    public final k13 b;
    public final py c;

    public ho0(String[] strArr, boolean z) {
        int i = 1;
        int i2 = 2;
        int i3 = 0;
        this.a = new m13(z, new ou(7), new ou(1), new ou(5), new ou(6), new lu(i), new lu(i2), new lu(i3), new ou(3), new ou(4));
        this.b = new k13(z, new lu(4), new ou(1), new ou(2), new lu(i), new lu(i2), new lu(i3));
        this.c = new py(new u80[]{new ou(0), new ou(1), new lu(i2), new lu(i3), new pu(strArr != null ? (String[]) strArr.clone() : new String[]{"EEE, dd-MMM-yy HH:mm:ss z"})});
    }

    @Override // defpackage.nh0
    public final void a(ku kuVar, jh0 jh0Var) throws mh0 {
        w80.L(kuVar, "Cookie");
        if (kuVar.f173u <= 0) {
            this.c.a(kuVar, jh0Var);
        } else if (kuVar instanceof ju) {
            this.a.a(kuVar, jh0Var);
        } else {
            this.b.a(kuVar, jh0Var);
        }
    }

    @Override // defpackage.nh0
    public final boolean b(ku kuVar, jh0 jh0Var) {
        return kuVar.f173u > 0 ? kuVar instanceof ju ? this.a.b(kuVar, jh0Var) : this.b.b(kuVar, jh0Var) : this.c.b(kuVar, jh0Var);
    }

    @Override // defpackage.nh0
    public final List c(ArrayList arrayList) {
        int size = arrayList.size();
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        boolean z = true;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ku kuVar = (ku) obj;
            if (!(kuVar instanceof ju)) {
                z = false;
            }
            if (kuVar.f173u < i) {
                i = kuVar.f173u;
            }
        }
        return i > 0 ? z ? this.a.c(arrayList) : this.b.c(arrayList) : this.c.c(arrayList);
    }

    @Override // defpackage.nh0
    public final gj1 d() {
        return null;
    }

    @Override // defpackage.nh0
    public final List e(gj1 gj1Var, jh0 jh0Var) throws q92 {
        b40 b40Var;
        ky0 ky0Var;
        w80.L(gj1Var, "Header");
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
            if (!"Set-Cookie2".equals(gj1Var.getName())) {
                return this.b.h(ruVarArrA, jh0Var);
            }
            m13 m13Var = this.a;
            m13Var.getClass();
            return m13Var.l(ruVarArrA, m13.k(jh0Var));
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
        return this.c.h(new ru[]{fl2.a(b40Var, ky0Var)}, jh0Var);
    }

    @Override // defpackage.nh0
    public final int f() {
        this.a.getClass();
        return 1;
    }

    public String toString() {
        return "default";
    }

    public ho0(m13 m13Var, k13 k13Var, py pyVar) {
        this.a = m13Var;
        this.b = k13Var;
        this.c = pyVar;
    }
}
