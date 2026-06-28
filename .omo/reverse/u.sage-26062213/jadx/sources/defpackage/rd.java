package defpackage;

import java.util.ArrayList;
import java.util.List;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rd extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f296u;
    public Object v;
    public Object w;
    public final /* synthetic */ Object x;
    public final /* synthetic */ Object y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rd(Object obj, Object obj2, Object obj3, Object obj4, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.v = obj;
        this.w = obj2;
        this.x = obj3;
        this.y = obj4;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((rd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 1:
                return ((rd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 2:
                return ((rd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 3:
                return ((rd) o((dh0) obj2, obj)).q(t64Var);
            case 4:
                return ((rd) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((rd) o((dh0) obj2, (vl2) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.y;
        Object obj3 = this.x;
        switch (i) {
            case 0:
                rd rdVar = new rd((n30) this.v, (pd) this.w, (pg2) obj3, (pg2) obj2, dh0Var, 0);
                rdVar.f296u = obj;
                return rdVar;
            case 1:
                return new rd((a) obj3, (d84) obj2, dh0Var, 1);
            case 2:
                rd rdVar2 = new rd((v42) this.w, (ct2) obj3, (og4) obj2, dh0Var);
                rdVar2.f296u = obj;
                return rdVar2;
            case 3:
                rd rdVar3 = new rd((List) obj3, (ArrayList) obj2, dh0Var, 3);
                rdVar3.w = obj;
                return rdVar3;
            case 4:
                rd rdVar4 = new rd((eh2) obj3, (pe1) obj2, dh0Var, 4);
                rdVar4.w = obj;
                return rdVar4;
            default:
                rd rdVar5 = new rd((w33) this.v, (ol2) this.w, (w33) obj3, (sl2) obj2, dh0Var, 5);
                rdVar5.f296u = obj;
                return rdVar5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:213:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0213  */
    /* JADX WARN: Type inference failed for: r11v0, types: [dh0] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r2v10, types: [tu1] */
    /* JADX WARN: Type inference failed for: r2v22, types: [fh2, int] */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6, types: [tu1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x0230 -> B:97:0x020d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0248 -> B:97:0x020d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:168:0x03d1 -> B:170:0x03d5). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1048
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rd.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rd(Object obj, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.x = obj;
        this.y = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rd(v42 v42Var, ct2 ct2Var, og4 og4Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.w = v42Var;
        this.x = ct2Var;
        this.y = og4Var;
    }
}
