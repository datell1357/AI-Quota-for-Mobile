package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class rn4 extends sm4 {
    public static final /* synthetic */ int zzd = 0;
    private static final Map zze = new ConcurrentHashMap();
    private int zzb;
    protected lp4 zzc;

    public rn4() {
        this.zza = 0;
        this.zzb = -1;
        this.zzc = lp4.f;
    }

    public static rn4 e(rn4 rn4Var, byte[] bArr, kn4 kn4Var) throws fo4 {
        int length = bArr.length;
        if (length != 0) {
            rn4 rn4VarI = rn4Var.i();
            try {
                cp4 cp4VarA = zo4.c.a(rn4VarI.getClass());
                cp4VarA.e(rn4VarI, bArr, 0, length, new e91(kn4Var));
                cp4VarA.h(rn4VarI);
                rn4Var = rn4VarI;
            } catch (fo4 e) {
                if (e.n) {
                    throw new fo4(e.getMessage(), e);
                }
                throw e;
            } catch (hp4 e2) {
                throw e2.a();
            } catch (IOException e3) {
                if (e3.getCause() instanceof fo4) {
                    throw ((fo4) e3.getCause());
                }
                throw new fo4(e3.getMessage(), e3);
            } catch (IndexOutOfBoundsException unused) {
                q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return null;
            }
        }
        r(rn4Var);
        return rn4Var;
    }

    public static rn4 n(Class cls) {
        Map map = zze;
        rn4 rn4Var = (rn4) map.get(cls);
        if (rn4Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                rn4Var = (rn4) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (rn4Var != null) {
            return rn4Var;
        }
        rn4 rn4Var2 = (rn4) ((rn4) qp4.d(cls)).s(6);
        if (rn4Var2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, rn4Var2);
        return rn4Var2;
    }

    public static void o(Class cls, rn4 rn4Var) {
        rn4Var.h();
        zze.put(cls, rn4Var);
    }

    public static Object p(Method method, rn4 rn4Var, Object... objArr) {
        try {
            return method.invoke(rn4Var, objArr);
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

    public static final boolean q(rn4 rn4Var, boolean z) {
        byte bByteValue = ((Byte) rn4Var.s(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zD = zo4.c.a(rn4Var.getClass()).d(rn4Var);
        if (z) {
            rn4Var.s(2);
        }
        return zD;
    }

    public static void r(rn4 rn4Var) throws fo4 {
        if (rn4Var != null && !q(rn4Var, true)) {
            throw new hp4().a();
        }
    }

    @Override // defpackage.sm4
    public final int c(cp4 cp4Var) {
        if (g()) {
            int iC = cp4Var.c(this);
            if (iC >= 0) {
                return iC;
            }
            q73.e(String.valueOf(iC).length() + 42, iC);
            return 0;
        }
        int i = this.zzb & Api.BaseClientBuilder.API_PRIORITY_OTHER;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iC2 = cp4Var.c(this);
        if (iC2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iC2;
            return iC2;
        }
        q73.e(String.valueOf(iC2).length() + 42, iC2);
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zo4.c.a(getClass()).g(this, (rn4) obj);
    }

    public final void f(jn4 jn4Var) {
        cp4 cp4VarA = zo4.c.a(getClass());
        dd1 dd1Var = jn4Var.a;
        if (dd1Var == null) {
            dd1Var = new dd1(jn4Var);
        }
        cp4VarA.i(this, dd1Var);
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:117)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public final boolean g() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final void h() {
        this.zzb &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public final int hashCode() {
        if (g()) {
            return zo4.c.a(getClass()).a(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iA = zo4.c.a(getClass()).a(this);
        this.zza = iA;
        return iA;
    }

    public final rn4 i() {
        return (rn4) s(4);
    }

    public final pn4 j() {
        return (pn4) s(5);
    }

    public final pn4 k() {
        pn4 pn4Var = (pn4) s(5);
        pn4Var.e(this);
        return pn4Var;
    }

    public final void l() {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public final int m() {
        if (g()) {
            int iC = zo4.c.a(getClass()).c(this);
            if (iC >= 0) {
                return iC;
            }
            q73.e(String.valueOf(iC).length() + 42, iC);
            return 0;
        }
        int i = this.zzb & Api.BaseClientBuilder.API_PRIORITY_OTHER;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iC2 = zo4.c.a(getClass()).c(this);
        if (iC2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iC2;
            return iC2;
        }
        q73.e(String.valueOf(iC2).length() + 42, iC2);
        return 0;
    }

    public abstract Object s(int i);

    public final String toString() {
        String string = super.toString();
        char[] cArr = so4.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        so4.b(this, sb, 0);
        return sb.toString();
    }
}
