package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zc extends bv3 implements df1 {
    public int r;
    public final /* synthetic */ boolean s;
    public final /* synthetic */ bd t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ long f437u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zc(boolean z, bd bdVar, long j, dh0 dh0Var) {
        super(2, dh0Var);
        this.s = z;
        this.t = bdVar;
        this.f437u = j;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((zc) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new zc(this.s, this.t, this.f437u, dh0Var);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            tk2 tk2Var = this.t.n;
            ri0 ri0Var = ri0.n;
            if (this.s) {
                this.r = 2;
                Object objA = tk2Var.a(this.f437u, 0L, this);
                if (objA != ri0Var) {
                    obj = objA;
                    ((ra4) obj).getClass();
                }
            } else {
                this.r = 1;
                Object objA2 = tk2Var.a(0L, this.f437u, this);
                if (objA2 != ri0Var) {
                    obj = objA2;
                    ((ra4) obj).getClass();
                }
            }
            return ri0Var;
        }
        if (i == 1) {
            gg4.T(obj);
            ((ra4) obj).getClass();
        } else {
            if (i != 2) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
            ((ra4) obj).getClass();
        }
        return t64.a;
    }
}
