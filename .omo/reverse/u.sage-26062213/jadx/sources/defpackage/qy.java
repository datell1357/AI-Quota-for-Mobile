package defpackage;

import android.graphics.Paint;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qy extends zf5 {
    public dd1 h;
    public long i = 9205357640488583168L;
    public final /* synthetic */ Shader j;

    public qy(Shader shader) {
        this.j = shader;
    }

    @Override // defpackage.zf5
    public final void j(float f, long j, lb lbVar) {
        dd1 dd1Var = this.h;
        if (dd1Var == null || !mn3.a(this.i, j)) {
            if (mn3.c(j)) {
                this.h = null;
                this.i = 9205357640488583168L;
                dd1Var = null;
            } else {
                dd1Var = this.h;
                if (dd1Var == null) {
                    dd1Var = new dd1(22, false);
                    this.h = dd1Var;
                }
                dd1Var.o = this.j;
                this.h = dd1Var;
                this.i = j;
            }
        }
        long jA = lbVar.a();
        long j2 = t70.b;
        if (!t70.c(jA, j2)) {
            lbVar.f(j2);
        }
        if (!nt1.g((Shader) lbVar.p, dd1Var != null ? (Shader) dd1Var.o : null)) {
            lbVar.h(dd1Var != null ? (Shader) dd1Var.o : null);
        }
        if (((Paint) lbVar.o).getAlpha() / 255.0f == f) {
            return;
        }
        lbVar.d(f);
    }
}
