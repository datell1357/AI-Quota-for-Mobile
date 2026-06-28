package defpackage;

import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fp1 implements nm1 {
    public final rm1[] n;
    public final wm1[] o;

    public fp1(LinkedList linkedList, LinkedList linkedList2) {
        if (linkedList != null) {
            this.n = (rm1[]) linkedList.toArray(new rm1[linkedList.size()]);
        } else {
            this.n = new rm1[0];
        }
        if (linkedList2 != null) {
            this.o = (wm1[]) linkedList2.toArray(new wm1[linkedList2.size()]);
        } else {
            this.o = new wm1[0];
        }
    }

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        for (rm1 rm1Var : this.n) {
            rm1Var.a(om1Var, ul1Var);
        }
    }

    @Override // defpackage.wm1
    public final void b(vm1 vm1Var, ul1 ul1Var) {
        for (wm1 wm1Var : this.o) {
            wm1Var.b(vm1Var, ul1Var);
        }
    }

    public fp1(rm1[] rm1VarArr, wm1[] wm1VarArr) {
        int length = rm1VarArr.length;
        rm1[] rm1VarArr2 = new rm1[length];
        this.n = rm1VarArr2;
        System.arraycopy(rm1VarArr, 0, rm1VarArr2, 0, length);
        if (wm1VarArr != null) {
            int length2 = wm1VarArr.length;
            wm1[] wm1VarArr2 = new wm1[length2];
            this.o = wm1VarArr2;
            System.arraycopy(wm1VarArr, 0, wm1VarArr2, 0, length2);
            return;
        }
        this.o = new wm1[0];
    }
}
