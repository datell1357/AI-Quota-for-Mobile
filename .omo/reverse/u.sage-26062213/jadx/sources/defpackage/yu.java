package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yu implements nm1, Cloneable {
    public final ArrayList n = new ArrayList();
    public final ArrayList o = new ArrayList();

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((rm1) obj).a(om1Var, ul1Var);
        }
    }

    @Override // defpackage.wm1
    public final void b(vm1 vm1Var, ul1 ul1Var) {
        ArrayList arrayList = this.o;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((wm1) obj).b(vm1Var, ul1Var);
        }
    }

    public final void c(rm1 rm1Var) {
        if (rm1Var == null) {
            return;
        }
        this.n.add(rm1Var);
    }

    public final Object clone() {
        yu yuVar = (yu) super.clone();
        yuVar.n.clear();
        yuVar.n.addAll(this.n);
        ArrayList arrayList = yuVar.o;
        arrayList.clear();
        arrayList.addAll(this.o);
        return yuVar;
    }
}
