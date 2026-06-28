package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gq3 {
    public static final gq3 a;

    static {
        new v04(v04.a);
        a = new gq3();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gq3)) {
            return false;
        }
        r04 r04Var = r04.n;
        if (!r04Var.equals(r04Var)) {
            return false;
        }
        hq3 hq3Var = hq3.n;
        if (!hq3Var.equals(hq3Var)) {
            return false;
        }
        s04 s04Var = s04.b;
        return s04Var.equals(s04Var);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{r04.n, hq3.n, s04.b});
    }

    public final String toString() {
        return "SpanContext{traceId=" + r04.n + ", spanId=" + hq3.n + ", traceOptions=" + s04.b + "}";
    }
}
