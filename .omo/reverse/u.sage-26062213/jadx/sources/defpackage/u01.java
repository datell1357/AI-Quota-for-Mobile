package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u01 extends bv3 implements df1 {
    public final /* synthetic */ int r = 3;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f350u;
    public /* synthetic */ Object v;
    public final /* synthetic */ Object w;
    public Object x;
    public final /* synthetic */ Object y;
    public final /* synthetic */ Object z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u01(x01 x01Var, jo1 jo1Var, Object obj, er2 er2Var, j21 j21Var, qb2 qb2Var, r23 r23Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = x01Var;
        this.f350u = jo1Var;
        this.v = obj;
        this.x = er2Var;
        this.w = j21Var;
        this.y = qb2Var;
        this.z = r23Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((u01) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((u01) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                ((u01) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return ri0.n;
            default:
                return ((u01) o((dh0) obj2, (b81) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.w;
        Object obj3 = this.f350u;
        Object obj4 = this.z;
        Object obj5 = this.y;
        switch (i) {
            case 0:
                return new u01((x01) this.t, (w33) this.x, (w33) obj5, (jo1) obj3, this.v, (w33) obj4, (j21) obj2, dh0Var);
            case 1:
                return new u01((x01) this.t, (jo1) obj3, this.v, (er2) this.x, (j21) obj2, (qb2) obj5, (r23) obj4, dh0Var);
            case 2:
                u01 u01Var = new u01((pd) obj5, (List) obj4, (ts2) obj3, (ss2) obj2, dh0Var);
                u01Var.v = obj;
                return u01Var;
            default:
                u01 u01Var2 = new u01((ContentResolver) this.x, (Uri) obj5, (if4) obj4, (zy) obj3, (Context) obj2, dh0Var);
                u01Var2.v = obj;
                return u01Var2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0077 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #1 {all -> 0x002d, blocks: (B:9:0x0027, B:19:0x005d, B:23:0x006f, B:25:0x0077, B:15:0x003f, B:18:0x0054), top: B:119:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x009f -> B:19:0x005d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x013d -> B:41:0x00f8). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u01.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u01(pd pdVar, List list, ts2 ts2Var, ss2 ss2Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.y = pdVar;
        this.z = list;
        this.f350u = ts2Var;
        this.w = ss2Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u01(x01 x01Var, w33 w33Var, w33 w33Var2, jo1 jo1Var, Object obj, w33 w33Var3, j21 j21Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = x01Var;
        this.x = w33Var;
        this.y = w33Var2;
        this.f350u = jo1Var;
        this.v = obj;
        this.z = w33Var3;
        this.w = j21Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u01(ContentResolver contentResolver, Uri uri, if4 if4Var, zy zyVar, Context context, dh0 dh0Var) {
        super(2, dh0Var);
        this.x = contentResolver;
        this.y = uri;
        this.z = if4Var;
        this.f350u = zyVar;
        this.w = context;
    }
}
