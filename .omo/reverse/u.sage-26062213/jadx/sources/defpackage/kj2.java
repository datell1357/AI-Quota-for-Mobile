package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kj2 {
    public final ij2 a;
    public boolean b;
    public boolean c;
    public int d;
    public String e;
    public boolean f;
    public boolean g;

    public kj2() {
        ij2 ij2Var = new ij2();
        ij2Var.a = -1;
        ij2Var.e = -1;
        ij2Var.f = -1;
        this.a = ij2Var;
        this.d = -1;
    }

    public final void a(int i) {
        this.d = i;
        this.f = false;
    }

    public final void b(String str) {
        if (str != null) {
            if (zs3.I0(str)) {
                k21.f("Cannot pop up to an empty route");
            } else {
                this.e = str;
                this.f = false;
            }
        }
    }
}
