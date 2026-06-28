package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class do3 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ do3(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    @Override // defpackage.ne1
    public final Object a() {
        ec0 ec0Var;
        int size;
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj = this.p;
        Object obj2 = this.o;
        switch (i) {
            case 0:
                fo3 fo3Var = (fo3) obj2;
                m41 m41Var = (m41) obj;
                if (!nt1.g(fo3Var, m41Var.a)) {
                    ArrayList arrayList = m41Var.b;
                    arrayList.getClass();
                    int size2 = arrayList.size() - 1;
                    int i2 = 0;
                    if (size2 >= 0) {
                        int i3 = 0;
                        while (true) {
                            Object obj3 = arrayList.get(i2);
                            if (!nt1.g(((l41) obj3).a, fo3Var)) {
                                if (i3 != i2) {
                                    arrayList.set(i3, obj3);
                                }
                                i3++;
                            }
                            if (i2 != size2) {
                                i2++;
                            } else {
                                i2 = i3;
                            }
                        }
                    }
                    if (i2 < arrayList.size() && i2 <= (size = arrayList.size() - 1)) {
                        while (true) {
                            arrayList.remove(size);
                            if (size != i2) {
                                size--;
                            }
                        }
                    }
                    c33 c33Var = m41Var.c;
                    if (c33Var != null && (ec0Var = c33Var.a) != null) {
                        ec0Var.s(c33Var, null);
                    }
                }
                break;
            default:
                ((pe1) obj2).k((y84) obj);
                break;
        }
        return t64Var;
    }
}
