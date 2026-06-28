package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b93 {
    public static final lc0 a = new lc0(new t52(20));
    public static final lc0 b = new lc0(new z82(24));
    public static final n93 c;
    public static final n93 d;

    static {
        long j = t70.f;
        c = new n93(true, Float.NaN, j, null, true);
        d = new n93(false, Float.NaN, j, null, true);
    }

    public static n93 a(float f, jl3 jl3Var, int i) {
        boolean z = (i & 1) != 0;
        float f2 = (i & 2) != 0 ? Float.NaN : f;
        long j = t70.f;
        if ((i & 8) != 0) {
            jl3Var = null;
        }
        jl3 jl3Var2 = jl3Var;
        return (cw0.b(f2, Float.NaN) && t70.c(j, j) && jl3Var2 == null) ? z ? c : d : new n93(z, f2, j, jl3Var2, true);
    }
}
