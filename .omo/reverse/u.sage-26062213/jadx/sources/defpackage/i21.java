package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i21 implements i41 {
    public final /* synthetic */ int a;
    public final ij3 b;

    public /* synthetic */ i21(ij3 ij3Var, int i) {
        this.a = i;
        this.b = ij3Var;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        ij3 ij3Var = this.b;
        switch (i) {
            case 0:
                return new h21((n03) ij3Var.b);
            case 1:
                e61 e61Var = (e61) ij3Var.b;
                e61Var.getClass();
                nj3 nj3Var = nj3.a;
                return nj3.a(e61Var);
            default:
                return new z62((Context) ij3Var.b);
        }
    }
}
