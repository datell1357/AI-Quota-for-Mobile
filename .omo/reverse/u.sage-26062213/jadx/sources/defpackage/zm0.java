package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zm0 extends bv3 implements pe1 {
    public final /* synthetic */ int r;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f440u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zm0(Object obj, dh0 dh0Var, int i) {
        super(1, dh0Var);
        this.r = i;
        this.f440u = obj;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.f440u;
        dh0 dh0Var = (dh0) obj;
        switch (i) {
            case 0:
                return new zm0((fn0) obj2, dh0Var, 0).q(t64Var);
            default:
                return new zm0((j51) obj2, dh0Var, 1).q(t64Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
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
    @Override // defpackage.dr
    public final Object q(Object obj) throws Exception {
        Throwable th;
        sr3 x13Var;
        Throwable th2;
        FileInputStream fileInputStream;
        int i = this.r;
        ri0 ri0Var = ri0.n;
        Object obj2 = this.f440u;
        switch (i) {
            case 0:
                fn0 fn0Var = (fn0) obj2;
                int i2 = this.s;
                try {
                } catch (Throwable th3) {
                    vs1 vs1VarI = fn0Var.i();
                    this.t = th3;
                    this.s = 2;
                    Object objB = vs1VarI.b(this);
                    if (objB == ri0Var) {
                        return ri0Var;
                    }
                    obj = objB;
                    th = th3;
                }
                if (i2 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    obj = fn0.h(fn0Var, true, this);
                    if (obj == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            k21.n("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        th = (Throwable) this.t;
                        gg4.T(obj);
                        x13Var = new x13(th, ((Number) obj).intValue());
                        return new js2(x13Var, Boolean.TRUE);
                    }
                    gg4.T(obj);
                }
                x13Var = (sr3) obj;
                return new js2(x13Var, Boolean.TRUE);
            default:
                j51 j51Var = (j51) obj2;
                ?? r0 = this.s;
                try {
                    try {
                        try {
                        } catch (Throwable th4) {
                            try {
                                throw th4;
                            } catch (Throwable th5) {
                                fl4.j(r0, th4);
                                throw th5;
                            }
                        }
                    } catch (FileNotFoundException unused) {
                        File file = j51Var.a;
                        oi3 oi3Var = j51Var.b;
                        if (!file.exists()) {
                            return oi3Var.c();
                        }
                        FileInputStream fileInputStream2 = new FileInputStream(j51Var.a);
                        try {
                            this.t = fileInputStream2;
                            this.s = 2;
                            Object objK = oi3Var.k(fileInputStream2);
                            if (objK == ri0Var) {
                                return ri0Var;
                            }
                            obj = objK;
                            fileInputStream = fileInputStream2;
                            fl4.j(fileInputStream, null);
                            return obj;
                        } catch (Throwable th6) {
                            th2 = th6;
                            fileInputStream = fileInputStream2;
                            try {
                                throw th2;
                            } catch (Throwable th7) {
                                fl4.j(fileInputStream, th2);
                                throw th7;
                            }
                        }
                    }
                    if (r0 == 0) {
                        gg4.T(obj);
                        FileInputStream fileInputStream3 = new FileInputStream(j51Var.a);
                        oi3 oi3Var2 = j51Var.b;
                        this.t = fileInputStream3;
                        this.s = 1;
                        obj = oi3Var2.k(fileInputStream3);
                        r0 = fileInputStream3;
                        if (obj == ri0Var) {
                            return ri0Var;
                        }
                    } else {
                        if (r0 != 1) {
                            if (r0 != 2) {
                                k21.n("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            fileInputStream = (FileInputStream) this.t;
                            try {
                                gg4.T(obj);
                                fl4.j(fileInputStream, null);
                                return obj;
                            } catch (Throwable th8) {
                                th2 = th8;
                                throw th2;
                            }
                        }
                        FileInputStream fileInputStream4 = (FileInputStream) this.t;
                        gg4.T(obj);
                        r0 = fileInputStream4;
                    }
                    fl4.j(r0, null);
                    return obj;
                } catch (Exception e) {
                    if (e instanceof FileNotFoundException) {
                        throw mt1.a0(j51Var.a.getParent(), (FileNotFoundException) e);
                    }
                    throw e;
                }
        }
    }
}
