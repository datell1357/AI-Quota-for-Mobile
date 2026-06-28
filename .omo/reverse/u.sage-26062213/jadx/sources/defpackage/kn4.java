package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kn4 {
    public static volatile kn4 a;
    public static final kn4 b;

    static {
        kn4 kn4Var = new kn4();
        Map map = Collections.EMPTY_MAP;
        b = kn4Var;
    }

    public static kn4 a() {
        kn4 kn4Var = a;
        if (kn4Var != null) {
            return kn4Var;
        }
        synchronized (kn4.class) {
            try {
                kn4 kn4Var2 = a;
                if (kn4Var2 != null) {
                    return kn4Var2;
                }
                int i = um4.a;
                kn4 kn4VarS = on4.S();
                a = kn4VarS;
                return kn4VarS;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
