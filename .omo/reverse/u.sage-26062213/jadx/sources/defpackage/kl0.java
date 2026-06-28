package defpackage;

import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kl0 extends bv3 implements df1 {
    public final /* synthetic */ int r = 0;
    public boolean s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f168u;
    public Object v;
    public Object w;
    public final /* synthetic */ Object x;
    public final /* synthetic */ Object y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kl0(dh0 dh0Var, pe1 pe1Var, ga3 ga3Var, boolean z, boolean z2) {
        super(2, dh0Var);
        this.s = z;
        this.f168u = z2;
        this.x = ga3Var;
        this.y = pe1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((kl0) o((dh0) obj2, (d14) obj)).q(t64Var);
            default:
                return ((kl0) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.y;
        Object obj3 = this.x;
        switch (i) {
            case 0:
                pe1 pe1Var = (pe1) obj2;
                kl0 kl0Var = new kl0(dh0Var, pe1Var, (ga3) obj3, this.s, this.f168u);
                kl0Var.w = obj;
                return kl0Var;
            default:
                return new kl0((MainActivity) obj3, (y84) obj2, this.f168u, dh0Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kl0.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kl0(MainActivity mainActivity, y84 y84Var, boolean z, dh0 dh0Var) {
        super(2, dh0Var);
        this.x = mainActivity;
        this.y = y84Var;
        this.f168u = z;
    }
}
