package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dg4 implements j41 {
    public final m03 a;
    public final m03 b;
    public final ae3 c;
    public final m03 d;

    public dg4(m03 m03Var, m03 m03Var2, ae3 ae3Var, m03 m03Var3) {
        this.a = m03Var;
        this.b = m03Var2;
        this.c = ae3Var;
        this.d = m03Var3;
    }

    @Override // defpackage.m03
    public final Object get() {
        return new qd1((Executor) this.a.get(), (ob3) this.b.get(), (eh) this.c.get(), (ob3) this.d.get(), 19);
    }
}
