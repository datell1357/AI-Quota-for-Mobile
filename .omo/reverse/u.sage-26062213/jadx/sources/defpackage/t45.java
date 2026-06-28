package defpackage;

import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t45 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public t45(pb5 pb5Var, vc5 vc5Var) {
        this.a = 2;
        this.c = vc5Var;
        Objects.requireNonNull(pb5Var);
        this.b = pb5Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                o55 o55Var = (o55) obj;
                o55Var.c.V();
                at4 at4Var = o55Var.c.c;
                pb5.T(at4Var);
                break;
            case 1:
                o55 o55Var2 = (o55) obj;
                o55Var2.c.V();
                break;
            case 2:
                vc5 vc5Var = (vc5) obj2;
                pb5 pb5Var = (pb5) obj;
                y55 y55VarA = pb5Var.a((String) Preconditions.checkNotNull(vc5Var.n));
                x55 x55Var = x55.ANALYTICS_STORAGE;
                if (!y55VarA.i(x55Var) || !y55.c(100, vc5Var.F).i(x55Var)) {
                    pb5Var.c().n.a("Analytics storage consent denied. Returning null app instance id");
                }
                break;
            default:
                ui3 ui3Var = (ui3) obj2;
                rc5 rc5Var = (rc5) obj;
                o75 o75Var = (o75) ui3Var.o;
                pc4 pc4Var = new pc4(25);
                try {
                    gd5 gd5Var = (gd5) o75Var.f.get();
                    Uri uri = (Uri) ui3Var.p;
                    pc4 pc4Var2 = new pc4(rc5Var);
                    pc4Var2.p = new pc4[]{pc4Var};
                } catch (IOException | RuntimeException e) {
                    gp4.b(Level.WARNING, o75Var.a(), e, "Failed to update snapshot for %s flags may be stale.", (String) ui3Var.q);
                }
                break;
        }
        return null;
    }

    public /* synthetic */ t45(o55 o55Var, Object obj, int i) {
        this.a = i;
        this.c = obj;
        this.b = o55Var;
    }

    public /* synthetic */ t45(ui3 ui3Var, rc5 rc5Var) {
        this.a = 3;
        this.c = ui3Var;
        this.b = rc5Var;
    }
}
