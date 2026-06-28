package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class da0 {
    public final List a;
    public final List b;
    public final List c;
    public List d;
    public List e;
    public final nv3 f;
    public final nv3 g;

    public da0(List list, List list2, List list3, List list4, List list5) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = list4;
        this.e = list5;
        final int i = 0;
        this.f = new nv3(new ne1(this) { // from class: ba0
            public final /* synthetic */ da0 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i2 = i;
                g01 g01Var = g01.n;
                int i3 = 0;
                da0 da0Var = this.o;
                switch (i2) {
                    case 0:
                        List list6 = da0Var.d;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            o70.d0((List) ((ne1) list6.get(i3)).a(), arrayList);
                            i3++;
                        }
                        da0Var.d = g01Var;
                        return arrayList;
                    default:
                        List list7 = da0Var.e;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            o70.d0((List) ((ne1) list7.get(i3)).a(), arrayList2);
                            i3++;
                        }
                        da0Var.e = g01Var;
                        return arrayList2;
                }
            }
        });
        final int i2 = 1;
        this.g = new nv3(new ne1(this) { // from class: ba0
            public final /* synthetic */ da0 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i22 = i2;
                g01 g01Var = g01.n;
                int i3 = 0;
                da0 da0Var = this.o;
                switch (i22) {
                    case 0:
                        List list6 = da0Var.d;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            o70.d0((List) ((ne1) list6.get(i3)).a(), arrayList);
                            i3++;
                        }
                        da0Var.d = g01Var;
                        return arrayList;
                    default:
                        List list7 = da0Var.e;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            o70.d0((List) ((ne1) list7.get(i3)).a(), arrayList2);
                            i3++;
                        }
                        da0Var.e = g01Var;
                        return arrayList2;
                }
            }
        });
    }
}
