package defpackage;

import android.os.Build;
import android.util.Log;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dd1 implements f6, l83, iz2, yi0, z21, uv2, kb3, xo2, x5, cf, la4, jp2 {
    public final /* synthetic */ int n;
    public Object o;

    public dd1(int i) {
        this.n = i;
        switch (i) {
            case 5:
                x92 x92Var = new x92();
                this.o = x92Var;
                if (!x92Var.o) {
                    if (x92Var.p) {
                        jx2.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    x92Var.a();
                    x92Var.p = true;
                    break;
                }
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                int i2 = 19;
                this.o = Build.VERSION.SDK_INT >= 28 ? new qz0(i2) : new b21(i2);
                break;
            case 12:
                this.o = new HashMap();
                break;
            case 14:
                this.o = ca.A(Boolean.FALSE);
                break;
            case 29:
                this.o = new EnumMap(x55.class);
                break;
            default:
                this.o = null;
                break;
        }
    }

    public static m02 u(dd1 dd1Var, int i) {
        n12 n12Var = (n12) dd1Var.o;
        po3 po3VarX = k75.x();
        pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
        po3 po3VarE = k75.E(po3VarX);
        try {
            f12 f12Var = (f12) n12Var.f.getValue();
            k75.L(po3VarX, po3VarE, pe1VarE);
            n02 n02Var = n12Var.q;
            long j = f12Var.j;
            boolean z = n12Var.d;
            t3 t3Var = new t3(i, f12Var);
            mu0 mu0Var = n02Var.c;
            if (mu0Var == null) {
                return w13.y;
            }
            eh ehVar = n02Var.b;
            dy2 dy2Var = (dy2) mu0Var.d;
            boolean z2 = dy2Var instanceof ac;
            cy2 cy2Var = new cy2(mu0Var, i, ehVar, t3Var);
            cy2Var.q = new mf0(j);
            if (!z2) {
                dy2Var.a(cy2Var);
            } else if (z) {
                ac acVar = (ac) dy2Var;
                acVar.o.add(new ty2(1, cy2Var));
                if (!acVar.p) {
                    acVar.p = true;
                    acVar.n.post(acVar);
                }
            } else {
                ac acVar2 = (ac) dy2Var;
                acVar2.o.add(new ty2(0, cy2Var));
                if (!acVar2.p) {
                    acVar2.p = true;
                    acVar2.n.post(acVar2);
                }
            }
            kt4.h0(i, "compose:lazy:schedule_prefetch:index");
            return cy2Var;
        } catch (Throwable th) {
            k75.L(po3VarX, po3VarE, pe1VarE);
            throw th;
        }
    }

    @Override // defpackage.la4, defpackage.ia4
    public boolean a() {
        ((qd1) this.o).getClass();
        return false;
    }

    @Override // defpackage.yi0
    public Object b(xi0 xi0Var) {
        return ((pe1) this.o).k(xi0Var);
    }

    @Override // defpackage.ia4
    public long c(bf bfVar, bf bfVar2, bf bfVar3) {
        return ((qd1) this.o).c(bfVar, bfVar2, bfVar3);
    }

    @Override // defpackage.kb3
    public jb3 d(String str) {
        str.getClass();
        return new ju3(((mu3) this.o).f0());
    }

    @Override // defpackage.z21
    public i23 e() throws Throwable {
        wa3 wa3VarB;
        IOException iOException = null;
        while (!((u23) this.o).k.C) {
            try {
                wa3VarB = ((u23) this.o).b();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    on4.j(iOException, e);
                }
                if (!((u23) this.o).a(null)) {
                    throw iOException;
                }
            }
            if (!wa3VarB.d()) {
                va3 va3VarE = wa3VarB.e();
                if (va3VarE.b == null && va3VarE.c == null) {
                    va3VarE = wa3VarB.b();
                }
                wa3 wa3Var = va3VarE.b;
                Throwable th = va3VarE.c;
                if (th != null) {
                    throw th;
                }
                if (wa3Var != null) {
                    ((u23) this.o).p.addFirst(wa3Var);
                }
            }
            return wa3VarB.c();
        }
        p61.k("Canceled");
        return null;
    }

    @Override // defpackage.f6
    public void f(Object obj) {
        e6 e6Var = (e6) obj;
        hd1 hd1Var = (hd1) this.o;
        ed1 ed1Var = (ed1) hd1Var.C.pollFirst();
        if (ed1Var == null) {
            Log.w("FragmentManager", "No Activities were started for result for " + this);
            return;
        }
        String str = ed1Var.n;
        int i = ed1Var.o;
        lc1 lc1VarU = hd1Var.c.u(str);
        if (lc1VarU != null) {
            lc1VarU.onActivityResult(i, e6Var.n, e6Var.o);
            return;
        }
        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
    }

    @Override // defpackage.z21
    public u23 g() {
        return (u23) this.o;
    }

    @Override // defpackage.cf
    public s71 get(int i) {
        return (y71) this.o;
    }

    @Override // defpackage.jp2
    public void h(Object obj) {
        ((pw3) ((ra3) this.o).o).a.q();
    }

    public String i(Object obj) {
        StringWriter stringWriter = new StringWriter();
        try {
            tv1 tv1Var = (tv1) this.o;
            ax1 ax1Var = new ax1(stringWriter, tv1Var.a, tv1Var.b, tv1Var.c, tv1Var.d);
            ax1Var.h(obj);
            ax1Var.j();
            ax1Var.b.flush();
        } catch (IOException unused) {
        }
        return stringWriter.toString();
    }

    @Override // defpackage.uv2
    public long j(float f, float f2) {
        long jB = xa2.b((float[]) this.o, (((long) Float.floatToRawIntBits(f2)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
        return v71.a(Float.intBitsToFloat((int) (jB >> 32)), Float.intBitsToFloat((int) (jB & 4294967295L)));
    }

    @Override // defpackage.iz2
    public void l() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // defpackage.ia4
    public bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return ((qd1) this.o).m(j, bfVar, bfVar2, bfVar3);
    }

    @Override // defpackage.iz2
    public void n(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.o).setResultCode(i);
    }

    @Override // defpackage.xo2
    public void onComplete(ow3 ow3Var) {
        Exception excF = ow3Var.f();
        if (excF != null) {
            ((o20) this.o).g(new f83(excF));
            return;
        }
        boolean z = ((ef5) ow3Var).d;
        o20 o20Var = (o20) this.o;
        if (z) {
            o20Var.l(null);
        } else {
            o20Var.g(ow3Var.g());
        }
    }

    @Override // defpackage.ia4
    public bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return ((qd1) this.o).p(j, bfVar, bfVar2, bfVar3);
    }

    @Override // defpackage.ia4
    public bf q(bf bfVar, bf bfVar2, bf bfVar3) {
        return ((qd1) this.o).q(bfVar, bfVar2, bfVar3);
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.rb2 r(defpackage.jo1 r18, defpackage.qb2 r19, defpackage.ln3 r20, defpackage.rd3 r21) {
        /*
            Method dump skipped, instruction units count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dd1.r(jo1, qb2, ln3, rd3):rb2");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.qb2 s(defpackage.jo1 r8, java.lang.Object r9, defpackage.er2 r10, defpackage.j21 r11) {
        /*
            Method dump skipped, instruction units count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dd1.s(jo1, java.lang.Object, er2, j21):qb2");
    }

    public void t(Object obj, String str) {
        w80.H(str, "ID");
        ((HashMap) this.o).put(str.toLowerCase(Locale.ROOT), obj);
    }

    public String toString() {
        switch (this.n) {
            case 12:
                return ((HashMap) this.o).toString();
            case 29:
                StringBuilder sb = new StringBuilder("1");
                for (x55 x55Var : x55.values()) {
                    gs4 gs4Var = (gs4) ((EnumMap) this.o).get(x55Var);
                    if (gs4Var == null) {
                        gs4Var = gs4.UNSET;
                    }
                    sb.append(gs4Var.n);
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v(defpackage.x55 r2, int r3) {
        /*
            r1 = this;
            r0 = -30
            if (r3 == r0) goto L1e
            r0 = -20
            if (r3 == r0) goto L1b
            r0 = -10
            if (r3 == r0) goto L18
            if (r3 == 0) goto L1b
            r0 = 30
            if (r3 == r0) goto L15
            gs4 r3 = defpackage.gs4.UNSET
            goto L20
        L15:
            gs4 r3 = defpackage.gs4.INITIALIZATION
            goto L20
        L18:
            gs4 r3 = defpackage.gs4.MANIFEST
            goto L20
        L1b:
            gs4 r3 = defpackage.gs4.API
            goto L20
        L1e:
            gs4 r3 = defpackage.gs4.TCF
        L20:
            java.lang.Object r1 = r1.o
            java.util.EnumMap r1 = (java.util.EnumMap) r1
            r1.put(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dd1.v(x55, int):void");
    }

    public void w(x55 x55Var, gs4 gs4Var) {
        ((EnumMap) this.o).put(x55Var, gs4Var);
    }

    public void x(int i, Object obj, cp4 cp4Var) {
        jn4 jn4Var = (jn4) this.o;
        sm4 sm4Var = (sm4) obj;
        jn4Var.d(i, 2);
        jn4Var.r(sm4Var.c(cp4Var));
        cp4Var.i(sm4Var, this);
    }

    public /* synthetic */ dd1(int i, boolean z) {
        this.n = i;
    }

    public dd1(jn4 jn4Var) {
        this.n = 28;
        this.o = jn4Var;
        jn4Var.a = this;
    }

    public dd1(gt4 gt4Var, ra3 ra3Var) {
        this.n = 27;
        this.o = ra3Var;
        Objects.requireNonNull(gt4Var);
    }

    public dd1(EnumMap enumMap) {
        this.n = 29;
        EnumMap enumMap2 = new EnumMap(x55.class);
        this.o = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public dd1(mu3 mu3Var) {
        this.n = 19;
        mu3Var.getClass();
        this.o = mu3Var;
    }

    public dd1(as0 as0Var) {
        this.n = 18;
        this.o = new ld(uq3.a, as0Var);
    }

    public dd1(o23 o23Var, gw4 gw4Var) {
        this.n = 6;
        this.o = o23Var;
    }

    public dd1(long[] jArr) {
        xf2 xf2Var;
        this.n = 17;
        if (jArr != null) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, jArr.length);
            xf2Var = new xf2(jArrCopyOf.length);
            int i = xf2Var.b;
            if (i >= 0) {
                if (jArrCopyOf.length != 0) {
                    int length = jArrCopyOf.length + i;
                    long[] jArr2 = xf2Var.a;
                    if (jArr2.length < length) {
                        xf2Var.a = Arrays.copyOf(jArr2, Math.max(length, (jArr2.length * 3) / 2));
                    }
                    long[] jArr3 = xf2Var.a;
                    int i2 = xf2Var.b;
                    if (i != i2) {
                        ji.P(jArr3, jArr3, jArrCopyOf.length + i, i, i2);
                    }
                    ji.P(jArrCopyOf, jArr3, i, 0, jArrCopyOf.length);
                    xf2Var.b += jArrCopyOf.length;
                }
            } else {
                mk0.h("");
                throw null;
            }
        } else {
            xf2Var = new xf2();
        }
        this.o = xf2Var;
    }

    public /* synthetic */ dd1(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    public dd1(float f, float f2, bf bfVar) {
        Object dd1Var;
        this.n = 25;
        int[] iArr = ja4.a;
        if (bfVar != null) {
            dd1Var = new ra3(f, f2, bfVar);
        } else {
            dd1Var = new dd1(f, f2);
        }
        this.o = new qd1(16, dd1Var);
    }

    public dd1(float f, float f2) {
        this.n = 24;
        this.o = new y71(f, f2, 0.01f);
    }
}
