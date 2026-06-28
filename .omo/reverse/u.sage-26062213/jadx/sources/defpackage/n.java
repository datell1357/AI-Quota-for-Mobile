package defpackage;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f215u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(Object obj, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f215u = obj2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((n) o((dh0) obj2, (hz2) obj)).q(t64Var);
            case 3:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 4:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 5:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 6:
                return ((n) o((dh0) obj2, (hz2) obj)).q(t64Var);
            case 7:
                return ((n) o((dh0) obj2, (b81) obj)).q(t64Var);
            case 8:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 10:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 12:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 13:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 14:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 15:
                return ((n) o((dh0) obj2, (pm0) obj)).q(t64Var);
            case 16:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 17:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return ((n) o((dh0) obj2, (lc2) obj)).q(t64Var);
            case 19:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 20:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 22:
                ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return ri0.n;
            case ConnectionResult.API_DISABLED /* 23 */:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return ((n) o((dh0) obj2, (vl2) obj)).q(t64Var);
            case 25:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 26:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 27:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 28:
                return ((n) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((n) o((dh0) obj2, (JSONObject) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.f215u;
        switch (i) {
            case 0:
                return new n((vf2) this.t, (ik1) obj2, dh0Var, 0);
            case 1:
                return new n((vf2) this.t, (jk1) obj2, dh0Var, 1);
            case 2:
                n nVar = new n((cr) obj2, dh0Var, 2);
                nVar.t = obj;
                return nVar;
            case 3:
                return new n((xr) this.t, (String) obj2, dh0Var, 3);
            case 4:
                return new n((yx) this.t, (l33) obj2, dh0Var, 4);
            case 5:
                return new n((dy) this.t, (pp) obj2, dh0Var, 5);
            case 6:
                n nVar2 = new n((p30) obj2, dh0Var, 6);
                nVar2.t = obj;
                return nVar2;
            case 7:
                n nVar3 = new n((r30) obj2, dh0Var, 7);
                nVar3.t = obj;
                return nVar3;
            case 8:
                return new n((a81) this.t, (zh3) obj2, dh0Var, 8);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                n nVar4 = new n((yh3) obj2, dh0Var, 9);
                nVar4.t = obj;
                return nVar4;
            case 10:
                return new n((v50) this.t, (Context) obj2, dh0Var, 10);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new n((cb0) obj2, dh0Var, 11);
            case 12:
                return new n((fb0) this.t, (Runnable) obj2, dh0Var, 12);
            case 13:
                return new n((df1) this.t, (vw2) obj2, dh0Var, 13);
            case 14:
                return new n((df1) this.t, (w33) obj2, dh0Var, 14);
            case 15:
                n nVar5 = new n((List) obj2, dh0Var, 15);
                nVar5.t = obj;
                return nVar5;
            case 16:
                return new n((fn0) this.t, (lc2) obj2, dh0Var, 16);
            case 17:
                return new n((df1) this.t, (am0) obj2, dh0Var, 17);
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                n nVar6 = new n((fn0) obj2, dh0Var, 18);
                nVar6.t = obj;
                return nVar6;
            case 19:
                return new n((y61) this.t, (ek3) obj2, dh0Var, 19);
            case 20:
                return new n((ju1) this.t, (pe1) obj2, dh0Var, 20);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new n((lb2) this.t, (Uri) obj2, dh0Var, 21);
            case 22:
                return new n((ur3) this.t, (zd2) obj2, dh0Var, 22);
            case ConnectionResult.API_DISABLED /* 23 */:
                n nVar7 = new n((me2) obj2, dh0Var, 23);
                nVar7.t = obj;
                return nVar7;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                n nVar8 = new n((ol2) obj2, dh0Var, 24);
                nVar8.t = obj;
                return nVar8;
            case 25:
                return new n((ul2) this.t, (hz2) obj2, dh0Var, 25);
            case 26:
                return new n((wm2) this.t, (df1) obj2, dh0Var, 26);
            case 27:
                n nVar9 = new n((n30) obj2, dh0Var, 27);
                nVar9.t = obj;
                return nVar9;
            case 28:
                return new n((o23) this.t, (jo1) obj2, dh0Var, 28);
            default:
                n nVar10 = new n((w53) obj2, dh0Var, 29);
                nVar10.t = obj;
                return nVar10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:201:0x039e, code lost:
    
        if (r3.b(r17) == r4) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0487, code lost:
    
        if (r0 == r3) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x04cc, code lost:
    
        if (r0 == r3) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:135:0x027b  */
    /* JADX WARN: Type inference failed for: r1v105, types: [int] */
    /* JADX WARN: Type inference failed for: r1v106, types: [tu1] */
    /* JADX WARN: Type inference failed for: r1v110, types: [tu1] */
    /* JADX WARN: Type inference failed for: r1v122 */
    /* JADX WARN: Type inference failed for: r1v123 */
    /* JADX WARN: Type inference failed for: r9v0, types: [dh0] */
    /* JADX WARN: Type inference failed for: r9v67, types: [java.util.concurrent.CancellationException] */
    /* JADX WARN: Type inference failed for: r9v69, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:135:0x027b -> B:127:0x0241). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(Object obj, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f215u = obj;
    }
}
