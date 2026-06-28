package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mu0 {
    public boolean a;
    public final Object b;
    public Object c;
    public Object d;

    public mu0(q51 q51Var, boolean z) {
        this.d = q51Var;
        this.c = new AtomicReference(null);
        this.a = z;
        this.b = new AtomicMarkableReference(new tx1(z ? 8192 : 1024), false);
    }

    public static IOException a(mu0 mu0Var, boolean z, IOException iOException, int i) {
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 8) == 0;
        if (iOException != null) {
            mu0Var.f(iOException);
        }
        return ((h23) mu0Var.b).g(mu0Var, z3 && !z, z2 && !z, z2 && z, z3 && z, iOException);
    }

    public void b(boolean z) {
        qu0 qu0Var = (qu0) this.d;
        synchronized (qu0Var.f283u) {
            try {
                if (this.a) {
                    throw new IllegalStateException("editor is closed");
                }
                if (nt1.g(((nu0) this.b).g, this)) {
                    qu0.b(qu0Var, this, z);
                }
                this.a = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public bt2 c(int i) {
        bt2 bt2Var;
        qu0 qu0Var = (qu0) this.d;
        synchronized (qu0Var.f283u) {
            if (this.a) {
                throw new IllegalStateException("editor is closed");
            }
            ((boolean[]) this.c)[i] = true;
            Object obj = ((nu0) this.b).d.get(i);
            w80.q(qu0Var.D, (bt2) obj);
            bt2Var = (bt2) obj;
        }
        return bt2Var;
    }

    public i23 d() {
        x21 x21VarM = ((y21) this.d).m();
        i23 i23Var = x21VarM instanceof i23 ? (i23) x21VarM : null;
        if (i23Var != null) {
            return i23Var;
        }
        k21.n("no connection for CONNECT tunnels");
        return null;
    }

    public v73 e(boolean z) throws IOException {
        try {
            v73 v73VarO = ((y21) this.d).o(z);
            if (v73VarO == null) {
                return v73VarO;
            }
            v73VarO.n = this;
            return v73VarO;
        } catch (IOException e) {
            f(e);
            throw e;
        }
    }

    public void f(IOException iOException) {
        this.a = true;
        ((y21) this.d).m().j((h23) this.b, iOException);
    }

    public gw4 g() throws SocketException {
        h23 h23Var = (h23) this.b;
        if (h23Var.v) {
            k21.n("Check failed.");
            return null;
        }
        h23Var.v = true;
        h23Var.q.i();
        synchronized (h23Var) {
            if (h23Var.D == null) {
                throw new IllegalStateException("Check failed.");
            }
            if (h23Var.z || h23Var.A) {
                throw new IllegalStateException("Check failed.");
            }
            if (h23Var.x) {
                throw new IllegalStateException("Check failed.");
            }
            if (!h23Var.y) {
                throw new IllegalStateException("Check failed.");
            }
            h23Var.y = false;
            h23Var.z = true;
            h23Var.A = true;
        }
        x21 x21VarM = ((y21) this.d).m();
        x21VarM.getClass();
        i23 i23Var = (i23) x21VarM;
        i23Var.e.setSoTimeout(0);
        i23Var.k();
        return new gw4(this);
    }

    public String h() {
        if (!this.a) {
            this.a = true;
            f35 f35Var = (f35) this.d;
            this.c = f35Var.z().getString((String) this.b, null);
        }
        return (String) this.c;
    }

    public void i(String str) {
        SharedPreferences.Editor editorEdit = ((f35) this.d).z().edit();
        editorEdit.putString((String) this.b, str);
        editorEdit.apply();
        this.c = str;
    }

    public mu0() {
        this.b = new Object();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.a = true;
    }

    public mu0(h23 h23Var, z21 z21Var, y21 y21Var) {
        z21Var.getClass();
        this.b = h23Var;
        this.c = z21Var;
        this.d = y21Var;
    }

    public mu0(f35 f35Var, String str) {
        this.d = f35Var;
        Preconditions.checkNotEmpty(str);
        this.b = str;
    }

    public mu0(c02 c02Var, pt3 pt3Var, dy2 dy2Var) {
        this.b = c02Var;
        this.c = pt3Var;
        this.d = dy2Var;
        this.a = true;
    }

    public mu0(int i) {
        this.b = new ReentrantLock();
        this.d = new long[i];
        this.c = new boolean[i];
    }

    public mu0(qu0 qu0Var, nu0 nu0Var) {
        this.d = qu0Var;
        this.b = nu0Var;
        this.c = new boolean[2];
    }
}
