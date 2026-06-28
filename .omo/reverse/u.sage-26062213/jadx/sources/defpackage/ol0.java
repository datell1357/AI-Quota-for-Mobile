package defpackage;

import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ol0 extends bv3 implements df1 {
    public final /* synthetic */ int r = 0;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f245u;
    public Enum v;
    public final /* synthetic */ Object w;
    public final /* synthetic */ Object x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol0(y84 y84Var, boolean z, MainActivity mainActivity, ps psVar, dh0 dh0Var) {
        super(2, dh0Var);
        this.v = y84Var;
        this.f245u = z;
        this.w = mainActivity;
        this.x = psVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((ol0) o((dh0) obj2, (d14) obj)).q(t64Var);
            default:
                return ((ol0) o((dh0) obj2, (js2) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.x;
        Object obj3 = this.w;
        switch (i) {
            case 0:
                ol0 ol0Var = new ol0(dh0Var, (pe1) obj2, (ga3) obj3, this.f245u);
                ol0Var.t = obj;
                return ol0Var;
            default:
                ol0 ol0Var2 = new ol0((y84) this.v, this.f245u, (MainActivity) obj3, (ps) obj2, dh0Var);
                ol0Var2.t = obj;
                return ol0Var2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015e A[Catch: Exception -> 0x016a, TRY_LEAVE, TryCatch #0 {Exception -> 0x016a, blocks: (B:50:0x0153, B:52:0x015e), top: B:95:0x0153 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0223  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ol0.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol0(dh0 dh0Var, pe1 pe1Var, ga3 ga3Var, boolean z) {
        super(2, dh0Var);
        this.f245u = z;
        this.w = ga3Var;
        this.x = pe1Var;
    }
}
