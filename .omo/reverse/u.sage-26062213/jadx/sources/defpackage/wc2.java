package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wc2 implements j41 {
    public final /* synthetic */ int a;
    public final m03 b;
    public final m03 c;

    public /* synthetic */ wc2(m03 m03Var, m03 m03Var2, int i) {
        this.a = i;
        this.b = m03Var;
        this.c = m03Var2;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        m03 m03Var = this.b;
        switch (i) {
            case 0:
                return new vc2((Context) ((sk0) m03Var).b, (eh) ((sk0) this.c).get());
            default:
                return new ob3(new pr3(12), new pr3(9), eo.f, (de3) m03Var.get(), this.c);
        }
    }
}
