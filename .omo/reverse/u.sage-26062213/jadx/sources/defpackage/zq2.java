package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zq2 {
    public final int a;
    public final int b;

    public /* synthetic */ zq2(int i, int i2, int i3) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }

    public abstract void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var);

    public vf1 b(e50 e50Var) {
        return null;
    }

    public final String toString() {
        String strC = y33.a(getClass()).c();
        return strC == null ? "" : strC;
    }

    public zq2(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}
