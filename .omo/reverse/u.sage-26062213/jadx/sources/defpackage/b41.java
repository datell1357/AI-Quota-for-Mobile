package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b41 {
    public static volatile b41 a;
    public static final b41 b;

    static {
        b41 b41Var = new b41();
        Map map = Collections.EMPTY_MAP;
        b = b41Var;
    }

    public static b41 a() {
        b41 b41Var;
        zz2 zz2Var = zz2.c;
        b41 b41Var2 = a;
        if (b41Var2 != null) {
            return b41Var2;
        }
        synchronized (b41.class) {
            try {
                b41Var = a;
                if (b41Var == null) {
                    Class cls = a41.a;
                    b41 b41Var3 = null;
                    if (cls != null) {
                        try {
                            b41Var3 = (b41) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    b41Var = b41Var3 != null ? b41Var3 : b;
                    a = b41Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b41Var;
    }
}
