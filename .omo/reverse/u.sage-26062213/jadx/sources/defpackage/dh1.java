package defpackage;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import java.net.InetAddress;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class dh1 implements hc2, ug, wt3, k8, zm1, r33, g60, fd4 {
    public static volatile dh1 o;
    public static final pg1 p = new pg1(1);
    public static final pr3 q = new pr3(17);
    public Object n;

    public dh1(int i, boolean z) {
        pc2 pc2Var;
        switch (i) {
            case 1:
                zz2 zz2Var = zz2.c;
                try {
                    pc2Var = (pc2) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
                } catch (Exception unused) {
                    pc2Var = p;
                }
                pc2[] pc2VarArr = {pg1.b, pc2Var};
                y92 y92Var = new y92();
                y92Var.a = pc2VarArr;
                Charset charset = dt1.a;
                this.n = y92Var;
                break;
            case 2:
                int i2 = um4.a;
                this.n = new ra3(14, new ro4[]{qv3.s, q});
                break;
            case 19:
                this.n = new ArrayList(20);
                break;
            case ConnectionResult.API_DISABLED /* 23 */:
                this.n = ca.A(Boolean.FALSE);
                break;
            case 25:
                this.n = new e82();
                break;
            default:
                this.n = new HashSet();
                break;
        }
    }

    @Override // defpackage.r33
    public pm1 a(om1 om1Var, vm1 vm1Var, ul1 ul1Var) {
        URI uriA = ((vp0) ((p33) this.n)).a(vm1Var, ul1Var);
        return ((hv) om1Var.getRequestLine()).o.equalsIgnoreCase(HttpMethods.HEAD) ? new wl1(uriA, 2) : new wl1(uriA, 1);
    }

    @Override // defpackage.hc2
    public void b(ub2 ub2Var, boolean z) {
        if (ub2Var instanceof kt3) {
            ((kt3) ub2Var).v.j().c(false);
        }
        hc2 hc2Var = ((u5) this.n).r;
        if (hc2Var != null) {
            hc2Var.b(ub2Var, z);
        }
    }

    @Override // defpackage.g60
    public void c(t92 t92Var, long j) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.g60
    public je3 d() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.zm1
    public ym1 f(em1 em1Var, om1 om1Var, ul1 ul1Var) throws cm1 {
        km1 params = om1Var.getParams();
        em1 em1Var2 = td0.a;
        w80.L(params, "Parameters");
        ym1 ym1Var = (ym1) params.c("http.route.forced-route");
        if (ym1Var != null && td0.b.equals(ym1Var)) {
            ym1Var = null;
        }
        if (ym1Var != null) {
            return ym1Var;
        }
        mt1.O(em1Var, "Target host");
        km1 params2 = om1Var.getParams();
        w80.L(params2, "Parameters");
        InetAddress inetAddress = (InetAddress) params2.c("http.route.local-address");
        km1 params3 = om1Var.getParams();
        w80.L(params3, "Parameters");
        em1 em1Var3 = (em1) params3.c("http.route.default-proxy");
        em1 em1Var4 = (em1Var3 == null || !td0.a.equals(em1Var3)) ? em1Var3 : null;
        try {
            boolean z = ((je3) this.n).a(em1Var.q).d;
            return em1Var4 == null ? new ym1(em1Var, inetAddress, z) : new ym1(em1Var, inetAddress, em1Var4, z);
        } catch (IllegalStateException e) {
            throw new cm1(e.getMessage());
        }
    }

    @Override // defpackage.g60
    public i60 g(ym1 ym1Var, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.r33
    public boolean h(om1 om1Var, vm1 vm1Var, ul1 ul1Var) {
        ((vp0) ((p33) this.n)).getClass();
        w80.L(vm1Var, "HTTP response");
        int i = vm1Var.b().o;
        if (i != 307) {
            switch (i) {
                case HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY /* 301 */:
                case HttpStatusCodes.STATUS_CODE_FOUND /* 302 */:
                    break;
                case HttpStatusCodes.STATUS_CODE_SEE_OTHER /* 303 */:
                    return true;
                default:
                    return false;
            }
        }
        String str = ((hv) ((om1) ul1Var.b("http.request")).getRequestLine()).o;
        return str.equalsIgnoreCase(HttpMethods.GET) || str.equalsIgnoreCase(HttpMethods.HEAD);
    }

    @Override // defpackage.k8
    public void j(Bundle bundle) {
        ((h8) ((g8) this.n)).a("clx", "_ae", bundle);
    }

    @Override // defpackage.hc2
    public boolean l(ub2 ub2Var) {
        u5 u5Var = (u5) this.n;
        if (ub2Var == u5Var.p) {
            return false;
        }
        ((kt3) ub2Var).w.getClass();
        hc2 hc2Var = u5Var.r;
        if (hc2Var != null) {
            return hc2Var.l(ub2Var);
        }
        return false;
    }

    public kj1 m() {
        return new kj1((String[]) ((ArrayList) this.n).toArray(new String[0]));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void n(defpackage.v30 r5, defpackage.fh0 r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof defpackage.ao2
            if (r0 == 0) goto L13
            r0 = r6
            ao2 r0 = (defpackage.ao2) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            ao2 r0 = new ao2
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.q
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 == r2) goto L27
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return
        L27:
            defpackage.gg4.T(r6)
            defpackage.p61.q()
            return
        L2e:
            defpackage.gg4.T(r6)
            java.lang.Object r4 = r4.n
            wr3 r4 = (defpackage.wr3) r4
            r0.s = r2
            r4.b(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh1.n(v30, fh0):void");
    }

    public void o(float f, float f2, float f3, float f4) {
        eh ehVar = (eh) this.n;
        v20 v20VarU = ehVar.u();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (ehVar.z() >> 32)) - (f3 + f);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (ehVar.z() & 4294967295L)) - (f4 + f2))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
        if (Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) < 0.0f || Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L)) < 0.0f) {
            zq1.a("Width and height must be greater than or equal to zero");
        }
        ehVar.K(jFloatToRawIntBits);
        v20VarU.f(f, f2);
    }

    public ft1 p(xh1 xh1Var, q9 q9Var) {
        long j;
        boolean z;
        long J;
        e82 e82Var = (e82) this.n;
        List list = (List) xh1Var.n;
        e82 e82Var2 = new e82(list.size());
        int size = list.size();
        int i = 0;
        while (i < size) {
            bw2 bw2Var = (bw2) list.get(i);
            long j2 = bw2Var.a;
            aw2 aw2Var = (aw2) e82Var.a(j2);
            if (aw2Var == null) {
                j = bw2Var.b;
                J = bw2Var.d;
                z = false;
            } else {
                long j3 = aw2Var.a;
                j = j3;
                z = aw2Var.c;
                J = q9Var.J(aw2Var.b);
            }
            long j4 = bw2Var.a;
            int i2 = i;
            List list2 = list;
            int i3 = size;
            e82Var2.c(j4, new zv2(j4, bw2Var.b, bw2Var.d, bw2Var.e, bw2Var.f, j, J, z, bw2Var.g, bw2Var.i, bw2Var.j, bw2Var.k, bw2Var.l, bw2Var.m));
            boolean z2 = bw2Var.e;
            if (z2) {
                e82Var.c(j2, new aw2(bw2Var.b, bw2Var.c, z2));
            } else {
                e82Var.d(j2);
            }
            i = i2 + 1;
            list = list2;
            size = i3;
        }
        return new ft1(e82Var2, xh1Var);
    }

    public void q(String str) {
        ArrayList arrayList = (ArrayList) this.n;
        int i = 0;
        while (i < arrayList.size()) {
            if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                arrayList.remove(i);
                arrayList.remove(i);
                i -= 2;
            }
            i += 2;
        }
    }

    public void r(float f, long j) {
        v20 v20VarU = ((eh) this.n).u();
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        v20VarU.f(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        v20VarU.b(f);
        v20VarU.f(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
    }

    public void s(float f, float f2, long j) {
        v20 v20VarU = ((eh) this.n).u();
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        v20VarU.f(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        v20VarU.a(f, f2);
        v20VarU.f(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
    }

    @Override // defpackage.g60
    public void shutdown() {
        ((ax2) ((et1) this.n).p).shutdown();
    }

    public void t(float f, float f2) {
        ((eh) this.n).u().f(f, f2);
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        mk3 mk3Var = (mk3) obj;
        dj0 dj0Var = ((bj0) this.n).e;
        if (mk3Var != null) {
            return mt1.Y(Arrays.asList(dj0.a(dj0Var), dj0Var.m.r(null, (qk0) dj0Var.e.o)));
        }
        Log.w("FirebaseCrashlytics", "Received null app settings, cannot send reports at crash time.", null);
        return mt1.t(null);
    }

    public void u(int i, Object obj, be3 be3Var) {
        d70 d70Var = (d70) this.n;
        d70Var.B(i, 3);
        be3Var.h((l1) obj, d70Var.a);
        d70Var.B(i, 4);
    }

    @Override // defpackage.ug
    public void e(int i) {
    }

    @Override // defpackage.ug
    public void i(int i) {
    }

    @Override // defpackage.ug
    public void k(int i, float f) {
    }

    public /* synthetic */ dh1(Object obj) {
        this.n = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[PHI: r9
  0x0024: PHI (r9v1 int) = (r9v0 int), (r9v3 int), (r9v4 int) binds: [B:5:0x0014, B:10:0x001d, B:12:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public dh1(int[] r23, float[] r24, float[][] r25) {
        /*
            r22 = this;
            r0 = r24
            r22.<init>()
            int r1 = r0.length
            r2 = 1
            int r1 = r1 - r2
            lh[][] r3 = new defpackage.lh[r1][]
            r4 = 0
            r6 = r2
            r7 = r6
            r5 = r4
        Le:
            if (r5 >= r1) goto L73
            r8 = r23[r5]
            r9 = 3
            r10 = 2
            if (r8 == 0) goto L24
            if (r8 == r2) goto L2d
            if (r8 == r10) goto L2b
            if (r8 == r9) goto L26
            r9 = 4
            if (r8 == r9) goto L24
            r9 = 5
            if (r8 == r9) goto L24
            r12 = r7
            goto L2f
        L24:
            r12 = r9
            goto L2f
        L26:
            if (r6 != r2) goto L2d
            goto L2b
        L29:
            r12 = r6
            goto L2f
        L2b:
            r6 = r10
            goto L29
        L2d:
            r6 = r2
            goto L29
        L2f:
            r7 = r25[r5]
            int r8 = r5 + 1
            r9 = r25[r8]
            r13 = r0[r5]
            r14 = r0[r8]
            int r11 = r7.length
            int r11 = r11 / r10
            int r15 = r7.length
            int r15 = r15 % r10
            int r10 = r15 + r11
            lh[] r11 = new defpackage.lh[r10]
            r15 = r4
        L42:
            if (r15 >= r10) goto L6c
            int r16 = r15 * 2
            r17 = r11
            lh r11 = new lh
            r18 = r15
            r15 = r7[r16]
            int r19 = r16 + 1
            r20 = r16
            r16 = r7[r19]
            r20 = r9[r20]
            r19 = r9[r19]
            r21 = r19
            r19 = r17
            r17 = r20
            r20 = r18
            r18 = r21
            r11.<init>(r12, r13, r14, r15, r16, r17, r18)
            r19[r20] = r11
            int r15 = r20 + 1
            r11 = r19
            goto L42
        L6c:
            r19 = r11
            r3[r5] = r19
            r5 = r8
            r7 = r12
            goto Le
        L73:
            r5 = r22
            r5.n = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dh1.<init>(int[], float[], float[][]):void");
    }
}
