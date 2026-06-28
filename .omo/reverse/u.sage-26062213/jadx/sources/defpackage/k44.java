package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k44 extends g34 {
    public final /* synthetic */ int a;
    public final boolean b;

    public /* synthetic */ k44(boolean z, int i) {
        this.a = i;
        this.b = z;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        switch (this.a) {
            case 0:
                if (ww1Var.s0() != 9) {
                    return Double.valueOf(ww1Var.Y());
                }
                ww1Var.o0();
                return null;
            default:
                if (ww1Var.s0() != 9) {
                    return Float.valueOf((float) ww1Var.Y());
                }
                ww1Var.o0();
                return null;
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        int i = this.a;
        boolean z = this.b;
        switch (i) {
            case 0:
                Number number = (Number) obj;
                if (number != null) {
                    double dDoubleValue = number.doubleValue();
                    if (z) {
                        m44.a(dDoubleValue);
                    }
                    bx1Var.Z(dDoubleValue);
                } else {
                    bx1Var.L();
                }
                break;
            default:
                Number numberValueOf = (Number) obj;
                if (numberValueOf != null) {
                    float fFloatValue = numberValueOf.floatValue();
                    if (z) {
                        m44.a(fFloatValue);
                    }
                    if (!(numberValueOf instanceof Float)) {
                        numberValueOf = Float.valueOf(fFloatValue);
                    }
                    bx1Var.j0(numberValueOf);
                } else {
                    bx1Var.L();
                }
                break;
        }
    }
}
