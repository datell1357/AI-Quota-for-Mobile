package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class is4 extends zq4 {
    public final ArrayList p;
    public final ArrayList q;
    public final qd1 r;

    public is4(String str, ArrayList arrayList, List list, qd1 qd1Var) {
        super(str);
        this.p = new ArrayList();
        this.r = qd1Var;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                this.p.add(((ls4) obj).zzc());
            }
        }
        this.q = new ArrayList(list);
    }

    @Override // defpackage.zq4
    public final ls4 b(qd1 qd1Var, List list) {
        vs4 vs4Var;
        qd1 qd1VarO = this.r.O();
        pc4 pc4Var = (pc4) qd1VarO.r;
        int i = 0;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.p;
            int size = arrayList.size();
            vs4Var = ls4.f;
            if (i2 >= size) {
                break;
            }
            if (i2 < list.size()) {
                qd1VarO.R((String) arrayList.get(i2), ((pc4) qd1Var.r).h(qd1Var, (ls4) list.get(i2)));
            } else {
                qd1VarO.R((String) arrayList.get(i2), vs4Var);
            }
            i2++;
        }
        ArrayList arrayList2 = this.q;
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj = arrayList2.get(i);
            i++;
            ls4 ls4Var = (ls4) obj;
            ls4 ls4VarH = pc4Var.h(qd1VarO, ls4Var);
            if (ls4VarH instanceof ns4) {
                ls4VarH = pc4Var.h(qd1VarO, ls4Var);
            }
            if (ls4VarH instanceof jp4) {
                return ((jp4) ls4VarH).n;
            }
        }
        return vs4Var;
    }

    @Override // defpackage.zq4, defpackage.ls4
    public final ls4 h() {
        return new is4(this);
    }

    public is4(is4 is4Var) {
        super(is4Var.n);
        ArrayList arrayList = new ArrayList(is4Var.p.size());
        this.p = arrayList;
        arrayList.addAll(is4Var.p);
        ArrayList arrayList2 = new ArrayList(is4Var.q.size());
        this.q = arrayList2;
        arrayList2.addAll(is4Var.q);
        this.r = is4Var.r;
    }
}
