package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bn0 extends fh0 {
    public boolean q;
    public Object r;
    public w33 s;
    public Serializable t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f33u;
    public /* synthetic */ Object v;
    public final /* synthetic */ fn0 w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bn0(fn0 fn0Var, fh0 fh0Var) {
        super(fh0Var);
        this.w = fn0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.v = obj;
        this.x |= Integer.MIN_VALUE;
        return fn0.h(this.w, false, this);
    }
}
