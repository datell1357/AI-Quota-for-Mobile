package defpackage;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import android.view.InputEvent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import u.sage.MainActivity;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f251u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(Object obj, Object obj2, Object obj3, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f251u = obj2;
        this.v = obj3;
    }

    private final Object t(Object obj) {
        ne1 ppVar;
        ri0 ri0Var = ri0.n;
        int i = this.s;
        dh0 dh0Var = null;
        if (i == 0) {
            gg4.T(obj);
            hz2 hz2Var = (hz2) this.t;
            NetworkRequest networkRequestA = ((lf0) this.f251u).a();
            int i2 = 25;
            boolean z = false;
            if (networkRequestA == null) {
                zl2 zl2Var = ((lf0) this.f251u).a;
                zl2Var.getClass();
                if (zl2Var == zl2.n) {
                    networkRequestA = null;
                } else {
                    NetworkRequest.Builder builderRemoveCapability = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
                    if (Build.VERSION.SDK_INT < 30 || zl2Var != zl2.s) {
                        int iOrdinal = zl2Var.ordinal();
                        if (iOrdinal == 2) {
                            builderRemoveCapability = builderRemoveCapability.addCapability(11);
                        } else if (iOrdinal == 3) {
                            builderRemoveCapability = builderRemoveCapability.addCapability(18);
                        } else if (iOrdinal == 4) {
                            builderRemoveCapability = builderRemoveCapability.addTransportType(0);
                        }
                        networkRequestA = builderRemoveCapability.build();
                    } else {
                        networkRequestA = builderRemoveCapability.addCapability(25).build();
                    }
                }
            }
            if (networkRequestA == null) {
                hz2Var.getClass();
                hz2Var.a(null);
                return t64.a;
            }
            m mVar = new m(19, ca.y(hz2Var, null, null, new n((ul2) this.v, hz2Var, dh0Var, i2), 3), hz2Var);
            if (Build.VERSION.SDK_INT >= 30) {
                am3 am3Var = am3.a;
                ConnectivityManager connectivityManager = ((ul2) this.v).a;
                am3Var.getClass();
                synchronized (am3.b) {
                    try {
                        LinkedHashMap linkedHashMap = am3.c;
                        boolean zIsEmpty = linkedHashMap.isEmpty();
                        linkedHashMap.put(mVar, networkRequestA);
                        if (zIsEmpty) {
                            t72.g().c(sf4.a, "NetworkRequestConstraintController register shared callback");
                            connectivityManager.registerDefaultNetworkCallback(am3Var);
                        } else if (am3.e && am3.f != null) {
                            t72.g().c(sf4.a, "NetworkRequestConstraintController send initial capabilities");
                            NetworkCapabilities networkCapabilities = am3.d;
                            Boolean bool = am3.f;
                            bool.getClass();
                            if (!bool.booleanValue() && networkRequestA.canBeSatisfiedBy(networkCapabilities)) {
                                z = true;
                            }
                            mVar.k(z ? qf0.a : new rf0(7));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                ppVar = new h4(28, mVar, connectivityManager);
            } else {
                int i3 = mq1.c;
                ConnectivityManager connectivityManager2 = ((ul2) this.v).a;
                mq1 mq1Var = new mq1(mVar);
                s33 s33Var = new s33();
                try {
                    t72.g().c(sf4.a, "NetworkRequestConstraintController register callback");
                    connectivityManager2.registerNetworkCallback(networkRequestA, mq1Var);
                    s33Var.n = true;
                } catch (RuntimeException e) {
                    if (!gt3.r0(e.getClass().getName(), "TooManyRequestsException", false)) {
                        throw e;
                    }
                    t72.g().d(sf4.a, "NetworkRequestConstraintController couldn't register callback", e);
                    mVar.k(new rf0(7));
                }
                ppVar = new pp(s33Var, connectivityManager2, mq1Var, 5);
            }
            zi1 zi1Var = new zi1(1, ppVar);
            this.s = 1;
            if (c75.l(hz2Var, zi1Var, this) == ri0Var) {
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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003b, code lost:
    
        if (r0.b(r1, r7) == r6) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
    
        if (defpackage.ca.O(r1, r2, r7) == r6) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object u(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.v
            a81 r0 = (defpackage.a81) r0
            java.lang.Object r1 = r7.f251u
            hi0 r1 = (defpackage.hi0) r1
            int r2 = r7.s
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L1e
            if (r2 == r5) goto L1a
            if (r2 != r4) goto L14
            goto L1a
        L14:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r3
        L1a:
            defpackage.gg4.T(r8)
            goto L4d
        L1e:
            defpackage.gg4.T(r8)
            java.lang.Object r8 = r7.t
            gz2 r8 = (defpackage.gz2) r8
            d01 r2 = defpackage.d01.n
            boolean r2 = defpackage.nt1.g(r1, r2)
            ri0 r6 = defpackage.ri0.n
            if (r2 == 0) goto L3e
            ep3 r1 = new ep3
            r2 = 0
            r1.<init>(r8, r2)
            r7.s = r5
            java.lang.Object r7 = r0.b(r1, r7)
            if (r7 != r6) goto L4d
            goto L4c
        L3e:
            d93 r2 = new d93
            r5 = 7
            r2.<init>(r0, r8, r3, r5)
            r7.s = r4
            java.lang.Object r7 = defpackage.ca.O(r1, r2, r7)
            if (r7 != r6) goto L4d
        L4c:
            return r6
        L4d:
            t64 r7 = defpackage.t64.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p.u(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((p) o((dh0) obj2, (w3) obj)).q(t64Var);
            case 3:
                return ((p) o((dh0) obj2, (gz2) obj)).q(t64Var);
            case 4:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 5:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 6:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 7:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 8:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return ((p) o((dh0) obj2, (b81) obj)).q(t64Var);
            case 10:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return ((p) o((dh0) obj2, (jf3) obj)).q(t64Var);
            case 12:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 13:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 14:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 15:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 16:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 17:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return ((p) o((dh0) obj2, (hz2) obj)).q(t64Var);
            case 19:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 20:
                return ((p) o((dh0) obj2, (hz2) obj)).q(t64Var);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 22:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.API_DISABLED /* 23 */:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return ((p) o((dh0) obj2, (bg3) obj)).q(t64Var);
            case 25:
                return ((p) o((dh0) obj2, (jf3) obj)).q(t64Var);
            case 26:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 27:
                return ((p) o((dh0) obj2, (gz2) obj)).q(t64Var);
            default:
                return ((p) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.v;
        switch (i) {
            case 0:
                return new p((vf2) this.t, (gy2) this.f251u, (jv0) obj2, dh0Var, 0);
            case 1:
                p pVar = new p((String) this.f251u, (pg2) obj2, dh0Var, 1);
                pVar.t = obj;
                return pVar;
            case 2:
                p pVar2 = new p((String) this.f251u, (y3) obj2, dh0Var, 2);
                pVar2.t = obj;
                return pVar2;
            case 3:
                p pVar3 = new p((n14) this.f251u, (pg2) obj2, dh0Var, 3);
                pVar3.t = obj;
                return pVar3;
            case 4:
                return new p((zi) this.f251u, (ti) obj2, dh0Var, 4);
            case 5:
                return new p((a) this.f251u, (v43) obj2, dh0Var, 5);
            case 6:
                return new p((dy) this.t, (mm2) this.f251u, (j9) obj2, dh0Var, 6);
            case 7:
                p pVar4 = new p((b81) this.f251u, (p30) obj2, dh0Var, 7);
                pVar4.t = obj;
                return pVar4;
            case 8:
                return new p((w33) this.f251u, (lw2) obj2, dh0Var, 8);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                p pVar5 = new p((fn0) obj2, dh0Var, 9);
                pVar5.f251u = obj;
                return pVar5;
            case 10:
                p pVar6 = new p((fn0) this.f251u, (df1) obj2, dh0Var, 10);
                pVar6.t = obj;
                return pVar6;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                p pVar7 = new p((hg) this.f251u, (df1) obj2, dh0Var, 11);
                pVar7.t = obj;
                return pVar7;
            case 12:
                return new p((hg) this.t, (xg2) this.f251u, (df1) obj2, dh0Var, 12);
            case 13:
                return new p((vf2) this.t, (ws1) this.f251u, (jv0) obj2, dh0Var, 13);
            case 14:
                return new p((zy) obj2, dh0Var, 14);
            case 15:
                p pVar8 = new p((df1) this.f251u, (b20) obj2, dh0Var, 15);
                pVar8.t = obj;
                return pVar8;
            case 16:
                return new p((MainActivity) this.t, (String) this.f251u, (Intent) obj2, dh0Var, 16);
            case 17:
                return new p((lb2) this.t, (Uri) this.f251u, (InputEvent) obj2, dh0Var, 17);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                p pVar9 = new p((File) obj2, dh0Var, 18);
                pVar9.f251u = obj;
                return pVar9;
            case 19:
                return new p((pg3) this.t, (pg2) this.f251u, (ss2) obj2, dh0Var, 19);
            case 20:
                p pVar10 = new p((lf0) this.f251u, (ul2) obj2, dh0Var, 20);
                pVar10.t = obj;
                return pVar10;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                p pVar11 = new p((o23) this.f251u, (jo1) obj2, dh0Var, 21);
                pVar11.t = obj;
                return pVar11;
            case 22:
                p pVar12 = new p((g33) this.f251u, (qc) obj2, dh0Var, 22);
                pVar12.t = obj;
                return pVar12;
            case ConnectionResult.API_DISABLED /* 23 */:
                p pVar13 = new p((z80) this.f251u, (df1) obj2, dh0Var, 23);
                pVar13.t = obj;
                return pVar13;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                p pVar14 = new p((xw0) this.f251u, (dg3) obj2, dh0Var, 24);
                pVar14.t = obj;
                return pVar14;
            case 25:
                p pVar15 = new p((dg3) this.f251u, (df1) obj2, dh0Var, 25);
                pVar15.t = obj;
                return pVar15;
            case 26:
                return new p((ArrayList) this.t, (y84) this.f251u, (n12) obj2, dh0Var, 26);
            case 27:
                p pVar16 = new p((hi0) this.f251u, (a81) obj2, dh0Var, 27);
                pVar16.t = obj;
                return pVar16;
            default:
                return new p((ib0) obj2, dh0Var, 28);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x02d9, code lost:
    
        if (defpackage.c75.l(r2, r4, r14) == r0) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x065f, code lost:
    
        if (r14 == r9) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x08ad, code lost:
    
        if (r0.m(r14) == r10) goto L442;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x094d, code lost:
    
        if (r14 == r2) goto L467;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:209:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0415 A[Catch: all -> 0x03e9, TryCatch #6 {all -> 0x03e9, blocks: (B:200:0x03e4, B:210:0x040d, B:212:0x0415, B:213:0x0422, B:220:0x0432, B:207:0x03ff, B:222:0x0435, B:225:0x043b, B:226:0x043c, B:206:0x03fa, B:214:0x0423, B:216:0x0429), top: B:539:0x03d8, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0657  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0663  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x07c0  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x07cc  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x07cf  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x08e6  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0987  */
    /* JADX WARN: Removed duplicated region for block: B:510:0x0a58  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0a83  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0a9a  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v39, types: [n30] */
    /* JADX WARN: Type inference failed for: r2v41, types: [zy] */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v43, types: [n30] */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r6v0, types: [dh0] */
    /* JADX WARN: Type inference failed for: r6v12, types: [gs2] */
    /* JADX WARN: Type inference failed for: r6v77 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:208:0x0409 -> B:210:0x040d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:511:0x0a62 -> B:513:0x0a66). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(Object obj, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f251u = obj;
        this.v = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(Object obj, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.v = obj;
    }
}
