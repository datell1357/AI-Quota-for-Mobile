package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class do2 extends xx1 implements pe1 {
    public static final do2 A;
    public static final do2 B;
    public static final do2 C;
    public static final do2 p;
    public static final do2 q;
    public static final do2 r;
    public static final do2 s;
    public static final do2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final do2 f70u;
    public static final do2 v;
    public static final do2 w;
    public static final do2 x;
    public static final do2 y;
    public static final do2 z;
    public final /* synthetic */ int o;

    static {
        int i = 1;
        p = new do2(i, 0);
        q = new do2(i, 1);
        r = new do2(i, 2);
        s = new do2(i, 3);
        t = new do2(i, 4);
        f70u = new do2(i, 5);
        v = new do2(i, 6);
        w = new do2(i, 7);
        x = new do2(i, 8);
        y = new do2(i, 9);
        z = new do2(i, 10);
        A = new do2(i, 11);
        B = new do2(i, 12);
        C = new do2(i, 13);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ do2(int i, int i2) {
        super(i);
        this.o = i2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                eo2 eo2Var = (eo2) obj;
                if (eo2Var.w()) {
                    eo2Var.n.H();
                }
                return t64Var;
            case 1:
                xy1 xy1Var = (xy1) obj;
                if (xy1Var.H()) {
                    xy1Var.W(false);
                }
                return t64Var;
            case 2:
                xy1 xy1Var2 = (xy1) obj;
                if (xy1Var2.H()) {
                    xy1Var2.W(false);
                }
                return t64Var;
            case 3:
                xy1 xy1Var3 = (xy1) obj;
                if (xy1Var3.H()) {
                    xy1Var3.U(false);
                }
                return t64Var;
            case 4:
                xy1 xy1Var4 = (xy1) obj;
                if (xy1Var4.H()) {
                    xy1Var4.U(false);
                }
                return t64Var;
            case 5:
                xy1 xy1Var5 = (xy1) obj;
                if (xy1Var5.H()) {
                    xy1.V(xy1Var5, false, 7);
                }
                return t64Var;
            case 6:
                xy1 xy1Var6 = (xy1) obj;
                if (xy1Var6.H()) {
                    xy1.X(xy1Var6, false, 7);
                }
                return t64Var;
            case 7:
                xy1 xy1Var7 = (xy1) obj;
                if (xy1Var7.H()) {
                    xy1Var7.F();
                }
                return t64Var;
            case 8:
                return t64Var;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return t64Var;
            case 10:
                return Integer.valueOf(((af3) obj).b);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                ns1 ns1Var = ((af3) obj).c;
                return Integer.valueOf(ns1Var.d - ns1Var.b);
            case 12:
                return t64Var;
            case 13:
                throw null;
            case 14:
                return new rs1((((long) ((int) (((rs1) obj).a & 4294967295L))) & 4294967295L) | (((long) 0) << 32));
            default:
                return new rs1((((long) ((int) (((rs1) obj).a & 4294967295L))) & 4294967295L) | (((long) 0) << 32));
        }
    }
}
