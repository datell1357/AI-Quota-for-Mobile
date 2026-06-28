package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.ScrollCaptureSession;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qd extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f276u;
    public Object v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd(om3 om3Var, a81 a81Var, wr3 wr3Var, Object obj, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 5;
        this.f276u = om3Var;
        this.v = a81Var;
        this.w = wr3Var;
        this.t = obj;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        ri0 ri0Var = ri0.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 3:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 4:
                return ((qd) o((dh0) obj2, (mm3) obj)).q(t64Var);
            case 5:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 6:
                ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return ri0Var;
            case 7:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 8:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 10:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 12:
                ((qd) o((dh0) obj2, (b81) obj)).q(t64Var);
                return ri0Var;
            case 13:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((qd) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.w;
        switch (i) {
            case 0:
                return new qd(this.t, (pd) this.f276u, (pg2) this.v, (pg2) obj2, dh0Var, 0);
            case 1:
                return new qd((fb0) this.t, (ScrollCaptureSession) this.f276u, (Rect) this.v, (Consumer) obj2, dh0Var, 1);
            case 2:
                return new qd((ct2) this.t, (og4) this.f276u, (AtomicInteger) this.v, (ListenableFuture) obj2, dh0Var, 2);
            case 3:
                return new qd((ConstraintTrackingWorker) this.t, (v42) this.f276u, (ct2) this.v, (og4) obj2, dh0Var, 3);
            case 4:
                qd qdVar = new qd((a81) this.f276u, (wr3) this.v, this.w, dh0Var, 4);
                qdVar.t = obj;
                return qdVar;
            case 5:
                return new qd((om3) this.f276u, (a81) this.v, (wr3) obj2, this.t, dh0Var);
            case 6:
                qd qdVar2 = new qd((pg2) this.v, (rq1) obj2, dh0Var);
                qdVar2.t = obj;
                return qdVar2;
            case 7:
                return new qd((String) this.t, (MainActivity) this.f276u, (String) this.v, (xi2) obj2, dh0Var, 7);
            case 8:
                qd qdVar3 = new qd((pg3) this.f276u, (yh2) this.v, (n14) obj2, dh0Var, 8);
                qdVar3.t = obj;
                return qdVar3;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new qd((x53) this.t, (Map) this.f276u, (n) this.v, (zr) obj2, dh0Var, 9);
            case 10:
                return new qd((m10) this.t, (GoogleSignInAccount) this.f276u, (n8) this.v, (y84) obj2, dh0Var, 10);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                qd qdVar4 = new qd((z04) obj2, dh0Var);
                qdVar4.t = obj;
                return qdVar4;
            case 12:
                qd qdVar5 = new qd((v24) this.f276u, (int[]) this.v, (String[]) obj2, dh0Var, 12);
                qdVar5.t = obj;
                return qdVar5;
            case 13:
                return new qd((w33) this.t, (h33) this.f276u, (p22) this.v, (hf4) obj2, dh0Var, 13);
            default:
                return new qd((v42) this.t, (og4) this.f276u, (ag4) this.v, (Context) obj2, dh0Var, 14);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x02a2, code lost:
    
        if (r1.e(true, r23) == r9) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x04aa, code lost:
    
        r17 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:353:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0267 -> B:109:0x0231). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qd.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd(pg2 pg2Var, rq1 rq1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 6;
        this.v = pg2Var;
        this.w = rq1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd(z04 z04Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 11;
        this.w = z04Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qd(Object obj, Object obj2, Object obj3, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f276u = obj;
        this.v = obj2;
        this.w = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qd(Object obj, Object obj2, Object obj3, Object obj4, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f276u = obj2;
        this.v = obj3;
        this.w = obj4;
    }
}
