package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rh0 implements qh0 {
    public final /* synthetic */ String a;
    public final /* synthetic */ sh0 b;

    public rh0(sh0 sh0Var, String str) {
        this.b = sh0Var;
        this.a = str;
    }

    @Override // defpackage.qh0
    public final nh0 b(rl1 rl1Var) {
        km1 params = ((om1) rl1Var.n.b("http.request")).getParams();
        String str = this.a;
        w80.L(str, "Name");
        ph0 ph0Var = (ph0) this.b.a.get(str.toLowerCase(Locale.ENGLISH));
        if (ph0Var != null) {
            return ph0Var.a(params);
        }
        k21.n("Unsupported cookie spec: ".concat(str));
        return null;
    }
}
