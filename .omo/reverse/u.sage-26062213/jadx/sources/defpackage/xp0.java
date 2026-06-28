package defpackage;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xp0 implements y63 {
    public final Log a;
    public final g60 b;
    public final zm1 c;
    public final ie0 d;
    public final be0 e;
    public final qm1 f;
    public final nm1 g;
    public final sm1 h;
    public final r33 i;
    public final yj j;
    public final yj k;
    public final d94 l;
    public final km1 m;
    public t92 n;
    public final tj o;
    public final tj p;
    public final ll1 q;
    public int r;
    public int s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public em1 f411u;

    public xp0(Log log, qm1 qm1Var, g60 g60Var, ie0 ie0Var, be0 be0Var, zm1 zm1Var, nm1 nm1Var, sm1 sm1Var, r33 r33Var, yj yjVar, yj yjVar2, d94 d94Var, km1 km1Var) {
        w80.L(log, "Log");
        w80.L(qm1Var, "Request executor");
        w80.L(g60Var, "Client connection manager");
        w80.L(ie0Var, "Connection reuse strategy");
        w80.L(be0Var, "Connection keep alive strategy");
        w80.L(zm1Var, "Route planner");
        w80.L(nm1Var, "HTTP protocol processor");
        w80.L(sm1Var, "HTTP request retry handler");
        w80.L(r33Var, "Redirect strategy");
        w80.L(yjVar, "Target authentication strategy");
        w80.L(yjVar2, "Proxy authentication strategy");
        w80.L(d94Var, "User token handler");
        w80.L(km1Var, "HTTP parameters");
        this.a = log;
        this.q = new ll1(log);
        this.f = qm1Var;
        this.b = g60Var;
        this.d = ie0Var;
        this.e = be0Var;
        this.c = zm1Var;
        this.g = nm1Var;
        this.h = sm1Var;
        this.i = r33Var;
        this.j = yjVar;
        this.k = yjVar2;
        this.l = d94Var;
        this.m = km1Var;
        this.n = null;
        this.r = 0;
        this.s = 0;
        this.o = new tj();
        this.p = new tj();
        this.t = ((f1) km1Var).e(100, "http.protocol.max-redirects");
    }

    public static void d(g73 g73Var, ym1 ym1Var) throws e03 {
        try {
            URI uri = g73Var.o;
            g73Var.o = (ym1Var.e() == null || ym1Var.c()) ? uri.isAbsolute() ? z54.e(uri, null, z54.d) : z54.d(uri) : !uri.isAbsolute() ? z54.e(uri, ym1Var.n, z54.d) : z54.d(uri);
        } catch (URISyntaxException e) {
            throw new e03("Invalid URI: " + ((hv) g73Var.getRequestLine()).p, e);
        }
    }

    public final void a() {
        t92 t92Var = this.n;
        if (t92Var != null) {
            this.n = null;
            try {
                t92Var.j();
            } catch (IOException e) {
                if (this.a.isDebugEnabled()) {
                    this.a.debug(e.getMessage(), e);
                }
            }
            try {
                t92Var.r();
            } catch (IOException e2) {
                this.a.debug("Error releasing connection", e2);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0172 A[LOOP:0: B:2:0x0000->B:44:0x0172, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0171 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(defpackage.ym1 r10, defpackage.ul1 r11) throws defpackage.cm1, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xp0.b(ym1, ul1):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009c, code lost:
    
        if (r17.q.b(r3, r4, r17.k, r17.p, r7) != false) goto L22;
     */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.xh1 c(defpackage.xh1 r18, defpackage.vm1 r19, defpackage.ul1 r20) throws defpackage.e03 {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xp0.c(xh1, vm1, ul1):xh1");
    }

    public final void e(xh1 xh1Var, ul1 ul1Var) throws cm1, IOException {
        ym1 ym1Var = (ym1) xh1Var.o;
        g73 g73Var = (g73) xh1Var.n;
        int i = 0;
        while (true) {
            ul1Var.z(g73Var, "http.request");
            i++;
            try {
                boolean zIsOpen = this.n.isOpen();
                t92 t92Var = this.n;
                km1 km1Var = this.m;
                if (zIsOpen) {
                    t92Var.n(mt1.H(km1Var));
                } else {
                    t92Var.w(ym1Var, ul1Var, km1Var);
                }
                b(ym1Var, ul1Var);
                return;
            } catch (IOException e) {
                try {
                    this.n.close();
                } catch (IOException unused) {
                }
                if (!((cp0) this.h).a(e, i, ul1Var)) {
                    throw e;
                }
                if (this.a.isInfoEnabled()) {
                    this.a.info("I/O exception (" + e.getClass().getName() + ") caught when connecting to " + ym1Var + ": " + e.getMessage());
                    if (this.a.isDebugEnabled()) {
                        this.a.debug(e.getMessage(), e);
                    }
                    this.a.info("Retrying connect to " + ym1Var);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b8 A[Catch: RuntimeException -> 0x00b7, IOException -> 0x00ba, cm1 -> 0x00bd, je0 -> 0x02be, TRY_LEAVE, TryCatch #0 {IOException -> 0x00ba, blocks: (B:23:0x0092, B:25:0x00a2, B:27:0x00ae, B:35:0x00c0, B:36:0x00c4, B:37:0x00ca, B:39:0x00d0, B:41:0x00d8, B:43:0x00e7, B:47:0x0105, B:49:0x0109, B:50:0x0111, B:51:0x0114, B:53:0x011c, B:54:0x0129, B:62:0x013f, B:63:0x0141, B:66:0x016e, B:68:0x017c, B:72:0x0196, B:74:0x01b2, B:76:0x01d1, B:78:0x01df, B:105:0x0252, B:108:0x0258, B:111:0x0266, B:82:0x01ea, B:97:0x0235, B:103:0x024d, B:102:0x0247, B:83:0x01f7, B:85:0x0205, B:87:0x0209, B:89:0x020f, B:90:0x0219, B:92:0x0221, B:94:0x0225, B:96:0x022b, B:57:0x012e, B:59:0x0136, B:114:0x027a, B:116:0x0282, B:117:0x028b, B:120:0x0292, B:122:0x0298, B:125:0x02a5, B:127:0x02b8, B:135:0x02ce, B:134:0x02c8, B:44:0x00f4, B:45:0x0100), top: B:145:0x0092 }] */
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
    @Override // defpackage.y63
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.vm1 execute(defpackage.em1 r23, defpackage.om1 r24, defpackage.ul1 r25) throws defpackage.cm1, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xp0.execute(em1, om1, ul1):vm1");
    }

    public final vm1 f(xh1 xh1Var, ul1 ul1Var) throws IOException, um2 {
        g73 g73Var = (g73) xh1Var.n;
        ym1 ym1Var = (ym1) xh1Var.o;
        IOException e = null;
        while (true) {
            this.r++;
            g73Var.r++;
            if (!g73Var.a()) {
                this.a.debug("Cannot retry non-repeatable request");
                if (e != null) {
                    throw new um2("Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed.", e);
                }
                throw new um2(cm1.a("Cannot retry request with a non-repeatable request entity."));
            }
            try {
                if (!this.n.isOpen()) {
                    boolean zC = ym1Var.c();
                    Log log = this.a;
                    if (zC) {
                        log.debug("Proxied connection. Need to start over.");
                        return null;
                    }
                    log.debug("Reopening the direct connection.");
                    this.n.w(ym1Var, ul1Var, this.m);
                }
                if (this.a.isDebugEnabled()) {
                    this.a.debug("Attempt " + this.r + " to execute request");
                }
                return this.f.d(g73Var, this.n, ul1Var);
            } catch (IOException e2) {
                e = e2;
                this.a.debug("Closing the connection.");
                try {
                    this.n.close();
                } catch (IOException unused) {
                }
                if (!((cp0) this.h).a(e, g73Var.r, ul1Var)) {
                    if (!(e instanceof em2)) {
                        throw e;
                    }
                    em2 em2Var = new em2(cm1.a(ym1Var.n.a() + " failed to respond"));
                    em2Var.setStackTrace(e.getStackTrace());
                    throw em2Var;
                }
                if (this.a.isInfoEnabled()) {
                    this.a.info("I/O exception (" + e.getClass().getName() + ") caught when processing request to " + ym1Var + ": " + e.getMessage());
                }
                if (this.a.isDebugEnabled()) {
                    this.a.debug(e.getMessage(), e);
                }
                if (this.a.isInfoEnabled()) {
                    this.a.info("Retrying request to " + ym1Var);
                }
            }
        }
    }

    public xp0(qm1 qm1Var, g60 g60Var, ie0 ie0Var, be0 be0Var, zm1 zm1Var, nm1 nm1Var, sm1 sm1Var, r33 r33Var, xj xjVar, xj xjVar2, d94 d94Var, km1 km1Var) {
        this(LogFactory.getLog(xp0.class), qm1Var, g60Var, ie0Var, be0Var, zm1Var, nm1Var, sm1Var, r33Var, new zj(xjVar), new zj(xjVar2), d94Var, km1Var);
    }
}
