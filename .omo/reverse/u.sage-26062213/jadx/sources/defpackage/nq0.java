package defpackage;

import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class nq0 {
    public Object a;
    public final Object b;

    public nq0(on4 on4Var) {
        this.a = new up(0, this);
        this.b = new tp(this, on4Var);
    }

    public void a() {
        pq3 pq3Var = (pq3) this.a;
        s20 s20Var = (s20) this.b;
        HashSet hashSet = pq3Var.e;
        if (hashSet.remove(s20Var) && hashSet.isEmpty()) {
            pq3Var.b();
        }
    }

    public abstract int[] b(int i);

    public int[] c(int i, int i2) {
        if (i < 0 || i2 < 0 || i == i2) {
            return null;
        }
        int[] iArr = (int[]) this.b;
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public String d() {
        String str = (String) this.a;
        if (str != null) {
            return str;
        }
        nt1.X("text");
        throw null;
    }

    public boolean e() {
        return ((up) this.a).b && ((tp) this.b).a();
    }

    public boolean f() {
        pq3 pq3Var = (pq3) this.a;
        int iF = xw1.f(pq3Var.c.mView);
        int i = pq3Var.a;
        if (iF != i) {
            return (iF == 2 || i == 2) ? false : true;
        }
        return true;
    }

    public abstract void h();

    public abstract int[] k(int i);

    public /* synthetic */ nq0(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public nq0() {
        this.b = new int[2];
    }

    public void g() {
    }

    public void j() {
    }

    public void i(sp spVar) {
    }
}
