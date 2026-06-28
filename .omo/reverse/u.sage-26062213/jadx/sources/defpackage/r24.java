package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r24 extends fh0 {
    public v24 q;
    public nw2 r;
    public String s;
    public String[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f290u;
    public int v;
    public int w;
    public /* synthetic */ Object x;
    public final /* synthetic */ v24 y;
    public int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r24(v24 v24Var, fh0 fh0Var) {
        super(fh0Var);
        this.y = v24Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.x = obj;
        this.z |= Integer.MIN_VALUE;
        return v24.c(this.y, null, 0, this);
    }
}
