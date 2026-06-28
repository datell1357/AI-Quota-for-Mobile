package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iv1 implements h34 {
    public static final hv1 p;
    public final gw4 n;
    public final ConcurrentHashMap o = new ConcurrentHashMap();

    static {
        int i = 0;
        p = new hv1(i);
        new hv1(i);
    }

    public iv1(gw4 gw4Var) {
        this.n = gw4Var;
    }

    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        gv1 gv1Var = (gv1) q44Var.a.getAnnotation(gv1.class);
        if (gv1Var == null) {
            return null;
        }
        return b(this.n, pi1Var, q44Var, gv1Var, true);
    }

    public final g34 b(gw4 gw4Var, pi1 pi1Var, q44 q44Var, gv1 gv1Var, boolean z) {
        g34 g34VarA;
        Object objD = gw4Var.y(new q44(gv1Var.value()), true).d();
        boolean zNullSafe = gv1Var.nullSafe();
        if (objD instanceof g34) {
            g34VarA = (g34) objD;
        } else {
            if (!(objD instanceof h34)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objD.getClass().getName() + " as a @JsonAdapter for " + gg4.U(q44Var.b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            h34 h34Var = (h34) objD;
            if (z) {
                h34 h34Var2 = (h34) this.o.putIfAbsent(q44Var.a, h34Var);
                if (h34Var2 != null) {
                    h34Var = h34Var2;
                }
            }
            g34VarA = h34Var.a(pi1Var, q44Var);
        }
        return (g34VarA == null || !zNullSafe) ? g34VarA : g34VarA.a();
    }
}
