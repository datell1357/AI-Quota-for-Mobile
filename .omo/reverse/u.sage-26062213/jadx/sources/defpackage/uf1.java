package defpackage;

import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSCredential;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.GSSName;
import org.ietf.jgss.Oid;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class uf1 extends oj {
    public final Log o = LogFactory.getLog(getClass());
    public final oq p = new oq();
    public final boolean q = true;
    public final boolean r = true;
    public int s = 1;
    public byte[] t;

    public static GSSContext j(GSSManager gSSManager, Oid oid, GSSName gSSName) {
        GSSContext gSSContextCreateContext = gSSManager.createContext(gSSName.canonicalize(oid), oid, (GSSCredential) null, 0);
        gSSContextCreateContext.requestMutualAuth(true);
        return gSSContextCreateContext;
    }

    public static byte[] k(byte[] bArr, Oid oid, String str) {
        GSSManager gSSManagerM = m();
        GSSContext gSSContextJ = j(gSSManagerM, oid, gSSManagerM.createName(di0.u("HTTP@", str), GSSName.NT_HOSTBASED_SERVICE));
        return bArr != null ? gSSContextJ.initSecContext(bArr, 0, bArr.length) : gSSContextJ.initSecContext(new byte[0], 0, 0);
    }

    public static GSSManager m() {
        return GSSManager.getInstance();
    }

    @Override // defpackage.oj
    public final gj1 a(yk0 yk0Var, om1 om1Var) {
        return b(yk0Var, om1Var, null);
    }

    @Override // defpackage.oj
    public gj1 b(yk0 yk0Var, om1 om1Var, ul1 ul1Var) throws uj {
        em1 em1VarE;
        int iF = di0.F(this.s);
        if (iF == 0) {
            throw new uj(cm1.a(d().concat(" authentication has not been initiated")));
        }
        if (iF == 1) {
            try {
                ym1 ym1Var = (ym1) ul1Var.b("http.route");
                if (ym1Var == null) {
                    throw new uj(cm1.a("Connection route is not available"));
                }
                em1 em1Var = ym1Var.n;
                if (g() && (em1VarE = ym1Var.e()) != null) {
                    em1Var = em1VarE;
                }
                String str = em1Var.n;
                if (this.r) {
                    try {
                        InetAddress byName = InetAddress.getByName(str);
                        String canonicalHostName = byName.getCanonicalHostName();
                        if (!byName.getHostAddress().contentEquals(canonicalHostName)) {
                            str = canonicalHostName;
                        }
                    } catch (UnknownHostException unused) {
                    }
                }
                if (!this.q) {
                    str = str + ":" + em1Var.p;
                }
                if (this.o.isDebugEnabled()) {
                    this.o.debug("init " + str);
                }
                this.t = l(this.t, str, yk0Var);
                this.s = 3;
            } catch (GSSException e) {
                this.s = 4;
                if (e.getMajor() == 9 || e.getMajor() == 8) {
                    throw new ut1(e.getMessage(), e);
                }
                if (e.getMajor() == 13) {
                    throw new ut1(e.getMessage(), e);
                }
                if (e.getMajor() == 10 || e.getMajor() == 19 || e.getMajor() == 20) {
                    throw new uj(e.getMessage(), e);
                }
                throw new uj(e.getMessage());
            }
        } else if (iF != 2) {
            if (iF == 3) {
                throw new uj(cm1.a(d().concat(" authentication has failed")));
            }
            int i = this.s;
            k21.n("Illegal state: ".concat(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "FAILED" : "TOKEN_GENERATED" : "CHALLENGE_RECEIVED" : "UNINITIATED"));
            return null;
        }
        String str2 = new String(this.p.b(this.t));
        if (this.o.isDebugEnabled()) {
            this.o.debug("Sending response '" + str2 + "' back to the auth server");
        }
        b40 b40Var = new b40(32);
        if (g()) {
            b40Var.b("Proxy-Authorization");
        } else {
            b40Var.b("Authorization");
        }
        b40Var.b(": Negotiate ");
        b40Var.b(str2);
        return new cz(b40Var);
    }

    @Override // defpackage.oj
    public final boolean e() {
        int i = this.s;
        return i == 3 || i == 4;
    }

    @Override // defpackage.oj
    public final void h(b40 b40Var, int i, int i2) {
        String strI = b40Var.i(i, i2);
        if (this.o.isDebugEnabled()) {
            this.o.debug("Received challenge '" + strI + "' from the auth server");
        }
        if (this.s == 1) {
            this.t = oq.f(strI.getBytes());
            this.s = 2;
        } else {
            this.o.debug("Authentication already attempted");
            this.s = 4;
        }
    }

    public abstract byte[] l(byte[] bArr, String str, yk0 yk0Var);
}
