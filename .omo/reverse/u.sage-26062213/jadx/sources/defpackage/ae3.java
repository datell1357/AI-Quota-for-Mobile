package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ae3 implements j41 {
    public final /* synthetic */ int a;
    public final m03 b;
    public final m03 c;
    public final j41 d;

    public /* synthetic */ ae3(m03 m03Var, m03 m03Var2, j41 j41Var, int i) {
        this.a = i;
        this.b = m03Var;
        this.c = m03Var2;
        this.d = j41Var;
    }

    @Override // defpackage.m03
    public final Object get() {
        int i = this.a;
        j41 j41Var = this.d;
        m03 m03Var = this.c;
        m03 m03Var2 = this.b;
        switch (i) {
            case 0:
                return new eh((Context) m03Var2.get(), (ob3) m03Var.get(), (yo) ((g31) j41Var).get(), 17);
            default:
                return new y14(new pr3(12), new pr3(9), (aq0) ((bq0) m03Var2).get(), (ed0) ((z74) m03Var).get(), (qd1) ((dg4) j41Var).get());
        }
    }
}
