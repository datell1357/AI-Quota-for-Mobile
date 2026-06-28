package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t03 {
    public final sv0 a;
    public final List b;
    public final List c;

    public t03(sv0 sv0Var, ArrayList arrayList, ArrayList arrayList2) {
        this.a = sv0Var;
        this.b = Collections.unmodifiableList(arrayList);
        this.c = Collections.unmodifiableList(arrayList2 == null ? Collections.EMPTY_LIST : arrayList2);
    }
}
