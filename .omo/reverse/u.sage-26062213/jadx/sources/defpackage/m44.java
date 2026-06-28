package defpackage;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Currency;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class m44 {
    public static final c44 A;
    public static final c44 B;
    public static final u11 C;
    public static final c44 a;
    public static final c44 b;
    public static final f44 c;
    public static final d44 d;
    public static final d44 e;
    public static final d44 f;
    public static final d44 g;
    public static final c44 h;
    public static final c44 i;
    public static final c44 j;
    public static final l34 k;
    public static final k44 l;
    public static final k44 m;
    public static final d44 n;
    public static final c44 o;
    public static final c44 p;
    public static final c44 q;
    public static final c44 r;
    public static final c44 s;
    public static final c44 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final c44 f202u;
    public static final c44 v;
    public static final c44 w;
    public static final c44 x;
    public static final c44 y;
    public static final ln2 z;

    static {
        int i2 = 0;
        a = new c44(Class.class, new s34().a(), i2);
        b = new c44(BitSet.class, new b44().a(), i2);
        e44 e44Var = new e44();
        c = new f44();
        d = new d44(Boolean.TYPE, Boolean.class, e44Var);
        e = new d44(Byte.TYPE, Byte.class, new g44());
        f = new d44(Short.TYPE, Short.class, new h44());
        g = new d44(Integer.TYPE, Integer.class, new i44());
        h = new c44(AtomicInteger.class, new j44().a(), i2);
        i = new c44(AtomicBoolean.class, new i34().a(), i2);
        j = new c44(AtomicIntegerArray.class, new j34().a(), i2);
        k = new l34();
        new m34();
        int i3 = 1;
        new k44(false, 1);
        l = new k44(true, 1);
        new k44(false, 0);
        m = new k44(true, 0);
        n = new d44(Character.TYPE, Character.class, new n34());
        o34 o34Var = new o34();
        o = new c44(BigDecimal.class, new p34(), i2);
        p = new c44(BigInteger.class, new q34(), i2);
        q = new c44(pz1.class, new r34(), i2);
        r = new c44(String.class, o34Var, i2);
        s = new c44(StringBuilder.class, new t34(), i2);
        t = new c44(StringBuffer.class, new u34(), i2);
        f202u = new c44(URL.class, new v34(), i2);
        v = new c44(URI.class, new w34(), i2);
        w = new c44(InetAddress.class, new x34(), i3);
        x = new c44(UUID.class, new y34(), i2);
        y = new c44(Currency.class, new z34().a(), i2);
        z = new ln2(new lu1(new String[]{"year", "month", "dayOfMonth", "hourOfDay", "minute", "second"}, 8), i3);
        A = new c44(Locale.class, new a44(), i2);
        B = new c44(yv1.class, dw1.a, i3);
        C = v11.d;
    }

    public static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static int b(long j2) {
        int i2 = (int) j2;
        if (i2 == j2) {
            return i2;
        }
        k21.f(di0.s(j2, "Too big for an int: "));
        return 0;
    }
}
