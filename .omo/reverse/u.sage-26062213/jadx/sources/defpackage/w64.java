package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w64 {
    public static v64 a(Object obj) {
        sg1 sg1Var = (sg1) obj;
        v64 v64Var = sg1Var.unknownFields;
        if (v64Var != v64.f) {
            return v64Var;
        }
        v64 v64Var2 = new v64(0, new int[8], new Object[8], true);
        sg1Var.unknownFields = v64Var2;
        return v64Var2;
    }

    public static boolean b(int i, e50 e50Var, Object obj) throws wt1 {
        int i2 = e50Var.a;
        b70 b70Var = (b70) e50Var.d;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            e50Var.z(0);
            ((v64) obj).c(i3 << 3, Long.valueOf(b70Var.y()));
            return true;
        }
        if (i4 == 1) {
            e50Var.z(1);
            ((v64) obj).c((i3 << 3) | 1, Long.valueOf(b70Var.v()));
            return true;
        }
        if (i4 == 2) {
            ((v64) obj).c((i3 << 3) | 2, e50Var.h());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw wt1.b();
            }
            e50Var.z(5);
            ((v64) obj).c(5 | (i3 << 3), Integer.valueOf(b70Var.u()));
            return true;
        }
        v64 v64Var = new v64(0, new int[8], new Object[8], true);
        int i5 = i3 << 3;
        int i6 = i5 | 4;
        int i7 = i + 1;
        if (i7 >= 100) {
            throw new wt1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (e50Var.b() != Integer.MAX_VALUE && b(i7, e50Var, v64Var)) {
        }
        if (i6 != e50Var.a) {
            throw new wt1("Protocol message end-group tag did not match expected tag.");
        }
        if (v64Var.e) {
            v64Var.e = false;
        }
        ((v64) obj).c(i5 | 3, v64Var);
        return true;
    }
}
