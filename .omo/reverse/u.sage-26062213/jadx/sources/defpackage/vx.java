package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.regex.Pattern;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vx implements bt1 {
    public final /* synthetic */ int a = 1;
    public final Object b;

    public vx(mj1 mj1Var) {
        mj1Var.getClass();
        this.b = mj1Var;
    }

    public static int d(w73 w73Var, int i) {
        String strA = w73Var.s.a("Retry-After");
        if (strA == null) {
            strA = null;
        }
        if (strA == null) {
            return i;
        }
        Pattern patternCompile = Pattern.compile("\\d+");
        patternCompile.getClass();
        if (!patternCompile.matcher(strA).matches()) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        Integer numValueOf = Integer.valueOf(strA);
        numValueOf.getClass();
        return numValueOf.intValue();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v25 u23, still in use, count: 2, list:
          (r0v25 u23) from 0x0072: MOVE (r18v0 u23) = (r0v25 u23) (LINE:115)
          (r0v25 u23) from 0x005f: MOVE (r18v3 u23) = (r0v25 u23) (LINE:96)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    @Override // defpackage.bt1
    public final defpackage.w73 a(defpackage.q23 r35) {
        /*
            Method dump skipped, instruction units count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vx.a(q23):w73");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.k63 b(defpackage.w73 r11, defpackage.mu0 r12) throws java.net.ProtocolException {
        /*
            Method dump skipped, instruction units count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vx.b(w73, mu0):k63");
    }

    public boolean c(IOException iOException, h23 h23Var, k63 k63Var) {
        boolean z = iOException instanceof ke0;
        if (!((io2) this.b).e) {
            return false;
        }
        if ((!z && (iOException instanceof FileNotFoundException)) || (iOException instanceof ProtocolException)) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || !z) {
                return false;
            }
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        mu0 mu0Var = h23Var.D;
        if (mu0Var == null || !mu0Var.a) {
            return false;
        }
        z21 z21Var = h23Var.t;
        z21Var.getClass();
        u23 u23VarG = z21Var.g();
        mu0 mu0Var2 = h23Var.D;
        return u23VarG.a(mu0Var2 != null ? mu0Var2.d() : null);
    }

    public vx(io2 io2Var) {
        this.b = io2Var;
    }
}
