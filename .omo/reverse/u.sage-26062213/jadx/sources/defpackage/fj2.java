package defpackage;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fj2 implements gf1 {
    public final /* synthetic */ pg3 n;
    public final /* synthetic */ yh2 o;
    public final /* synthetic */ fc3 p;
    public final /* synthetic */ pg2 q;
    public final /* synthetic */ tr3 r;

    public fj2(pg3 pg3Var, yh2 yh2Var, gc3 gc3Var, pg2 pg2Var, tr3 tr3Var) {
        this.n = pg3Var;
        this.o = yh2Var;
        this.p = gc3Var;
        this.q = pg2Var;
        this.r = tr3Var;
    }

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        Object objPrevious;
        ae aeVar = (ae) obj;
        yh2 yh2Var = (yh2) obj2;
        ag1 ag1Var = (ag1) obj3;
        ((Number) obj4).intValue();
        boolean zG = nt1.g(this.n.c.getValue(), this.o);
        if (!((Boolean) this.q.getValue()).booleanValue() && !zG) {
            List list = (List) this.r.getValue();
            ListIterator listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
                if (nt1.g(yh2Var, (yh2) objPrevious)) {
                    break;
                }
            }
            yh2Var = (yh2) objPrevious;
        }
        if (yh2Var == null) {
            ag1Var.W(105930796);
        } else {
            ag1Var.W(-1520603531);
            qj0.j(yh2Var, this.p, qj0.U(-1263531443, new qt0(yh2Var, aeVar), ag1Var), ag1Var, 384);
        }
        ag1Var.p(false);
        return t64.a;
    }
}
