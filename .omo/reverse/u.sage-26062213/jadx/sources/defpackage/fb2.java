package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fb2 implements eb2 {
    public final int a;
    public final int b;
    public final Map c;
    public final c8 d;
    public final z e;
    public final /* synthetic */ int f;
    public final /* synthetic */ gb2 g;
    public final /* synthetic */ e9 h;

    public fb2(int i, int i2, Map map, c8 c8Var, z zVar, gb2 gb2Var, e9 e9Var) {
        this.f = i;
        this.g = gb2Var;
        this.h = e9Var;
        this.a = i;
        this.b = i2;
        this.c = map;
        this.d = c8Var;
        this.e = zVar;
    }

    @Override // defpackage.eb2
    public final int a() {
        return this.b;
    }

    @Override // defpackage.eb2
    public final int b() {
        return this.a;
    }

    @Override // defpackage.eb2
    public final Map c() {
        return this.c;
    }

    @Override // defpackage.eb2
    public final void d() {
        gb2 gb2Var = this.g;
        boolean z = gb2Var instanceof k82;
        e9 e9Var = this.h;
        if (z) {
            e9Var.k(((k82) gb2Var).C);
            return;
        }
        e9Var.k(new ym3(this.f, gb2Var.getLayoutDirection(), gb2Var.b(), gb2Var.k()));
    }

    @Override // defpackage.eb2
    public final df1 e() {
        return this.e;
    }

    @Override // defpackage.eb2
    public final pe1 g() {
        return this.d;
    }
}
