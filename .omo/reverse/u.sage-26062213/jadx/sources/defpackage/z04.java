package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z04 extends wm2 {
    public final zy f;
    public ir3 g;

    public z04(dg3 dg3Var, ja0 ja0Var, as0 as0Var) {
        super(dg3Var, ja0Var, as0Var);
        this.f = ix.c(Api.BaseClientBuilder.API_PRIORITY_OTHER, 6, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00dd, code lost:
    
        if (r0.f(r3, r7) == r10) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(defpackage.z04 r16, defpackage.dg3 r17, defpackage.x04 r18, defpackage.fh0 r19) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z04.c(z04, dg3, x04, fh0):java.lang.Object");
    }

    public static x04 e(zy zyVar) {
        x04 x04Var = null;
        bi3 bi3VarY = se0.y(new tb1(new he2(zyVar, 1), null));
        while (bi3VarY.hasNext()) {
            x04 x04VarA = (x04) bi3VarY.next();
            if (x04Var != null) {
                x04VarA = x04Var.a(x04VarA);
            }
            x04Var = x04VarA;
        }
        return x04Var;
    }

    public final boolean d(vv2 vv2Var) {
        boolean z;
        boolean z2;
        boolean z3;
        zy zyVar;
        dg3 dg3Var;
        zv2 zv2Var = (zv2) o70.i0(vv2Var.a);
        if (zv2Var != null) {
            List listB = zv2Var.b();
            int size = listB.size();
            int i = 0;
            z3 = false;
            while (true) {
                zyVar = this.f;
                dg3Var = this.a;
                if (i >= size) {
                    break;
                }
                vj1 vj1Var = (vj1) listB.get(i);
                long j = vj1Var.d ^ (-9223372034707292160L);
                if (!(dg3Var.j(dg3Var.f(j)) == 0.0f)) {
                    z3 = !(zyVar.n(new x04(j, vj1Var.a, false)) instanceof y30) || z3;
                }
                i++;
            }
            z = true;
            z2 = false;
            long j2 = zv2Var.l ^ (-9223372034707292160L);
            boolean z4 = vv2Var.c == 12;
            if (!(dg3Var.j(dg3Var.f(j2)) == 0.0f) || z4) {
                if (!(zyVar.n(new x04(j2, zv2Var.b, z4)) instanceof y30) || z3) {
                    z3 = true;
                }
            }
            return (!z3 || this.d) ? z : z2;
        }
        z = true;
        z2 = false;
        z3 = z2;
        if (z3) {
        }
    }
}
