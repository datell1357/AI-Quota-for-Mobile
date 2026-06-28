package defpackage;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.api.client.http.HttpMethods;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qm1 {
    public final int a;

    public qm1() {
        w80.N(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, "Wait for continue time");
        this.a = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
    }

    public static boolean a(om1 om1Var, vm1 vm1Var) {
        int i;
        return (HttpMethods.HEAD.equalsIgnoreCase(((hv) om1Var.getRequestLine()).o) || (i = vm1Var.b().o) < 200 || i == 204 || i == 304 || i == 205) ? false : true;
    }

    public static vm1 b(om1 om1Var, pl1 pl1Var, ul1 ul1Var) throws e03 {
        w80.L(pl1Var, "Client connection");
        vm1 vm1VarM = null;
        int i = 0;
        while (true) {
            if (vm1VarM != null && i >= 200) {
                return vm1VarM;
            }
            vm1VarM = pl1Var.M();
            i = vm1VarM.b().o;
            if (i < 100) {
                throw new e03(cm1.a("Invalid response: " + vm1VarM.b()));
            }
            if (a(om1Var, vm1VarM)) {
                pl1Var.C(vm1VarM);
            }
        }
    }

    public static void e(vm1 vm1Var, nm1 nm1Var, ul1 ul1Var) {
        w80.L(nm1Var, "HTTP processor");
        ul1Var.z(vm1Var, "http.response");
        nm1Var.b(vm1Var, ul1Var);
    }

    public static void f(om1 om1Var, nm1 nm1Var, ul1 ul1Var) {
        w80.L(nm1Var, "HTTP processor");
        ul1Var.z(om1Var, "http.request");
        nm1Var.a(om1Var, ul1Var);
    }

    public final vm1 c(om1 om1Var, pl1 pl1Var, ul1 ul1Var) throws e03 {
        w80.L(pl1Var, "Client connection");
        ul1Var.z(pl1Var, "http.connection");
        ul1Var.z(Boolean.FALSE, "http.request_sent");
        pl1Var.x(om1Var);
        vm1 vm1Var = null;
        if (om1Var instanceof zl1) {
            g03 g03Var = ((hv) om1Var.getRequestLine()).n;
            zl1 zl1Var = (zl1) om1Var;
            boolean z = true;
            if (zl1Var.expectContinue() && !g03Var.a(dn1.r)) {
                pl1Var.flush();
                if (pl1Var.v(this.a)) {
                    vm1 vm1VarM = pl1Var.M();
                    if (a(om1Var, vm1VarM)) {
                        pl1Var.C(vm1VarM);
                    }
                    int i = vm1VarM.b().o;
                    if (i >= 200) {
                        z = false;
                        vm1Var = vm1VarM;
                    } else if (i != 100) {
                        throw new e03(cm1.a("Unexpected response: " + vm1VarM.b()));
                    }
                }
            }
            if (z) {
                pl1Var.U(zl1Var);
            }
        }
        pl1Var.flush();
        ul1Var.z(Boolean.TRUE, "http.request_sent");
        return vm1Var;
    }

    public final vm1 d(om1 om1Var, pl1 pl1Var, ul1 ul1Var) throws cm1, IOException {
        w80.L(pl1Var, "Client connection");
        try {
            vm1 vm1VarC = c(om1Var, pl1Var, ul1Var);
            return vm1VarC == null ? b(om1Var, pl1Var, ul1Var) : vm1VarC;
        } catch (cm1 e) {
            try {
                pl1Var.close();
            } catch (IOException unused) {
            }
            throw e;
        } catch (IOException e2) {
            try {
                pl1Var.close();
            } catch (IOException unused2) {
            }
            throw e2;
        } catch (RuntimeException e3) {
            try {
                pl1Var.close();
            } catch (IOException unused3) {
            }
            throw e3;
        }
    }
}
