package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i55 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ vc5 b;
    public final /* synthetic */ Bundle c;
    public final /* synthetic */ o55 d;

    public /* synthetic */ i55(o55 o55Var, vc5 vc5Var, Bundle bundle, int i) {
        this.a = i;
        this.b = vc5Var;
        this.c = bundle;
        this.d = o55Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        int i = this.a;
        Bundle bundle = this.c;
        vc5 vc5Var = this.b;
        o55 o55Var = this.d;
        switch (i) {
            case 0:
                o55Var.c.V();
                break;
            default:
                o55Var.c.V();
                break;
        }
        return o55Var.c.d0(bundle, vc5Var);
    }
}
