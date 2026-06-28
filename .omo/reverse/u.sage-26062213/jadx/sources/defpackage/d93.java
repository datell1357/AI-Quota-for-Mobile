package defpackage;

import android.view.View;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d93 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f65u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d93(Object obj, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f65u = obj2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 3:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 4:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 5:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 6:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 7:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 8:
                ((d93) o((dh0) obj2, (b81) obj)).q(t64Var);
                return ri0.n;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 10:
                return ((d93) o((dh0) obj2, obj)).q(t64Var);
            default:
                return ((d93) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                return new d93((dc) this.t, (ve) this.f65u, dh0Var, 0);
            case 1:
                d93 d93Var = new d93((dc) this.t, dh0Var);
                d93Var.f65u = obj;
                return d93Var;
            case 2:
                return new d93((pw0) this.t, (wf3) this.f65u, dh0Var, 2);
            case 3:
                return new d93((m10) this.t, (GoogleSignInAccount) this.f65u, dh0Var, 3);
            case 4:
                return new d93((km3) this.t, (gj3) this.f65u, dh0Var, 4);
            case 5:
                return new d93((qd1) this.f65u, dh0Var, 5);
            case 6:
                return new d93((fo3) this.t, (w2) this.f65u, dh0Var, 6);
            case 7:
                return new d93((a81) this.t, (gz2) this.f65u, dh0Var, 7);
            case 8:
                d93 d93Var2 = new d93((vt3) this.f65u, dh0Var, 8);
                d93Var2.t = obj;
                return d93Var2;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return new d93((v24) this.t, (ne1) this.f65u, dh0Var, 9);
            case 10:
                d93 d93Var3 = new d93((b81) this.f65u, dh0Var, 10);
                d93Var3.t = obj;
                return d93Var3;
            default:
                return new d93((h33) this.t, (View) this.f65u, dh0Var, 11);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x01d9, code lost:
    
        if (r2.f(r3, r16) != r7) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02a2, code lost:
    
        if (r3.e(true, r16) == r7) goto L158;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d1 A[PHI: r2 r3
  0x01d1: PHI (r2v17 n) = (r2v23 n), (r2v29 n) binds: [B:116:0x01ce, B:112:0x0197] A[DONT_GENERATE, DONT_INLINE]
  0x01d1: PHI (r3v14 java.lang.Object) = (r3v17 java.lang.Object), (r3v18 java.lang.Object) binds: [B:116:0x01ce, B:112:0x0197] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:215:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0167  */
    /* JADX WARN: Type inference failed for: r2v10, types: [hm3] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v6, types: [gj3] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x01d9 -> B:121:0x01dd). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d93.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d93(Object obj, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f65u = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d93(dc dcVar, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 1;
        this.t = dcVar;
    }
}
