package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zv1 {
    public static final wq1 a = k75.c(ys3.a, "kotlinx.serialization.json.JsonUnquotedLiteral");

    public static final tw1 a(xv1 xv1Var) {
        tw1 tw1Var = xv1Var instanceof tw1 ? (tw1) xv1Var : null;
        if (tw1Var != null) {
            return tw1Var;
        }
        throw new IllegalArgumentException("Element " + y33.a(xv1Var.getClass()) + " is not a JsonPrimitive");
    }
}
