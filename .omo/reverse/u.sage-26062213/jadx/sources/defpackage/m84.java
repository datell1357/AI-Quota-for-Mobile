package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m84 extends fh0 {
    public long q;
    public long r;
    public String s;
    public w3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f205u;
    public final /* synthetic */ n84 v;
    public int w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m84(n84 n84Var, fh0 fh0Var) {
        super(fh0Var);
        this.v = n84Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.f205u = obj;
        this.w |= Integer.MIN_VALUE;
        return this.v.h(this);
    }
}
