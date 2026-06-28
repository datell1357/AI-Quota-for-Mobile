package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z74 implements j41 {
    public final m03 a;
    public final m03 b;
    public final m03 c;
    public final ae3 d;
    public final m03 e;
    public final m03 f;
    public final m03 g;

    public z74(m03 m03Var, m03 m03Var2, m03 m03Var3, ae3 ae3Var, m03 m03Var4, m03 m03Var5, m03 m03Var6) {
        this.a = m03Var;
        this.b = m03Var2;
        this.c = m03Var3;
        this.d = ae3Var;
        this.e = m03Var4;
        this.f = m03Var5;
        this.g = m03Var6;
    }

    @Override // defpackage.m03
    public final Object get() {
        Context context = (Context) this.a.get();
        vc2 vc2Var = (vc2) this.b.get();
        ob3 ob3Var = (ob3) this.c.get();
        eh ehVar = (eh) this.d.get();
        Executor executor = (Executor) this.e.get();
        ob3 ob3Var2 = (ob3) this.f.get();
        pr3 pr3Var = new pr3(12);
        pr3 pr3Var2 = new pr3(9);
        ob3 ob3Var3 = (ob3) this.g.get();
        ed0 ed0Var = new ed0();
        ed0Var.a = context;
        ed0Var.b = vc2Var;
        ed0Var.d = ob3Var;
        ed0Var.e = ehVar;
        ed0Var.c = executor;
        ed0Var.f = ob3Var2;
        ed0Var.g = pr3Var;
        ed0Var.h = pr3Var2;
        ed0Var.i = ob3Var3;
        return ed0Var;
    }
}
