package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class by2 {
    public final List a;
    public final List[] b;
    public int c;
    public int d;
    public boolean e;
    public final /* synthetic */ cy2 f;

    public by2(cy2 cy2Var, List list) {
        this.f = cy2Var;
        this.a = list;
        this.b = new List[list.size()];
        if (list.isEmpty()) {
            dr1.a("NestedPrefetchController shouldn't be created with no states");
        }
    }
}
