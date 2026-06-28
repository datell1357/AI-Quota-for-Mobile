package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.Objects;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sb5 {
    public volatile va5 a;
    public qb5 b;

    public final qb5 a(final o75 o75Var) {
        final va5 va5Var = this.a;
        va5 va5Var2 = qb5.j;
        if (va5Var != va5Var2) {
            ps0 ps0Var = qb5.i;
            ps0Var.getClass();
            final ep1 ep1Var = new ep1();
            ep1Var.n = false;
            xa5 xa5Var = (xa5) ps0Var.a.computeIfAbsent(va5Var.a(o75Var.b), new Function() { // from class: mb5
                @Override // java.util.function.Function
                public final /* synthetic */ Object apply(Object obj) {
                    xa5 xa5Var2 = new xa5(new qb5(o75Var, va5Var));
                    ep1Var.n = true;
                    return xa5Var2;
                }
            });
            if (ep1Var.n) {
                Context context = o75Var.b;
                gt4 gt4Var = new gt4(11, ps0Var);
                if (nc5.a == null) {
                    synchronized (nc5.class) {
                        try {
                            if (nc5.a == null) {
                                if (!Objects.equals(context.getPackageName(), "com.google.android.gms")) {
                                    if (PlatformVersion.isAtLeastT()) {
                                        context.registerReceiver(new nc5(), new IntentFilter("com.google.android.gms.phenotype.UPDATE"), 2);
                                    } else {
                                        context.registerReceiver(new nc5(), new IntentFilter("com.google.android.gms.phenotype.UPDATE"));
                                    }
                                }
                                nc5.a = gt4Var;
                            }
                        } finally {
                        }
                    }
                }
            }
            this.b = xa5Var.a;
            this.a = va5Var2;
        }
        return this.b;
    }
}
