package defpackage;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class n13 implements nh0 {
    public static final BitSet d = qv3.k(61, 59);
    public static final BitSet e = qv3.k(59);
    public static final BitSet f = qv3.k(32, 34, 44, 59, 92);
    public final ih0[] a;
    public final ConcurrentHashMap b;
    public final qv3 c;

    public n13(u80... u80VarArr) {
        this.a = (ih0[]) u80VarArr.clone();
        this.b = new ConcurrentHashMap(u80VarArr.length);
        for (u80 u80Var : u80VarArr) {
            this.b.put(u80Var.d().toLowerCase(Locale.ROOT), u80Var);
        }
        this.c = qv3.p;
    }

    @Override // defpackage.nh0
    public final void a(ku kuVar, jh0 jh0Var) {
        w80.L(kuVar, "Cookie");
        for (ih0 ih0Var : this.a) {
            ih0Var.a(kuVar, jh0Var);
        }
    }

    @Override // defpackage.nh0
    public final boolean b(ku kuVar, jh0 jh0Var) {
        for (ih0 ih0Var : this.a) {
            if (!ih0Var.b(kuVar, jh0Var)) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.nh0
    public final List c(ArrayList arrayList) {
        w80.I(arrayList, "List of cookies");
        if (arrayList.size() > 1) {
            ArrayList arrayList2 = new ArrayList(arrayList);
            Collections.sort(arrayList2, lh0.o);
            arrayList = arrayList2;
        }
        b40 b40Var = new b40(arrayList.size() * 20);
        b40Var.b("Cookie");
        b40Var.b(": ");
        for (int i = 0; i < arrayList.size(); i++) {
            ku kuVar = (ku) arrayList.get(i);
            if (i > 0) {
                b40Var.a(';');
                b40Var.a(' ');
            }
            b40Var.b(kuVar.n);
            String str = kuVar.p;
            if (str != null) {
                b40Var.a('=');
                int i2 = 0;
                while (true) {
                    if (i2 >= str.length()) {
                        b40Var.b(str);
                        break;
                    }
                    if (f.get(str.charAt(i2))) {
                        b40Var.a('\"');
                        for (int i3 = 0; i3 < str.length(); i3++) {
                            char cCharAt = str.charAt(i3);
                            if (cCharAt == '\"' || cCharAt == '\\') {
                                b40Var.a('\\');
                            }
                            b40Var.a(cCharAt);
                        }
                        b40Var.a('\"');
                    } else {
                        i2++;
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList(1);
        arrayList3.add(new cz(b40Var));
        return arrayList3;
    }

    @Override // defpackage.nh0
    public final gj1 d() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00da  */
    @Override // defpackage.nh0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List e(defpackage.gj1 r10, defpackage.jh0 r11) throws defpackage.q92 {
        /*
            Method dump skipped, instruction units count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n13.e(gj1, jh0):java.util.List");
    }

    @Override // defpackage.nh0
    public final int f() {
        return 0;
    }
}
