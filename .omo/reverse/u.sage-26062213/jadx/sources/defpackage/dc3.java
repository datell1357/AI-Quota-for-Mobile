package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dc3 {
    public final HashSet a = new HashSet();

    static {
        Map map = Collections.EMPTY_MAP;
        se0.g(map, "numbersOfLatencySampledSpans");
        Map map2 = map;
        Map mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(map2));
        Map mapUnmodifiableMap2 = Collections.unmodifiableMap(new HashMap(map2));
        if (mapUnmodifiableMap == null) {
            q73.r("Null numbersOfLatencySampledSpans");
        } else {
            if (mapUnmodifiableMap2 != null) {
                return;
            }
            q73.r("Null numbersOfErrorSampledSpans");
        }
    }
}
