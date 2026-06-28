package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g11 extends xx1 implements pe1 {
    public final /* synthetic */ int o = 1;
    public final /* synthetic */ zl3 p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g11(zl3 zl3Var, i14 i14Var, i14 i14Var2, i14 i14Var3) {
        super(1);
        this.p = zl3Var;
        this.q = i14Var;
        this.r = i14Var2;
        this.s = i14Var3;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        Object obj2 = this.q;
        zl3 zl3Var = this.p;
        Object obj3 = this.s;
        switch (i) {
            case 0:
                o83 o83Var = (o83) obj;
                tr3 tr3Var = (tr3) obj2;
                float fFloatValue = tr3Var != null ? ((Number) tr3Var.getValue()).floatValue() : 1.0f;
                dh dhVar = zl3Var.c;
                float fG = fFloatValue * ((zl3Var.b() && ((Boolean) ((ws2) dhVar.a).getValue()).booleanValue()) ? ((ss2) dhVar.b).g() : 1.0f);
                if (zl3Var.b()) {
                    zl3Var.f = fG;
                }
                o83Var.c(fG);
                tr3 tr3Var2 = (tr3) this.r;
                float fFloatValue2 = tr3Var2 != null ? ((Number) tr3Var2.getValue()).floatValue() : 1.0f;
                boolean z = zl3Var.b() && ((Boolean) ((ws2) dhVar.c).getValue()).booleanValue();
                float fG2 = fFloatValue2 * (z ? ((ss2) dhVar.d).g() : 1.0f);
                if (zl3Var.b()) {
                    zl3Var.g = fG2;
                    if (z) {
                        if (zl3Var.j == null) {
                            zl3Var.j = new ta4(false);
                        }
                        ta4 ta4Var = zl3Var.j;
                        if (ta4Var != null) {
                            long j = zl3Var.d;
                            ta4Var.a(fG2, cy0.d((1 | (j - 1)) == Long.MAX_VALUE ? cy0.i(dm0.z(j)) : dm0.K(sd2.a(), j)));
                        }
                    }
                }
                o83Var.e(fG2);
                o83Var.g(fG2);
                tr3 tr3Var3 = (tr3) obj3;
                long j2 = tr3Var3 != null ? ((f14) tr3Var3.getValue()).a : f14.b;
                if (zl3Var.b() && ((Boolean) ((ws2) dhVar.e).getValue()).booleanValue()) {
                    j2 = ((f14) ((ws2) dhVar.f).getValue()).a;
                }
                if (zl3Var.b()) {
                    zl3Var.h = j2;
                }
                o83Var.h(j2);
                return t64.a;
            default:
                y31 y31Var = (y31) obj3;
                int iOrdinal = ((b11) obj).ordinal();
                f14 f14Var = null;
                if (iOrdinal == 0) {
                    o14 o14Var = y31Var.a;
                } else if (iOrdinal == 1) {
                    f14Var = (f14) obj2;
                } else {
                    if (iOrdinal != 2) {
                        p61.x();
                        return null;
                    }
                    o14 o14Var2 = y31Var.a;
                    f14Var = new f14(zl3Var.h);
                }
                return new f14(f14Var != null ? f14Var.a : f14.b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g11(f14 f14Var, o11 o11Var, y31 y31Var, zl3 zl3Var) {
        super(1);
        this.q = f14Var;
        this.r = o11Var;
        this.s = y31Var;
        this.p = zl3Var;
    }
}
