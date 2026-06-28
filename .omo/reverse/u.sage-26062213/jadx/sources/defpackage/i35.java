package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class i35 {
    public static final Unsafe a;
    public static final Class b;
    public static final pp4 c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    static {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i35.<clinit>():void");
    }

    public static int a(long j, Object obj) {
        return c.a.getInt(obj, j);
    }

    public static long b(long j, Object obj) {
        return c.a.getLong(obj, j);
    }

    public static Object c(Class cls) {
        try {
            return a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static Object d(long j, Object obj) {
        return c.a.getObject(obj, j);
    }

    public static Unsafe e() {
        try {
            return (Unsafe) AccessController.doPrivileged(new b35());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void f(Object obj, long j, boolean z) {
        pp4 pp4Var = c;
        long j2 = (-4) & j;
        int i = pp4Var.a.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        pp4Var.a.putInt(obj, j2, ((z ? 1 : 0) << i2) | ((~(255 << i2)) & i));
    }

    public static /* synthetic */ void g(Object obj, long j, boolean z) {
        pp4 pp4Var = c;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        pp4Var.a.putInt(obj, j2, ((z ? 1 : 0) << i) | ((~(255 << i)) & pp4Var.a.getInt(obj, j2)));
    }

    public static void h(Object obj, long j, int i) {
        c.a.putInt(obj, j, i);
    }

    public static void i(Object obj, long j, long j2) {
        c.a.putLong(obj, j, j2);
    }

    public static void j(Object obj, long j, Object obj2) {
        c.a.putObject(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean k(long j, Object obj) {
        return ((byte) ((c.a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean l(long j, Object obj) {
        return ((byte) ((c.a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static boolean m(Class cls) {
        int i = ay4.a;
        try {
            Class cls2 = b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void n(Class cls) {
        if (e) {
            c.a.arrayBaseOffset(cls);
        }
    }

    public static void o(Class cls) {
        if (e) {
            c.a.arrayIndexScale(cls);
        }
    }

    public static Field p() {
        Field declaredField;
        Field declaredField2;
        int i = ay4.a;
        try {
            declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            declaredField = null;
        }
        if (declaredField != null) {
            return declaredField;
        }
        try {
            declaredField2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField2 = null;
        }
        if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
            return null;
        }
        return declaredField2;
    }
}
