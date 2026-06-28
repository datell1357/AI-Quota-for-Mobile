package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class we0 {
    public static final tf2 a;

    static {
        w83 w83Var = e80.e;
        int i = w83Var.c;
        te0 te0Var = new te0(w83Var, w83Var, 1);
        int i2 = w83Var.c;
        ko2 ko2Var = e80.x;
        int i3 = (ko2Var.c << 6) | i2;
        ve0 ve0Var = new ve0(w83Var, ko2Var, 0);
        int i4 = (i2 << 6) | ko2Var.c;
        ve0 ve0Var2 = new ve0(ko2Var, w83Var, 0);
        tf2 tf2Var = is1.a;
        tf2 tf2Var2 = new tf2();
        tf2Var2.h(i | (i << 6), te0Var);
        tf2Var2.h(i3, ve0Var);
        tf2Var2.h(i4, ve0Var2);
        a = tf2Var2;
    }
}
