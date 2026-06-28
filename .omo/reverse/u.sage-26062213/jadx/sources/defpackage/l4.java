package defpackage;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l4 implements df1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ l4(int i, int i2, Object obj, Object obj2) {
        this.n = i2;
        this.o = obj;
        this.p = obj2;
    }

    private final Object c(Object obj, Object obj2) {
        MainActivity mainActivity = (MainActivity) this.o;
        String str = (String) this.p;
        ag1 ag1Var = (ag1) obj;
        int iIntValue = ((Integer) obj2).intValue();
        int i = MainActivity.C;
        int i2 = 1;
        if (ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
            gy3.a(false, qj0.U(-1394340174, new bt0(mainActivity, str, ca.h(mainActivity.t, ag1Var), i2), ag1Var), ag1Var, 384);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }

    private final Object e(Object obj, Object obj2) {
        ((Integer) obj2).getClass();
        qj0.l((fc3) this.o, (ka0) this.p, (ag1) obj, qj0.f0(1));
        return t64.a;
    }

    private final Object g(Object obj, Object obj2) {
        tr3 tr3Var = (tr3) this.o;
        rj2 rj2Var = (rj2) this.p;
        ag1 ag1Var = (ag1) obj;
        int iIntValue = ((Integer) obj2).intValue();
        int i = 2;
        if (ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
            nd2 nd2VarE = on4.E("indicator");
            boolean zF = ag1Var.f(tr3Var);
            Object objK = ag1Var.K();
            if (zF || objK == rb0.a) {
                objK = new nn0(tr3Var, i);
                ag1Var.g0(objK);
            }
            qx.a(bi4.j(n44.q0(nd2VarE, (pe1) objK), rj2Var.c, ol3.a(se0.x, ag1Var)), ag1Var, 0);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }

    private final Object h(Object obj, Object obj2) {
        ka0 ka0Var = (ka0) this.o;
        pd3 pd3Var = (pd3) this.p;
        ag1 ag1Var = (ag1) obj;
        int iIntValue = ((Integer) obj2).intValue();
        if (ag1Var.N(iIntValue & 1, (iIntValue & 3) != 2)) {
            ka0Var.d(pd3Var, ag1Var, 6);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }

    private final Object i(Object obj, Object obj2) {
        t33 t33Var = (t33) this.o;
        jf3 jf3Var = (jf3) this.p;
        float fFloatValue = ((Float) obj).floatValue();
        ((Float) obj2).getClass();
        float f = t33Var.n;
        t33Var.n = jf3Var.a(fFloatValue - f) + f;
        return t64.a;
    }

    private final Object l(Object obj, Object obj2) throws XmlPullParserException, IOException {
        ((Integer) obj2).getClass();
        qj0.f((y84) this.o, (n8) this.p, (ag1) obj, qj0.f0(65));
        return t64.a;
    }

    private final Object m(Object obj, Object obj2) {
        ((Integer) obj2).getClass();
        lx3.a((ay3) this.o, (ka0) this.p, (ag1) obj, qj0.f0(1));
        return t64.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0302 A[LOOP:27: B:136:0x0302->B:138:0x0307, LOOP_START, PHI: r3
  0x0302: PHI (r3v18 int) = (r3v16 int), (r3v19 int) binds: [B:135:0x0300, B:138:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x078d A[LOOP:11: B:356:0x0779->B:358:0x078d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:390:0x088c  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0a26  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0a38  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0a4d  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0a66  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0a89  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0a8e  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0a91  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0a96  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0a9d  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0aa0  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0ac7  */
    /* JADX WARN: Removed duplicated region for block: B:654:0x0792 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01f4 A[Catch: all -> 0x0af7, TryCatch #0 {all -> 0x0af7, blocks: (B:83:0x01e2, B:85:0x01f4, B:87:0x0205, B:90:0x0224), top: B:627:0x01e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0252  */
    @Override // defpackage.df1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(java.lang.Object r59, java.lang.Object r60) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l4.f(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ l4(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }
}
