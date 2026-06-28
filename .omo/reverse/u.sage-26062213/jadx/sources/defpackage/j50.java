package defpackage;

import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j50 {
    public final String a;
    public final ArrayList b = new ArrayList();
    public final HashSet c = new HashSet();
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();

    public j50(String str) {
        this.a = str;
    }

    public static void a(j50 j50Var, String str, gi3 gi3Var) {
        j50Var.getClass();
        gi3Var.getClass();
        if (!j50Var.c.add(str)) {
            StringBuilder sbA = di0.A("Element with name '", str, "' is already registered in ");
            sbA.append(j50Var.a);
            throw new IllegalArgumentException(sbA.toString().toString());
        }
        j50Var.b.add(str);
        j50Var.d.add(gi3Var);
        j50Var.e.add(g01.n);
        j50Var.f.add(false);
    }
}
