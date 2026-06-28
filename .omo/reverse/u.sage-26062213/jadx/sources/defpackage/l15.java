package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class l15 {
    public static final Class a;
    public static final r25 b;
    public static final r25 c;

    static {
        Class<?> cls;
        Class<?> cls2;
        r25 r25Var = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                r25Var = (r25) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        b = r25Var;
        c = new r25();
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
    public static void a(r25 r25Var, Object obj, Object obj2) {
        r25Var.getClass();
        sy4 sy4Var = (sy4) obj;
        p25 p25Var = sy4Var.zzc;
        p25 p25Var2 = ((sy4) obj2).zzc;
        p25 p25Var3 = p25.e;
        if (!p25Var3.equals(p25Var2)) {
            if (p25Var3.equals(p25Var)) {
                int i = p25Var.a + p25Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(p25Var.b, i);
                System.arraycopy(p25Var2.b, 0, iArrCopyOf, p25Var.a, p25Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(p25Var.c, i);
                System.arraycopy(p25Var2.c, 0, objArrCopyOf, p25Var.a, p25Var2.a);
                p25Var = new p25(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                p25Var.getClass();
                if (!p25Var2.equals(p25Var3)) {
                    if (!p25Var.d) {
                        p61.b();
                        return;
                    }
                    int i2 = p25Var.a + p25Var2.a;
                    p25Var.c(i2);
                    System.arraycopy(p25Var2.b, 0, p25Var.b, p25Var.a, p25Var2.a);
                    System.arraycopy(p25Var2.c, 0, p25Var.c, p25Var.a, p25Var2.a);
                    p25Var.a = i2;
                }
            }
        }
        sy4Var.zzc = p25Var;
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
