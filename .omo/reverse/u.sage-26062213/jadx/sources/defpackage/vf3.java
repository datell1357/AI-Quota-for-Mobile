package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vf3 extends bv3 implements df1 {
    public int r;
    public final /* synthetic */ wf3 s;
    public final /* synthetic */ float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ float f378u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vf3(wf3 wf3Var, float f, float f2, dh0 dh0Var) {
        super(2, dh0Var);
        this.s = wf3Var;
        this.t = f;
        this.f378u = f2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((vf3) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        return new vf3(this.s, this.t, this.f378u, dh0Var);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            dg3 dg3Var = this.s.a0;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.t)) << 32) | (((long) Float.floatToRawIntBits(this.f378u)) & 4294967295L);
            this.r = 1;
            Object objA = rf3.a(dg3Var, jFloatToRawIntBits, this);
            ri0 ri0Var = ri0.n;
            if (objA == ri0Var) {
                return ri0Var;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
        }
        return t64.a;
    }
}
