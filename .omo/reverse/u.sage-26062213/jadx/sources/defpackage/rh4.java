package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rh4 {
    public static final rh4 p;
    public static final rh4 q;
    public static final rh4 r;
    public static final rh4 s;
    public static final /* synthetic */ rh4[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ t11 f298u;
    public final char n;
    public final char o;

    static {
        rh4 rh4Var = new rh4("OBJ", 0, '{', '}');
        p = rh4Var;
        rh4 rh4Var2 = new rh4("LIST", 1, '[', ']');
        q = rh4Var2;
        rh4 rh4Var3 = new rh4("MAP", 2, '{', '}');
        r = rh4Var3;
        rh4 rh4Var4 = new rh4("POLY_OBJ", 3, '[', ']');
        s = rh4Var4;
        rh4[] rh4VarArr = {rh4Var, rh4Var2, rh4Var3, rh4Var4};
        t = rh4VarArr;
        f298u = new t11(rh4VarArr);
    }

    public rh4(String str, int i, char c, char c2) {
        this.n = c;
        this.o = c2;
    }

    public static rh4 valueOf(String str) {
        return (rh4) Enum.valueOf(rh4.class, str);
    }

    public static rh4[] values() {
        return (rh4[]) t.clone();
    }
}
