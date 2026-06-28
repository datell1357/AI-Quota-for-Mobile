package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class if3 implements tr2 {
    public final int n;
    public final List o;
    public Float p = null;
    public Float q = null;
    public ye3 r = null;
    public ye3 s = null;

    public if3(int i, ArrayList arrayList) {
        this.n = i;
        this.o = arrayList;
    }

    @Override // defpackage.tr2
    public final boolean w() {
        return this.o.contains(this);
    }
}
