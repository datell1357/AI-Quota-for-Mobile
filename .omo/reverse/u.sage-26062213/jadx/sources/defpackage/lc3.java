package defpackage;

import android.os.Bundle;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lc3 implements ic3, yc3 {
    public final /* synthetic */ jc3 n;
    public r22 o;
    public wc3 p;

    public lc3(jc3 jc3Var) {
        this.n = jc3Var;
        Object objD = jc3Var.d("androidx.savedstate.SavedStateRegistry");
        Bundle bundle = objD instanceof Bundle ? (Bundle) objD : null;
        if (bundle != null && this.p == null) {
            wc3 wc3Var = new wc3(new xc3(this, new vc3(0, this)));
            this.p = wc3Var;
            wc3Var.b(bundle);
        }
        jc3Var.a("androidx.savedstate.SavedStateRegistry", new cc(28, this));
    }

    @Override // defpackage.ic3
    public final hc3 a(String str, ne1 ne1Var) {
        return this.n.a(str, ne1Var);
    }

    @Override // defpackage.ic3
    public final boolean b(Object obj) {
        return this.n.b(obj);
    }

    @Override // defpackage.ic3
    public final Map c() {
        return this.n.c();
    }

    @Override // defpackage.ic3
    public final Object d(String str) {
        return this.n.d(str);
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        r22 r22Var = this.o;
        if (r22Var != null) {
            return r22Var;
        }
        r22 r22Var2 = new r22(this, false);
        this.o = r22Var2;
        return r22Var2;
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        wc3 wc3Var = this.p;
        if (wc3Var == null) {
            wc3 wc3Var2 = new wc3(new xc3(this, new vc3(0, this)));
            this.p = wc3Var2;
            wc3Var2.b(null);
            wc3Var = wc3Var2;
        }
        return wc3Var.b;
    }
}
