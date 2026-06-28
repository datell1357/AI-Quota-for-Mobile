package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ci3 extends se0 {
    public static ai3 J(Iterator it) {
        it.getClass();
        return new af0(new s70(2, it));
    }

    public static ai3 K(Object obj, pe1 pe1Var) {
        return obj == null ? j01.a : new yr0(new vc3(3, obj), pe1Var, 2);
    }

    public static String L(ai3 ai3Var, String str) {
        ai3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i = 0;
        for (Object obj : ai3Var) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) str);
            }
            kt4.n(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static List M(ai3 ai3Var) {
        Iterator it = ai3Var.iterator();
        if (!it.hasNext()) {
            return g01.n;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return tv4.E(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
