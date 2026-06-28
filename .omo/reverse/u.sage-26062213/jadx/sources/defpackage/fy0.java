package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fy0 implements lx1 {
    public static final fy0 a = new fy0();
    public static final py2 b = new py2("kotlin.time.Duration", ny2.X);

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        bx3 bx3Var = cy0.o;
        String strX = vn0Var.x();
        strX.getClass();
        try {
            long jN = c75.N(strX);
            if (jN == cy0.r) {
                throw new IllegalStateException("invariant failed");
            }
            return new cy0(jN);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(di0.v("Invalid ISO duration string format: '", strX, "'."), e);
        }
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        long j = ((cy0) obj).n;
        bx3 bx3Var = cy0.o;
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append('-');
        }
        sb.append("PT");
        long jI = j < 0 ? cy0.i(j) : j;
        long jH = cy0.h(jI, gy0.HOURS);
        boolean z = false;
        int iH = cy0.f(jI) ? 0 : (int) (cy0.h(jI, gy0.MINUTES) % 60);
        int iH2 = cy0.f(jI) ? 0 : (int) (cy0.h(jI, gy0.SECONDS) % 60);
        int iE = cy0.e(jI);
        if (cy0.f(j)) {
            jH = 9999999999999L;
        }
        boolean z2 = jH != 0;
        boolean z3 = (iH2 == 0 && iE == 0) ? false : true;
        if (iH != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(jH);
            sb.append('H');
        }
        if (z) {
            sb.append(iH);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            cy0.b(sb, iH2, iE, 9, "S", true);
        }
        bVar.r(sb.toString());
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
