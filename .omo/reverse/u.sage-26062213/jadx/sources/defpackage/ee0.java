package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ee0 extends fh0 {
    public Object q;
    public Serializable r;
    public lw2 s;
    public w33 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public hi0 f84u;
    public w33 v;
    public boolean w;
    public /* synthetic */ Object x;
    public final /* synthetic */ fe0 y;
    public int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee0(fe0 fe0Var, fh0 fh0Var) {
        super(fh0Var);
        this.y = fe0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.x = obj;
        this.z |= Integer.MIN_VALUE;
        return this.y.G(false, null, this);
    }
}
