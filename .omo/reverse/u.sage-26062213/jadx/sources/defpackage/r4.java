package defpackage;

import android.content.Context;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r4 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f291u;
    public Object v;
    public Object w;
    public final /* synthetic */ Object x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r4(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.f291u = obj2;
        this.v = obj3;
        this.w = obj4;
        this.x = obj5;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((r4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((r4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((r4) o((dh0) obj2, (a81) obj)).q(t64Var);
            case 3:
                return ((r4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 4:
                return ((r4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 5:
                return ((r4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 6:
                ((r4) o((dh0) obj2, (b81) obj)).q(t64Var);
                return ri0.n;
            case 7:
                return ((r4) o((dh0) obj2, (bg3) obj)).q(t64Var);
            default:
                return ((r4) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.x;
        switch (i) {
            case 0:
                return new r4((n8) this.t, (y3) this.f291u, (n1) this.v, (ps) this.w, (Context) obj2, dh0Var, 0);
            case 1:
                return new r4((pd) this.t, (yq3) this.f291u, (List) this.v, (ts2) this.w, (ss2) obj2, dh0Var, 1);
            case 2:
                r4 r4Var = new r4((wa0) this.f291u, (pg2) this.v, (ss2) this.w, (pg2) obj2, dh0Var);
                r4Var.t = obj;
                return r4Var;
            case 3:
                return new r4((jo1) this.t, (o23) this.f291u, (ln3) this.v, (j21) this.w, (ao1) obj2, dh0Var, 3);
            case 4:
                r4 r4Var2 = new r4((h33) this.v, (g33) this.w, (qc) obj2, dh0Var, 4);
                r4Var2.f291u = obj;
                return r4Var2;
            case 5:
                return new r4((pg3) this.v, this.w, (n14) obj2, dh0Var, 5);
            case 6:
                r4 r4Var3 = new r4((ne1) obj2, dh0Var);
                r4Var3.w = obj;
                return r4Var3;
            case 7:
                r4 r4Var4 = new r4((z04) this.v, (dg3) this.w, (w33) obj2, dh0Var, 7);
                r4Var4.f291u = obj;
                return r4Var4;
            default:
                return new r4((c94) this.f291u, (y84) obj2, dh0Var);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:190:0x0451, code lost:
    
        if (defpackage.pg3.y(r15, r22) != r4) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x06af, code lost:
    
        if (r8.b(r0, r22) == r6) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x076b, code lost:
    
        if (r0.e(r3, r22) == r2) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x07d6, code lost:
    
        if (r0.i(false, r22) != r3) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
    
        if (r1 != r10) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:90:0x0269, B:95:0x0284], limit reached: 401 */
    /* JADX WARN: Path cross not found for [B:95:0x0284, B:90:0x0269], limit reached: 401 */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097 A[Catch: Exception -> 0x00db, TryCatch #3 {Exception -> 0x00db, blocks: (B:10:0x0026, B:41:0x00bb, B:42:0x00be, B:44:0x00c9, B:46:0x00cf, B:47:0x00d2, B:14:0x0038, B:38:0x00a7, B:17:0x0045, B:32:0x008f, B:34:0x0097, B:20:0x0054, B:26:0x0077, B:28:0x007b, B:23:0x005e), top: B:388:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0545 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9 A[Catch: Exception -> 0x00db, TryCatch #3 {Exception -> 0x00db, blocks: (B:10:0x0026, B:41:0x00bb, B:42:0x00be, B:44:0x00c9, B:46:0x00cf, B:47:0x00d2, B:14:0x0038, B:38:0x00a7, B:17:0x0045, B:32:0x008f, B:34:0x0097, B:20:0x0054, B:26:0x0077, B:28:0x007b, B:23:0x005e), top: B:388:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x027a A[Catch: all -> 0x0216, PHI: r3 r4 r6 r8
  0x027a: PHI (r3v28 java.lang.Object) = (r3v27 java.lang.Object), (r3v32 java.lang.Object) binds: [B:91:0x0277, B:83:0x022f] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r4v55 n30) = (r4v54 n30), (r4v60 n30) binds: [B:91:0x0277, B:83:0x022f] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r6v43 ra3) = (r6v42 ra3), (r6v47 ra3) binds: [B:91:0x0277, B:83:0x022f] A[DONT_GENERATE, DONT_INLINE]
  0x027a: PHI (r8v28 b81) = (r8v27 b81), (r8v32 b81) binds: [B:91:0x0277, B:83:0x022f] A[DONT_GENERATE, DONT_INLINE], TryCatch #4 {all -> 0x0216, blocks: (B:83:0x022f, B:93:0x027a, B:90:0x0269, B:95:0x0284, B:77:0x0212), top: B:390:0x01fb }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0284 A[Catch: all -> 0x0216, TRY_LEAVE, TryCatch #4 {all -> 0x0216, blocks: (B:83:0x022f, B:93:0x027a, B:90:0x0269, B:95:0x0284, B:77:0x0212), top: B:390:0x01fb }] */
    /* JADX WARN: Type inference failed for: r2v10, types: [r6] */
    /* JADX WARN: Type inference failed for: r2v26, types: [java.lang.Object, r6] */
    /* JADX WARN: Type inference failed for: r2v28, types: [r6] */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Object, tu1] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0161 -> B:64:0x0163). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0282 -> B:90:0x0269). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0296 -> B:90:0x0269). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r4.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(ne1 ne1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 6;
        this.x = ne1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(c94 c94Var, y84 y84Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 8;
        this.f291u = c94Var;
        this.x = y84Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r4(Object obj, Object obj2, Object obj3, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.v = obj;
        this.w = obj2;
        this.x = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(wa0 wa0Var, pg2 pg2Var, ss2 ss2Var, pg2 pg2Var2, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.f291u = wa0Var;
        this.v = pg2Var;
        this.w = ss2Var;
        this.x = pg2Var2;
    }
}
