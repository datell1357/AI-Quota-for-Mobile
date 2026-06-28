package defpackage;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fq3 {
    public static final Map b = Collections.EMPTY_MAP;
    public final gq3 a;

    static {
        Collections.unmodifiableSet(EnumSet.noneOf(eq3.class));
    }

    public fq3(gq3 gq3Var) {
        se0.g(gq3Var, "context");
        this.a = gq3Var;
    }
}
