package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class et1 extends s60 implements ld0 {
    public final j60 o;
    public final ql1 p;
    public final zm1 q;
    public final y43 r;
    public final y43 s;
    public final mu t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final zk0 f90u;
    public final ArrayList w;
    public final Log n = LogFactory.getLog(et1.class);
    public final v63 v = v63.D;

    public et1(j60 j60Var, ql1 ql1Var, zm1 zm1Var, y43 y43Var, y43 y43Var2, mu muVar, zk0 zk0Var, ArrayList arrayList) {
        this.o = j60Var;
        this.p = ql1Var;
        this.q = zm1Var;
        this.r = y43Var;
        this.s = y43Var2;
        this.t = muVar;
        this.f90u = zk0Var;
        this.w = arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList arrayList = this.w;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                try {
                    ((Closeable) obj).close();
                } catch (IOException e) {
                    this.n.error(e.getMessage(), e);
                }
            }
        }
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
    @Override // defpackage.s60
    public final t60 doExecute(em1 em1Var, om1 om1Var, ul1 ul1Var) throws o60 {
        um1 um1Var;
        w80.L(om1Var, "HTTP request");
        j0 j0Var = om1Var instanceof j0 ? (j0) om1Var : null;
        try {
            if (om1Var instanceof zl1) {
                zl1 zl1Var = (zl1) om1Var;
                tm1 tm1Var = new tm1(em1Var, zl1Var);
                tm1Var.t = zl1Var.getEntity();
                um1Var = tm1Var;
            } else {
                um1Var = new um1(em1Var, om1Var);
            }
            if (ul1Var == null) {
                ul1Var = new vu();
            }
            rl1 rl1VarC = rl1.c(ul1Var);
            v63 config = om1Var instanceof ld0 ? ((ld0) om1Var).getConfig() : null;
            if (config == null) {
                km1 params = om1Var.getParams();
                boolean z = params instanceof f1;
                v63 v63Var = this.v;
                if (!z || !((f1) params).f().isEmpty()) {
                    config = dm0.x(params, v63Var);
                }
            }
            if (config != null) {
                rl1VarC.z(config, "http.request-config");
            }
            j(rl1VarC);
            if (em1Var == null) {
                em1Var = (em1) um1Var.getParams().c("http.default-host");
            }
            return this.o.a(this.q.f(em1Var, um1Var, rl1VarC), um1Var, rl1VarC, j0Var);
        } catch (cm1 e) {
            throw new o60(e);
        }
    }

    @Override // defpackage.ld0
    public final v63 getConfig() {
        return this.v;
    }

    @Override // defpackage.nl1
    public final g60 getConnectionManager() {
        return new dh1(this);
    }

    @Override // defpackage.nl1
    public final km1 getParams() {
        throw new UnsupportedOperationException();
    }

    public final void j(rl1 rl1Var) {
        ul1 ul1Var = rl1Var.n;
        if (ul1Var.b("http.auth.target-scope") == null) {
            rl1Var.z(new tj(), "http.auth.target-scope");
        }
        if (ul1Var.b("http.auth.proxy-scope") == null) {
            rl1Var.z(new tj(), "http.auth.proxy-scope");
        }
        if (ul1Var.b("http.authscheme-registry") == null) {
            rl1Var.z(this.s, "http.authscheme-registry");
        }
        if (ul1Var.b("http.cookiespec-registry") == null) {
            rl1Var.z(this.r, "http.cookiespec-registry");
        }
        if (ul1Var.b("http.cookie-store") == null) {
            rl1Var.z(this.t, "http.cookie-store");
        }
        if (ul1Var.b("http.auth.credentials-provider") == null) {
            rl1Var.z(this.f90u, "http.auth.credentials-provider");
        }
        if (ul1Var.b("http.request-config") == null) {
            rl1Var.z(this.v, "http.request-config");
        }
    }
}
