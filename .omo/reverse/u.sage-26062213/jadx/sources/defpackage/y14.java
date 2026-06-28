package defpackage;

import android.content.Context;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y14 {
    public static volatile xl0 e;
    public final pr3 a;
    public final pr3 b;
    public final aq0 c;
    public final ed0 d;

    public y14(pr3 pr3Var, pr3 pr3Var2, aq0 aq0Var, ed0 ed0Var, qd1 qd1Var) {
        this.a = pr3Var;
        this.b = pr3Var2;
        this.c = aq0Var;
        this.d = ed0Var;
        ((Executor) qd1Var.o).execute(new y(9, qd1Var));
    }

    public static y14 a() {
        xl0 xl0Var = e;
        if (xl0Var != null) {
            return (y14) xl0Var.s.get();
        }
        k21.n("Not initialized!");
        return null;
    }

    public static void b(Context context) {
        if (e == null) {
            synchronized (y14.class) {
                try {
                    if (e == null) {
                        ih ihVar = new ih();
                        context.getClass();
                        ihVar.a = context;
                        e = ihVar.b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final x14 c(h00 h00Var) {
        byte[] bytes;
        Set setUnmodifiableSet = h00Var instanceof h00 ? Collections.unmodifiableSet(h00.d) : Collections.singleton(new o01("proto"));
        eh ehVarA = hp.a();
        h00Var.getClass();
        ehVarA.o = "cct";
        String str = h00Var.a;
        String str2 = h00Var.b;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8"));
        }
        ehVarA.p = bytes;
        return new x14(setUnmodifiableSet, ehVarA.k(), this);
    }
}
