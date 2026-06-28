package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z44 {
    public static final ThreadLocal d = new ThreadLocal();
    public final int a;
    public final qd1 b;
    public volatile int c = 0;

    public z44(qd1 qd1Var, int i) {
        this.b = qd1Var;
        this.a = i;
    }

    public final int a(int i) {
        xc2 xc2VarB = b();
        int iB = xc2VarB.b(16);
        if (iB == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) xc2VarB.q;
        int i2 = iB + xc2VarB.n;
        return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
    }

    public final xc2 b() {
        ThreadLocal threadLocal = d;
        xc2 xc2Var = (xc2) threadLocal.get();
        if (xc2Var == null) {
            xc2Var = new xc2();
            threadLocal.set(xc2Var);
        }
        yc2 yc2Var = (yc2) this.b.o;
        int iB = yc2Var.b(6);
        if (iB != 0) {
            int i = iB + yc2Var.n;
            int i2 = (this.a * 4) + ((ByteBuffer) yc2Var.q).getInt(i) + i + 4;
            int i3 = ((ByteBuffer) yc2Var.q).getInt(i2) + i2;
            ByteBuffer byteBuffer = (ByteBuffer) yc2Var.q;
            xc2Var.q = byteBuffer;
            if (byteBuffer != null) {
                xc2Var.n = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                xc2Var.o = i4;
                xc2Var.p = ((ByteBuffer) xc2Var.q).getShort(i4);
                return xc2Var;
            }
            xc2Var.n = 0;
            xc2Var.o = 0;
            xc2Var.p = 0;
        }
        return xc2Var;
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        xc2 xc2VarB = b();
        int iB = xc2VarB.b(4);
        sb.append(Integer.toHexString(iB != 0 ? ((ByteBuffer) xc2VarB.q).getInt(iB + xc2VarB.n) : 0));
        sb.append(", codepoints:");
        xc2 xc2VarB2 = b();
        int iB2 = xc2VarB2.b(16);
        if (iB2 != 0) {
            int i2 = iB2 + xc2VarB2.n;
            i = ((ByteBuffer) xc2VarB2.q).getInt(((ByteBuffer) xc2VarB2.q).getInt(i2) + i2);
        } else {
            i = 0;
        }
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(Integer.toHexString(a(i3)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
