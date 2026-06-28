package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pu0 extends r51 {
    public final r51 p;

    public pu0(r51 r51Var) {
        r51Var.getClass();
        this.p = r51Var;
    }

    @Override // defpackage.r51
    public final List F(bt2 bt2Var) {
        List<bt2> listF = this.p.F(bt2Var);
        ArrayList arrayList = new ArrayList();
        for (bt2 bt2Var2 : listF) {
            bt2Var2.getClass();
            arrayList.add(bt2Var2);
        }
        r70.b0(arrayList);
        return arrayList;
    }

    @Override // defpackage.r51
    public final i51 L(bt2 bt2Var) {
        bt2Var.getClass();
        i51 i51VarL = this.p.L(bt2Var);
        if (i51VarL == null) {
            return null;
        }
        bt2 bt2Var2 = i51VarL.c;
        if (bt2Var2 == null) {
            return i51VarL;
        }
        boolean z = i51VarL.a;
        boolean z2 = i51VarL.b;
        Long l = i51VarL.d;
        Long l2 = i51VarL.e;
        Long l3 = i51VarL.f;
        Long l4 = i51VarL.g;
        Map map = i51VarL.h;
        map.getClass();
        return new i51(z, z2, bt2Var2, l, l2, l3, l4, map);
    }

    @Override // defpackage.r51
    public final cx1 N(bt2 bt2Var) {
        return this.p.N(bt2Var);
    }

    @Override // defpackage.r51
    public final kn3 R(bt2 bt2Var, boolean z) {
        bt2 bt2VarC = bt2Var.c();
        if (bt2VarC != null) {
            vh vhVar = new vh();
            while (bt2VarC != null && !B(bt2VarC)) {
                vhVar.addFirst(bt2VarC);
                bt2VarC = bt2VarC.c();
            }
            Iterator<E> it = vhVar.iterator();
            while (it.hasNext()) {
                r((bt2) it.next());
            }
        }
        return this.p.R(bt2Var, z);
    }

    @Override // defpackage.r51
    public final yp3 V(bt2 bt2Var) {
        bt2Var.getClass();
        return this.p.V(bt2Var);
    }

    @Override // defpackage.r51
    public final kn3 b(bt2 bt2Var) {
        bt2Var.getClass();
        return this.p.b(bt2Var);
    }

    @Override // defpackage.r51, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.p.close();
    }

    @Override // defpackage.r51
    public final void j(bt2 bt2Var, bt2 bt2Var2) {
        bt2Var.getClass();
        bt2Var2.getClass();
        this.p.j(bt2Var, bt2Var2);
    }

    @Override // defpackage.r51
    public final void r(bt2 bt2Var) {
        bt2Var.getClass();
        this.p.r(bt2Var);
    }

    public final String toString() {
        return y33.a(pu0.class).c() + '(' + this.p + ')';
    }

    @Override // defpackage.r51
    public final void z(bt2 bt2Var) {
        bt2Var.getClass();
        this.p.z(bt2Var);
    }
}
