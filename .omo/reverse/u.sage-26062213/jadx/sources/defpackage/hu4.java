package defpackage;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class hu4 implements fd5 {
    public static void b(int i, int i2) {
        String strB;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strB = lu4.b("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    k21.f(di0.q(i2, "negative size: "));
                    return;
                }
                strB = lu4.b("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strB);
        }
    }

    public static final InputStream c(ed5 ed5Var) {
        pd5 pd5VarA = ed5Var.a.a(ed5Var.d);
        ArrayList arrayList = new ArrayList();
        arrayList.add(pd5VarA);
        ArrayList arrayList2 = ed5Var.c;
        if (!arrayList2.isEmpty()) {
            int i = cd5.o;
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                mk0.b();
                return null;
            }
            cd5 cd5Var = !arrayList3.isEmpty() ? new cd5(pd5VarA, arrayList3) : null;
            if (cd5Var != null) {
                arrayList.add(cd5Var);
            }
        }
        Iterator it2 = ed5Var.b.iterator();
        if (!it2.hasNext()) {
            Collections.reverse(arrayList);
            return (InputStream) arrayList.get(0);
        }
        if (it2.next() != null) {
            mk0.b();
            return null;
        }
        throw null;
    }

    public static void d(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? e(i, "start index", i3) : (i2 < 0 || i2 > i3) ? e(i2, "end index", i3) : lu4.b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static String e(int i, String str, int i2) {
        if (i < 0) {
            return lu4.b("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return lu4.b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        k21.f(di0.q(i2, "negative size: "));
        return null;
    }
}
