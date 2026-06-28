package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gr3 {
    public static final /* synthetic */ int a = 0;

    static {
        Object f83Var;
        Object f83Var2;
        Exception exc = new Exception();
        String simpleName = bi4.class.getSimpleName();
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        new StackTraceElement("_COROUTINE.".concat(simpleName), "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            f83Var = dr.class.getCanonicalName();
        } catch (Throwable th) {
            f83Var = new f83(th);
        }
        if (g83.a(f83Var) != null) {
            f83Var = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            f83Var2 = gr3.class.getCanonicalName();
        } catch (Throwable th2) {
            f83Var2 = new f83(th2);
        }
        if (g83.a(f83Var2) != null) {
            f83Var2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
