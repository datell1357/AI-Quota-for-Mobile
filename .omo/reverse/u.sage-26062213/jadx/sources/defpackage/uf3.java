package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uf3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ long f359u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ uf3(Object obj, long j, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f359u = j;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((uf3) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((uf3) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((uf3) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 3:
                long j = ((go2) obj).a;
                uf3 uf3Var = new uf3((wf3) this.t, (dh0) obj2);
                uf3Var.f359u = j;
                return uf3Var.q(t64Var);
            default:
                return ((uf3) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.t;
        switch (i) {
            case 0:
                return new uf3((wf3) obj2, this.f359u, dh0Var, 0);
            case 1:
                return new uf3((wf3) obj2, this.f359u, dh0Var, 1);
            case 2:
                return new uf3((wf3) obj2, this.f359u, dh0Var, 2);
            case 3:
                uf3 uf3Var = new uf3((wf3) obj2, dh0Var);
                uf3Var.f359u = ((go2) obj).a;
                return uf3Var;
            default:
                return new uf3((bd) obj2, this.f359u, dh0Var, 4);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.t;
        ri0 ri0Var = ri0.n;
        dh0 dh0Var = null;
        int i2 = 1;
        switch (i) {
            case 0:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    dg3 dg3Var = ((wf3) obj2).a0;
                    ls lsVar = new ls(this.f359u, dh0Var, i2);
                    this.s = 1;
                    if (dg3Var.g(xg2.o, lsVar, this) == ri0Var) {
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 1:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    dg3 dg3Var2 = ((wf3) obj2).a0;
                    long j = this.f359u;
                    this.s = 1;
                    if (dg3Var2.c(j, false, this) == ri0Var) {
                    }
                } else if (i4 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 2:
                int i5 = this.s;
                if (i5 == 0) {
                    gg4.T(obj);
                    dg3 dg3Var3 = ((wf3) obj2).a0;
                    long j2 = this.f359u;
                    this.s = 1;
                    if (dg3Var3.c(j2, true, this) == ri0Var) {
                    }
                } else if (i5 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 3:
                int i6 = this.s;
                if (i6 == 0) {
                    gg4.T(obj);
                    long j3 = this.f359u;
                    dg3 dg3Var4 = ((wf3) obj2).a0;
                    this.s = 1;
                    Object objA = rf3.a(dg3Var4, j3, this);
                    if (objA == ri0Var) {
                    }
                } else if (i6 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i7 = this.s;
                if (i7 == 0) {
                    gg4.T(obj);
                    tk2 tk2Var = ((bd) obj2).n;
                    long j4 = this.f359u;
                    this.s = 1;
                    if (tk2Var.b(j4, this) == ri0Var) {
                    }
                } else if (i7 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uf3(wf3 wf3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 3;
        this.t = wf3Var;
    }
}
