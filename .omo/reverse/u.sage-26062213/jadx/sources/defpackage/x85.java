package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.util.ProcessUtils;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x85 {
    public final w65 a;

    public x85(w65 w65Var) {
        this.a = w65Var;
    }

    public static i b(ow3 ow3Var) {
        d75 d75Var = new d75();
        d75Var.f64u = ow3Var;
        gt4 gt4Var = new gt4(8, d75Var);
        ef5 ef5Var = (ef5) ow3Var;
        ef5Var.getClass();
        fu0 fu0Var = fu0.n;
        ef5Var.b.b(new n25(fu0Var, gt4Var));
        ef5Var.s();
        return tf1.a(d75Var, ApiException.class, u85.b, fu0Var);
    }

    public final i a(kc5 kc5Var) throws Throwable {
        String string;
        String simpleName = a75.class.getSimpleName();
        w65 w65Var = this.a;
        ListenerHolder listenerHolderRegisterListener = w65Var.registerListener(kc5Var, simpleName);
        String myProcessName = ProcessUtils.getMyProcessName();
        if (myProcessName == null) {
            string = "__PH_INTERNAL__NO_PROCESS__";
        } else {
            int length = myProcessName.length() + 1;
            int iIdentityHashCode = System.identityHashCode(a75.class);
            StringBuilder sb = new StringBuilder(length + String.valueOf(iIdentityHashCode).length());
            sb.append(myProcessName);
            sb.append("|");
            sb.append(iIdentityHashCode);
            string = sb.toString();
        }
        ui3 ui3Var = new ui3(w65Var, string, listenerHolderRegisterListener, 11);
        return b(w65Var.doRegisterEventListener(RegistrationMethods.builder().withHolder(listenerHolderRegisterListener).register(ui3Var).unregister(ny4.F).setFeatures(a65.b).setAutoResolveMissingFeatures(false).build()));
    }
}
