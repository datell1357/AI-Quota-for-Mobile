package defpackage;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z0 extends gg4 {
    public static final Unsafe H;
    public static final long I;
    public static final long J;
    public static final long K;
    public static final long L;
    public static final long M;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e) {
                k21.i("Could not initialize intrinsics", e.getCause());
                return;
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new y0());
        }
        try {
            J = unsafe.objectFieldOffset(b1.class.getDeclaredField("p"));
            I = unsafe.objectFieldOffset(b1.class.getDeclaredField("o"));
            K = unsafe.objectFieldOffset(b1.class.getDeclaredField("n"));
            L = unsafe.objectFieldOffset(a1.class.getDeclaredField("a"));
            M = unsafe.objectFieldOffset(a1.class.getDeclaredField("b"));
            H = unsafe;
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static /* synthetic */ Unsafe V() throws IllegalAccessException {
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }

    @Override // defpackage.gg4
    public final void P(a1 a1Var, a1 a1Var2) {
        H.putObject(a1Var, M, a1Var2);
    }

    @Override // defpackage.gg4
    public final void Q(a1 a1Var, Thread thread) {
        H.putObject(a1Var, L, thread);
    }

    @Override // defpackage.gg4
    public final boolean j(s0 s0Var, p0 p0Var, p0 p0Var2) {
        return v0.a(H, s0Var, I, p0Var, p0Var2);
    }

    @Override // defpackage.gg4
    public final boolean k(b1 b1Var, Object obj, Object obj2) {
        return w0.a(H, b1Var, K, obj, obj2);
    }

    @Override // defpackage.gg4
    public final boolean l(b1 b1Var, a1 a1Var, a1 a1Var2) {
        return x0.a(H, b1Var, J, a1Var, a1Var2);
    }

    @Override // defpackage.gg4
    public final p0 x(s0 s0Var) {
        p0 p0Var;
        p0 p0Var2 = p0.d;
        do {
            p0Var = s0Var.o;
            if (p0Var2 == p0Var) {
                break;
            }
        } while (!j(s0Var, p0Var, p0Var2));
        return p0Var;
    }

    @Override // defpackage.gg4
    public final a1 y(s0 s0Var) {
        a1 a1Var;
        a1 a1Var2 = a1.c;
        do {
            a1Var = s0Var.p;
            if (a1Var2 == a1Var) {
                break;
            }
        } while (!l(s0Var, a1Var, a1Var2));
        return a1Var;
    }
}
