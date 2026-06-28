package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wr3 extends d2 implements a81, qf1, ur3, tl3, b81 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater s = AtomicReferenceFieldUpdater.newUpdater(wr3.class, Object.class, "_state$volatile");
    public static final /* synthetic */ long t = sa5.a.objectFieldOffset(wr3.class.getDeclaredField("_state$volatile"));
    private volatile /* synthetic */ Object _state$volatile;
    public int r;

    public wr3(Object obj) {
        this._state$volatile = obj;
    }

    @Override // defpackage.qf1
    public final a81 a(hi0 hi0Var, int i, vy vyVar) {
        return (((i < 0 || i >= 2) && i != -2) || vyVar != vy.o) ? xl3.c(this, hi0Var, i, vyVar) : this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0094, code lost:
    
        if (r13.equals(r15) == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x007a, code lost:
    
        if (r15 != r2) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:39:0x0090, B:41:0x0096], limit reached: 70 */
    /* JADX WARN: Path cross not found for [B:41:0x0096, B:39:0x0090], limit reached: 70 */
    /* JADX WARN: Path cross not found for [B:41:0x0096, B:49:0x00b1], limit reached: 70 */
    /* JADX WARN: Path cross not found for [B:61:0x00f3, B:62:0x00f4], limit reached: 70 */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0082 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:14:0x0034, B:31:0x007a, B:33:0x0082, B:36:0x0089, B:37:0x008d, B:39:0x0090, B:49:0x00b1, B:52:0x00c1, B:53:0x00dd, B:59:0x00ed, B:56:0x00e4, B:58:0x00ea, B:41:0x0096, B:45:0x009d, B:21:0x004b), top: B:66:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0090 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:14:0x0034, B:31:0x007a, B:33:0x0082, B:36:0x0089, B:37:0x008d, B:39:0x0090, B:49:0x00b1, B:52:0x00c1, B:53:0x00dd, B:59:0x00ed, B:56:0x00e4, B:58:0x00ea, B:41:0x0096, B:45:0x009d, B:21:0x004b), top: B:66:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c1 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:14:0x0034, B:31:0x007a, B:33:0x0082, B:36:0x0089, B:37:0x008d, B:39:0x0090, B:49:0x00b1, B:52:0x00c1, B:53:0x00dd, B:59:0x00ed, B:56:0x00e4, B:58:0x00ea, B:41:0x0096, B:45:0x009d, B:21:0x004b), top: B:66:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [yr3] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2, types: [e2] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [yr3] */
    /* JADX WARN: Type inference failed for: r1v7, types: [yr3] */
    /* JADX WARN: Type inference failed for: r1v8, types: [yr3] */
    /* JADX WARN: Type inference failed for: r8v1, types: [d2] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [wr3] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, wr3] */
    /* JADX WARN: Type inference failed for: r8v7, types: [wr3] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00c0 -> B:31:0x007a). Please report as a decompilation issue!!! */
    @Override // defpackage.a81
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.b81 r14, defpackage.dh0 r15) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wr3.b(b81, dh0):java.lang.Object");
    }

    @Override // defpackage.d2
    public final e2 d() {
        return new yr3();
    }

    @Override // defpackage.d2
    public final e2[] e() {
        return new yr3[2];
    }

    @Override // defpackage.ur3
    public final Object getValue() {
        s.getClass();
        Object objectVolatile = sa5.a.getObjectVolatile(this, t);
        if (objectVolatile == jn2.a) {
            return null;
        }
        return objectVolatile;
    }

    public final void h(Object obj) {
        if (obj == null) {
            obj = jn2.a;
        }
        i(null, obj);
    }

    public final boolean i(Object obj, Object obj2) {
        int i;
        e2[] e2VarArr;
        sg0 sg0Var;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = s;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !nt1.g(obj3, obj)) {
                return false;
            }
            if (nt1.g(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.r;
            if ((i2 & 1) != 0) {
                this.r = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.r = i3;
            e2[] e2VarArr2 = this.n;
            while (true) {
                yr3[] yr3VarArr = (yr3[]) e2VarArr2;
                if (yr3VarArr != null) {
                    for (yr3 yr3Var : yr3VarArr) {
                        if (yr3Var != null) {
                            AtomicReference atomicReference = yr3Var.a;
                            while (true) {
                                Object obj4 = atomicReference.get();
                                if (obj4 != null && obj4 != (sg0Var = xr3.b)) {
                                    sg0 sg0Var2 = xr3.a;
                                    if (obj4 != sg0Var2) {
                                        while (!atomicReference.compareAndSet(obj4, sg0Var2)) {
                                            if (atomicReference.get() != obj4) {
                                                break;
                                            }
                                        }
                                        ((o20) obj4).g(t64.a);
                                        break;
                                    }
                                    while (!atomicReference.compareAndSet(obj4, sg0Var)) {
                                        if (atomicReference.get() != obj4) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.r;
                    if (i == i3) {
                        this.r = i3 + 1;
                        return true;
                    }
                    e2VarArr = this.n;
                }
                e2VarArr2 = e2VarArr;
                i3 = i;
            }
        }
    }

    @Override // defpackage.b81
    public final Object m(Object obj, dh0 dh0Var) {
        h(obj);
        return t64.a;
    }
}
