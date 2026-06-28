package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bq0 implements j41 {
    public final m03 a;
    public final m03 b;
    public final ae3 c;
    public final m03 d;
    public final m03 e;

    public bq0(m03 m03Var, m03 m03Var2, ae3 ae3Var, m03 m03Var3, m03 m03Var4) {
        this.a = m03Var;
        this.b = m03Var2;
        this.c = ae3Var;
        this.d = m03Var3;
        this.e = m03Var4;
    }

    @Override // defpackage.m03
    public final Object get() {
        return new aq0((Executor) this.a.get(), (vc2) this.b.get(), (eh) this.c.get(), (ob3) this.d.get(), (ob3) this.e.get());
    }
}
