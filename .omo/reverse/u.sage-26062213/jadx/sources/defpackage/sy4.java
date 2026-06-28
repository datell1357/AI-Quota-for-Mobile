package defpackage;

import com.google.android.gms.common.api.Api;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sy4 extends xx4 {
    private static final Map zzb = new ConcurrentHashMap();
    protected p25 zzc;
    private int zzd;

    public sy4() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = p25.e;
    }

    public static sy4 a(Class cls) {
        Map map = zzb;
        sy4 sy4Var = (sy4) map.get(cls);
        if (sy4Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                sy4Var = (sy4) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (sy4Var != null) {
            return sy4Var;
        }
        sy4 sy4Var2 = (sy4) ((sy4) i35.c(cls)).h(6);
        if (sy4Var2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, sy4Var2);
        return sy4Var2;
    }

    public static Object c(Method method, sy4 sy4Var, Object... objArr) {
        try {
            return method.invoke(sy4Var, objArr);
        } catch (IllegalAccessException e) {
            k21.i("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            k21.i("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static void e(v35 v35Var) {
        v35Var.d();
        zzb.put(v35.class, v35Var);
    }

    public final sy4 b() {
        return (sy4) h(4);
    }

    public final void d() {
        this.zzd &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return z05.c.a(getClass()).a(this, (sy4) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public final boolean g() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object h(int i);

    public final int hashCode() {
        if (g()) {
            return z05.c.a(getClass()).c(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iC = z05.c.a(getClass()).c(this);
        this.zza = iC;
        return iC;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = g05.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        g05.c(this, sb, 0);
        return sb.toString();
    }
}
