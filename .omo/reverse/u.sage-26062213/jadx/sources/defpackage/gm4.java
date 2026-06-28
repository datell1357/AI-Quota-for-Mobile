package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gm4 {
    public static final String[] a = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    public static final jm4 b;

    static {
        jm4 jm4Var;
        int i = 0;
        while (true) {
            if (i >= 2) {
                jm4Var = new jm4();
                break;
            }
            jm4Var = null;
            try {
                jm4Var = (jm4) Class.forName(a[i]).asSubclass(jm4.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (jm4Var != null) {
                break;
            } else {
                i++;
            }
        }
        b = jm4Var;
    }
}
