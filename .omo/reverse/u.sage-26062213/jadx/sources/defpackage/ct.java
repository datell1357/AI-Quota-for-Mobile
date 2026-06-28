package defpackage;

import android.content.Context;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ct implements b81 {
    public final /* synthetic */ int n;
    public final /* synthetic */ pt o;

    public /* synthetic */ ct(pt ptVar, int i) {
        this.n = i;
        this.o = ptVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(java.lang.String r13, defpackage.dh0 r14) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ct.a(java.lang.String, dh0):java.lang.Object");
    }

    @Override // defpackage.b81
    public final Object m(Object obj, dh0 dh0Var) {
        String strConcat;
        int i = this.n;
        t64 t64Var = t64.a;
        pt ptVar = this.o;
        switch (i) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                Context context = ptVar.a;
                if (zBooleanValue) {
                    bi4.G(context, ptVar.j());
                } else {
                    y84 y84VarJ = ptVar.j();
                    context.getClass();
                    y84VarJ.getClass();
                    eg4 eg4VarC = eg4.c(context);
                    if (y84VarJ == y84.r) {
                        strConcat = "calendar_sync_periodic";
                    } else {
                        String lowerCase = y84VarJ.name().toLowerCase(Locale.ROOT);
                        lowerCase.getClass();
                        strConcat = "calendar_sync_periodic_".concat(lowerCase);
                    }
                    qv3 qv3Var = eg4VarC.b.m;
                    String strConcat2 = "CancelWorkByName_".concat(strConcat);
                    ji3 ji3Var = (ji3) eg4VarC.d.o;
                    ji3Var.getClass();
                    mt1.N(qv3Var, strConcat2, ji3Var, new h4(6, strConcat, eg4VarC));
                    ra3 ra3Var = ez3.a;
                    y84VarJ.name();
                    ra3Var.getClass();
                    ra3.c(new Object[0]);
                }
                return t64Var;
            case 1:
                return a((String) obj, dh0Var);
            case 2:
                if (!((Boolean) obj).booleanValue()) {
                    return t64Var;
                }
                ps psVarL = ptVar.l();
                rx2 rx2Var = ps.i;
                Object objO = ht4.o(psVarL.a(), new ns(false, null, null), dh0Var);
                ri0 ri0Var = ri0.n;
                if (objO != ri0Var) {
                    objO = t64Var;
                }
                return objO == ri0Var ? objO : t64Var;
            default:
                ra3 ra3Var2 = ez3.a;
                ptVar.j().name();
                ra3Var2.getClass();
                ra3.c(new Object[0]);
                zf5.X(ptVar.a, ptVar.j());
                return t64Var;
        }
    }
}
