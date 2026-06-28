package defpackage;

import android.os.Bundle;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fx4 implements n75 {
    public final /* synthetic */ uy4 a;

    public fx4(uy4 uy4Var) {
        this.a = uy4Var;
    }

    @Override // defpackage.n75
    public final long c() {
        return this.a.g();
    }

    @Override // defpackage.n75
    public final String d() {
        dw4 dw4Var = new dw4();
        uy4 uy4Var = this.a;
        uy4Var.c(new by4(uy4Var, dw4Var, 3, false));
        return (String) dw4.G(dw4Var.F(500L), String.class);
    }

    @Override // defpackage.n75
    public final void e(String str, String str2, Bundle bundle) {
        uy4 uy4Var = this.a;
        uy4Var.c(new cy4(uy4Var, str, str2, bundle, true));
    }

    @Override // defpackage.n75
    public final void f(String str, String str2, Bundle bundle) {
        uy4 uy4Var = this.a;
        uy4Var.c(new ox4(uy4Var, str, str2, bundle));
    }

    @Override // defpackage.n75
    public final List g(String str, String str2) {
        return this.a.f(str, str2);
    }

    @Override // defpackage.n75
    public final void h(Bundle bundle) {
        uy4 uy4Var = this.a;
        uy4Var.c(new nx4(uy4Var, bundle, 0));
    }

    @Override // defpackage.n75
    public final int i(String str) {
        return this.a.b(str);
    }

    @Override // defpackage.n75
    public final String j() {
        dw4 dw4Var = new dw4();
        uy4 uy4Var = this.a;
        uy4Var.c(new by4(uy4Var, dw4Var, 1));
        return (String) dw4.G(dw4Var.F(50L), String.class);
    }

    @Override // defpackage.n75
    public final void k(String str) {
        uy4 uy4Var = this.a;
        uy4Var.c(new wx4(uy4Var, str, 1));
    }

    @Override // defpackage.n75
    public final String l() {
        dw4 dw4Var = new dw4();
        uy4 uy4Var = this.a;
        uy4Var.c(new by4(uy4Var, dw4Var, 0));
        return (String) dw4.G(dw4Var.F(500L), String.class);
    }

    @Override // defpackage.n75
    public final Map m(String str, String str2, boolean z) {
        return this.a.a(str, str2, z);
    }

    @Override // defpackage.n75
    public final void n(String str) {
        uy4 uy4Var = this.a;
        uy4Var.c(new wx4(uy4Var, str, 0));
    }

    @Override // defpackage.n75
    public final String zzi() {
        dw4 dw4Var = new dw4();
        uy4 uy4Var = this.a;
        uy4Var.c(new by4(uy4Var, dw4Var, 4, false));
        return (String) dw4.G(dw4Var.F(500L), String.class);
    }
}
