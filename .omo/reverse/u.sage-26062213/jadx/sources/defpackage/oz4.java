package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oz4 extends sz4 {
    public static final Class c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // defpackage.sz4
    public final void a(long j, Object obj) {
        Object objUnmodifiableList;
        List list = (List) i35.d(j, obj);
        if (list instanceof lz4) {
            objUnmodifiableList = ((lz4) list).zze();
        } else if (c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        i35.j(obj, j, objUnmodifiableList);
    }

    @Override // defpackage.sz4
    public final void b(Object obj, long j, Object obj2) {
        List list;
        List list2;
        List list3 = (List) i35.d(j, obj2);
        int size = list3.size();
        List list4 = (List) i35.d(j, obj);
        if (list4.isEmpty()) {
            List jz4Var = list4 instanceof lz4 ? new jz4(size) : new ArrayList(size);
            i35.j(obj, j, jz4Var);
            list2 = jz4Var;
        } else {
            if (c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                i35.j(obj, j, arrayList);
                list = arrayList;
            } else {
                boolean z = list4 instanceof z25;
                list2 = list4;
                if (z) {
                    z25 z25Var = (z25) list4;
                    jz4 jz4Var2 = new jz4(z25Var.size() + size);
                    jz4Var2.addAll(jz4Var2.o.size(), z25Var);
                    i35.j(obj, j, jz4Var2);
                    list = jz4Var2;
                }
            }
            list2 = list;
        }
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        i35.j(obj, j, list3);
    }
}
