package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b03 implements qn2 {
    public static final Charset f = Charset.forName("UTF-8");
    public static final a51 g;
    public static final a51 h;
    public static final qv1 i;
    public OutputStream a;
    public final HashMap b;
    public final HashMap c;
    public final pn2 d;
    public final c03 e = new c03(this);

    static {
        ij ijVar = new ij(1);
        HashMap map = new HashMap();
        map.put(yz2.class, ijVar);
        g = new a51("key", Collections.unmodifiableMap(new HashMap(map)));
        ij ijVar2 = new ij(2);
        HashMap map2 = new HashMap();
        map2.put(yz2.class, ijVar2);
        h = new a51("value", Collections.unmodifiableMap(new HashMap(map2)));
        i = new qv1(1);
    }

    public b03(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, pn2 pn2Var) {
        this.a = byteArrayOutputStream;
        this.b = map;
        this.c = map2;
        this.d = pn2Var;
    }

    public static int k(a51 a51Var) {
        yz2 yz2Var = (yz2) ((Annotation) a51Var.b.get(yz2.class));
        if (yz2Var != null) {
            return yz2Var.tag();
        }
        throw new p01("Field has no @Protobuf config");
    }

    @Override // defpackage.qn2
    public final qn2 a(a51 a51Var, Object obj) {
        i(a51Var, obj, true);
        return this;
    }

    public final void b(a51 a51Var, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return;
        }
        l((k(a51Var) << 3) | 1);
        this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    public final void c(a51 a51Var, int i2, boolean z) {
        if (z && i2 == 0) {
            return;
        }
        yz2 yz2Var = (yz2) ((Annotation) a51Var.b.get(yz2.class));
        if (yz2Var == null) {
            throw new p01("Field has no @Protobuf config");
        }
        int iOrdinal = yz2Var.intEncoding().ordinal();
        if (iOrdinal == 0) {
            l(yz2Var.tag() << 3);
            l(i2);
        } else if (iOrdinal == 1) {
            l(yz2Var.tag() << 3);
            l((i2 << 1) ^ (i2 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            l((yz2Var.tag() << 3) | 5);
            this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
        }
    }

    @Override // defpackage.qn2
    public final qn2 d(a51 a51Var, boolean z) {
        c(a51Var, z ? 1 : 0, true);
        return this;
    }

    @Override // defpackage.qn2
    public final qn2 e(a51 a51Var, int i2) {
        c(a51Var, i2, true);
        return this;
    }

    @Override // defpackage.qn2
    public final qn2 f(a51 a51Var, double d) throws IOException {
        b(a51Var, d, true);
        return this;
    }

    @Override // defpackage.qn2
    public final qn2 g(a51 a51Var, long j) throws IOException {
        h(a51Var, j, true);
        return this;
    }

    public final void h(a51 a51Var, long j, boolean z) throws IOException {
        if (z && j == 0) {
            return;
        }
        yz2 yz2Var = (yz2) ((Annotation) a51Var.b.get(yz2.class));
        if (yz2Var == null) {
            throw new p01("Field has no @Protobuf config");
        }
        int iOrdinal = yz2Var.intEncoding().ordinal();
        if (iOrdinal == 0) {
            l(yz2Var.tag() << 3);
            m(j);
        } else if (iOrdinal == 1) {
            l(yz2Var.tag() << 3);
            m((j >> 63) ^ (j << 1));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            l((yz2Var.tag() << 3) | 1);
            this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
        }
    }

    public final void i(a51 a51Var, Object obj, boolean z) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return;
            }
            l((k(a51Var) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            l(bytes.length);
            this.a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                i(a51Var, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                j(i, a51Var, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            b(a51Var, ((Double) obj).doubleValue(), z);
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z && fFloatValue == 0.0f) {
                return;
            }
            l((k(a51Var) << 3) | 5);
            this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            h(a51Var, ((Number) obj).longValue(), z);
            return;
        }
        if (obj instanceof Boolean) {
            c(a51Var, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return;
            }
            l((k(a51Var) << 3) | 2);
            l(bArr.length);
            this.a.write(bArr);
            return;
        }
        pn2 pn2Var = (pn2) this.b.get(obj.getClass());
        if (pn2Var != null) {
            j(pn2Var, a51Var, obj, z);
            return;
        }
        v94 v94Var = (v94) this.c.get(obj.getClass());
        if (v94Var != null) {
            c03 c03Var = this.e;
            c03Var.a = false;
            c03Var.c = a51Var;
            c03Var.b = z;
            v94Var.a(obj, c03Var);
            return;
        }
        if (obj instanceof o72) {
            c(a51Var, ((o72) obj).n, true);
        } else if (obj instanceof Enum) {
            c(a51Var, ((Enum) obj).ordinal(), true);
        } else {
            j(this.d, a51Var, obj, z);
        }
    }

    public final void j(pn2 pn2Var, a51 a51Var, Object obj, boolean z) throws IOException {
        a22 a22Var = new a22();
        a22Var.n = 0L;
        try {
            OutputStream outputStream = this.a;
            this.a = a22Var;
            try {
                pn2Var.a(obj, this);
                this.a = outputStream;
                long j = a22Var.n;
                a22Var.close();
                if (z && j == 0) {
                    return;
                }
                l((k(a51Var) << 3) | 2);
                m(j);
                pn2Var.a(obj, this);
            } catch (Throwable th) {
                this.a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                a22Var.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void l(int i2) throws IOException {
        while (true) {
            long j = i2 & (-128);
            OutputStream outputStream = this.a;
            if (j == 0) {
                outputStream.write(i2 & 127);
                return;
            } else {
                outputStream.write((i2 & 127) | 128);
                i2 >>>= 7;
            }
        }
    }

    public final void m(long j) throws IOException {
        while (true) {
            long j2 = (-128) & j;
            OutputStream outputStream = this.a;
            if (j2 == 0) {
                outputStream.write(((int) j) & 127);
                return;
            } else {
                outputStream.write((((int) j) & 127) | 128);
                j >>>= 7;
            }
        }
    }
}
