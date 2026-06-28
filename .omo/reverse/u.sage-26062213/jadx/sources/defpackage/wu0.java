package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wu0 implements eh0 {
    public final List n;

    public /* synthetic */ wu0(List list) {
        this.n = list;
    }

    @Override // defpackage.eh0
    public /* bridge */ /* synthetic */ Object then(ow3 ow3Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.n);
        return mt1.t(arrayList);
    }
}
