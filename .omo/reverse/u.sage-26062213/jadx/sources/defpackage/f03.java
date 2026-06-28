package defpackage;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.EnumSet;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f03 implements j60 {
    public final Log a = LogFactory.getLog(f03.class);
    public final m92 b;
    public final fp1 c;

    public f03(m92 m92Var, fp1 fp1Var) {
        this.b = m92Var;
        this.c = fp1Var;
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
    @Override // defpackage.j60
    public final t60 a(ym1 ym1Var, um1 um1Var, rl1 rl1Var, j0 j0Var) throws cm1, IOException {
        URI uriCreate;
        URI uriD;
        String userInfo;
        w80.L(ym1Var, "HTTP route");
        em1 em1Var = ym1Var.n;
        om1 om1Var = um1Var.n;
        if (om1Var instanceof an1) {
            uriCreate = ((an1) om1Var).getURI();
        } else {
            String str = ((hv) om1Var.getRequestLine()).p;
            try {
                uriCreate = URI.create(str);
            } catch (IllegalArgumentException e) {
                if (this.a.isDebugEnabled()) {
                    this.a.debug("Unable to parse '" + str + "' as a valid URI; request URI and Host header may be inconsistent", e);
                }
                uriCreate = null;
            }
        }
        um1Var.s = uriCreate;
        um1Var.q = null;
        boolean z = rl1Var.d().C;
        URI uri = um1Var.s;
        if (uri != null) {
            try {
                EnumSet enumSet = z54.b;
                EnumSet enumSet2 = z54.d;
                if (ym1Var.e() == null || ym1Var.c()) {
                    if (uri.isAbsolute()) {
                        if (z) {
                            enumSet = enumSet2;
                        }
                        uriD = z54.e(uri, null, enumSet);
                    } else {
                        uriD = z54.d(uri);
                    }
                } else if (uri.isAbsolute()) {
                    uriD = z54.d(uri);
                } else {
                    if (z) {
                        enumSet = enumSet2;
                    }
                    uriD = z54.e(uri, em1Var, enumSet);
                }
                um1Var.s = uriD;
                um1Var.q = null;
            } catch (URISyntaxException e2) {
                throw new e03("Invalid URI: " + uri, e2);
            }
        }
        em1 em1Var2 = (em1) um1Var.getParams().c("http.virtual-host");
        if (em1Var2 != null && em1Var2.p == -1) {
            int i = em1Var.p;
            if (i != -1) {
                em1Var2 = new em1(em1Var2.n, i, em1Var2.q);
            }
            if (this.a.isDebugEnabled()) {
                this.a.debug("Using virtual host" + em1Var2);
            }
        }
        if (em1Var2 == null) {
            em1Var2 = (uriCreate == null || !uriCreate.isAbsolute() || uriCreate.getHost() == null) ? null : new em1(uriCreate.getHost(), uriCreate.getPort(), uriCreate.getScheme());
        }
        if (em1Var2 == null) {
            em1Var2 = um1Var.o;
        }
        if (em1Var2 != null) {
            em1Var = em1Var2;
        }
        if (uriCreate != null && (userInfo = uriCreate.getUserInfo()) != null) {
            zk0 nuVar = (zk0) rl1Var.a("http.auth.credentials-provider", zk0.class);
            if (nuVar == null) {
                nuVar = new nu();
                rl1Var.z(nuVar, "http.auth.credentials-provider");
            }
            nuVar.b(new sj(em1Var, null, null), new e94(userInfo));
        }
        rl1Var.z(em1Var, "http.target_host");
        rl1Var.z(ym1Var, "http.route");
        rl1Var.z(um1Var, "http.request");
        fp1 fp1Var = this.c;
        fp1Var.a(um1Var, rl1Var);
        t60 t60VarA = this.b.a(ym1Var, um1Var, rl1Var, j0Var);
        try {
            rl1Var.z(t60VarA, "http.response");
            fp1Var.b(t60VarA, rl1Var);
            return t60VarA;
        } catch (cm1 e3) {
            ((xm1) t60VarA).close();
            throw e3;
        } catch (IOException e4) {
            ((xm1) t60VarA).close();
            throw e4;
        } catch (RuntimeException e5) {
            ((xm1) t60VarA).close();
            throw e5;
        }
    }
}
