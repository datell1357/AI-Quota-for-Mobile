package defpackage;

import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h90 {
    public String a = null;
    public final HashSet b;
    public final HashSet c;
    public int d;
    public int e;
    public aa0 f;
    public final HashSet g;

    public h90(Class cls, Class[] clsArr) {
        HashSet hashSet = new HashSet();
        this.b = hashSet;
        this.c = new HashSet();
        this.d = 0;
        this.e = 0;
        this.g = new HashSet();
        hashSet.add(z03.a(cls));
        for (Class cls2 : clsArr) {
            gg4.m(cls2, "Null interface");
            this.b.add(z03.a(cls2));
        }
    }

    public final void a(fs0 fs0Var) {
        if (this.b.contains(fs0Var.a)) {
            k21.f("Components are not allowed to depend on interfaces they themselves provide.");
        } else {
            this.c.add(fs0Var);
        }
    }

    public final i90 b() {
        if (this.f != null) {
            return new i90(this.a, new HashSet(this.b), new HashSet(this.c), this.d, this.e, this.f, this.g);
        }
        k21.n("Missing required property: factory.");
        return null;
    }

    public final void c() {
        if (this.d == 0) {
            this.d = 2;
        } else {
            k21.n("Instantiation type has already been set.");
        }
    }

    public h90(z03 z03Var, z03[] z03VarArr) {
        HashSet hashSet = new HashSet();
        this.b = hashSet;
        this.c = new HashSet();
        this.d = 0;
        this.e = 0;
        this.g = new HashSet();
        hashSet.add(z03Var);
        for (z03 z03Var2 : z03VarArr) {
            gg4.m(z03Var2, "Null interface");
        }
        Collections.addAll(this.b, z03VarArr);
    }
}
