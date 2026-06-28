package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fg2 extends e83 implements df1 {
    public ug1 p;
    public gg2 q;
    public long[] r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f97u;
    public final /* synthetic */ gg2 v;
    public final /* synthetic */ ug1 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fg2(gg2 gg2Var, ug1 ug1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.v = gg2Var;
        this.w = ug1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((fg2) o((dh0) obj2, (bi3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        fg2 fg2Var = new fg2(this.v, this.w, dh0Var);
        fg2Var.f97u = obj;
        return fg2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        bi3 bi3Var;
        gg2 gg2Var;
        long[] jArr;
        int i;
        ug1 ug1Var;
        int i2 = this.t;
        if (i2 == 0) {
            gg4.T(obj);
            bi3Var = (bi3) this.f97u;
            gg2Var = this.v;
            eg2 eg2Var = gg2Var.o;
            jArr = eg2Var.c;
            i = eg2Var.e;
            ug1Var = this.w;
        } else {
            if (i2 != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.s;
            jArr = this.r;
            gg2Var = this.q;
            ug1Var = this.p;
            bi3Var = (bi3) this.f97u;
            gg4.T(obj);
        }
        if (i == Integer.MAX_VALUE) {
            return t64.a;
        }
        int i3 = (int) ((jArr[i] >> 31) & 2147483647L);
        ug1Var.o = i;
        Object obj2 = gg2Var.o.b[i];
        this.f97u = bi3Var;
        this.p = ug1Var;
        this.q = gg2Var;
        this.r = jArr;
        this.s = i3;
        this.t = 1;
        bi3Var.d(obj2, this);
        return ri0.n;
    }
}
