package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g31 implements j41 {
    public final /* synthetic */ int a;

    public /* synthetic */ g31(int i) {
        this.a = i;
    }

    @Override // defpackage.m03
    public final Object get() {
        switch (this.a) {
            case 0:
                return new c73(1, Executors.newSingleThreadExecutor());
            default:
                pr3 pr3Var = new pr3(12);
                HashMap map = new HashMap();
                Set set = Collections.EMPTY_SET;
                if (set == null) {
                    q73.r("Null flags");
                    return null;
                }
                map.put(ry2.n, new zo(30000L, 86400000L, set));
                if (set == null) {
                    q73.r("Null flags");
                    return null;
                }
                map.put(ry2.p, new zo(1000L, 86400000L, set));
                if (set == null) {
                    q73.r("Null flags");
                    return null;
                }
                Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(xd3.o)));
                if (setUnmodifiableSet == null) {
                    q73.r("Null flags");
                    return null;
                }
                map.put(ry2.o, new zo(86400000L, 86400000L, setUnmodifiableSet));
                if (map.keySet().size() >= ry2.values().length) {
                    new HashMap();
                    return new yo(pr3Var, map);
                }
                k21.n("Not all priorities have been configured");
                return null;
        }
    }
}
