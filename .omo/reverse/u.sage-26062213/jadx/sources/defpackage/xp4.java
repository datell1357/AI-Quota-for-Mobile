package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class xp4 {
    public static final ka5 a;
    public static volatile String b;
    public static final ra3 c;

    static {
        wp4 wp4Var = wp4.o;
        int i = np1.p;
        va5 va5Var = new va5(wp4Var, true, f53.w);
        sb5 sb5Var = new sb5();
        sb5Var.a = va5Var;
        c = new ra3(23, sb5Var);
        a = new ka5("__phenotype_server_token", sb5Var, "");
        b = null;
    }

    public static String a() {
        return (String) a.get();
    }
}
