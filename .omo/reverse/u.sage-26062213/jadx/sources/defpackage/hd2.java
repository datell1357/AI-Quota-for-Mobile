package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hd2 extends mi3 {
    public final List n;

    /* JADX WARN: Illegal instructions before constructor call */
    public hd2(String str, ArrayList arrayList) {
        String strT;
        str.getClass();
        if (arrayList.size() == 1) {
            strT = xw1.t(new StringBuilder("Field '"), (String) arrayList.get(0), "' is required for type with serial name '", str, "', but it was missing");
        } else {
            strT = "Fields " + arrayList + " are required for type with serial name '" + str + "', but they were missing";
        }
        super(strT, null);
        this.n = arrayList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hd2(List list, String str, hd2 hd2Var) {
        super(str, hd2Var);
        list.getClass();
        this.n = list;
    }
}
