package defpackage;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tz0 {
    public final /* synthetic */ int a;
    public int b;
    public int c;
    public int d;
    public final Object e;
    public Object f;
    public Object g;

    public tz0(el4 el4Var, Object[] objArr, StringBuilder sb) {
        this.a = 2;
        this.b = 0;
        this.c = -1;
        hm4.a(el4Var, "context");
        this.e = el4Var;
        this.d = 0;
        this.f = objArr;
        this.g = sb;
    }

    public static void h(StringBuilder sb, Object obj, String str) {
        sb.append("[INVALID: format=");
        sb.append(str);
        sb.append(", type=");
        sb.append(obj.getClass().getCanonicalName());
        sb.append(", value=");
        sb.append(bh5.a(obj));
        sb.append("]");
    }

    public void a() {
        this.b = 1;
        this.f = (zc2) this.e;
        this.d = 0;
    }

    public boolean b() {
        xc2 xc2VarB = ((zc2) this.f).b.b();
        int iB = xc2VarB.b(6);
        return !(iB == 0 || ((ByteBuffer) xc2VarB.q).get(iB + xc2VarB.n) == 0) || this.c == 65039;
    }

    public void c() {
        if (this.c == 0) {
            return;
        }
        HashMap map = ((pf5) this.g).d;
        int[] iArr = (int[]) this.e;
        pf5 pf5Var = (pf5) map.get(Integer.valueOf(iArr[this.b]));
        while (true) {
            int i = (pf5Var.b - pf5Var.a) + 1;
            int i2 = this.c;
            if (i > i2) {
                return;
            }
            int i3 = this.b + i;
            this.b = i3;
            this.g = pf5Var;
            int i4 = i2 - i;
            this.c = i4;
            if (i4 > 0) {
                pf5Var = (pf5) pf5Var.d.get(Integer.valueOf(iArr[i3]));
            }
        }
    }

    public void d() {
        pf5 pf5Var = ((pf5) this.g).c;
        if (pf5Var != null) {
            this.g = pf5Var;
        } else {
            this.g = (pf5) this.f;
            int i = this.c;
            if (i > 0) {
                this.c = i - 1;
            }
            if (this.d > 0) {
                this.b++;
            }
        }
        c();
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(java.lang.Object r8, defpackage.yg5 r9, defpackage.zg5 r10) {
        /*
            Method dump skipped, instruction units count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tz0.e(java.lang.Object, yg5, zg5):void");
    }

    public void f(pf5 pf5Var, StringBuilder sb) {
        for (pf5 pf5Var2 : pf5Var.d.values()) {
            sb.append("  ");
            sb.append(pf5Var);
            sb.append(" -> ");
            sb.append(pf5Var2);
            sb.append(" [label=\"");
            int[] iArr = (int[]) this.e;
            sb.append(Arrays.toString(Arrays.copyOfRange(iArr, pf5Var2.a, Math.min(iArr.length, pf5Var2.b + 1))));
            sb.append("\"]\n");
            f(pf5Var2, sb);
        }
    }

    public boolean g(int i, int i2, int i3, int i4) {
        if (i < 0 || i3 < 0) {
            return false;
        }
        int[] iArr = (int[]) this.e;
        int length = iArr.length;
        int iMin = Math.min(length, i2);
        if (iMin - i != Math.min(length, i4) - i3) {
            return false;
        }
        for (int i5 = i; i5 <= iMin; i5++) {
            if (iArr[i5] != iArr[(i3 + i5) - i]) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder("digraph {\n");
                f((pf5) this.f, sb);
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public tz0(int[] iArr) {
        this.a = 1;
        this.e = iArr;
        pf5 pf5Var = new pf5(-1, -1);
        this.f = pf5Var;
        this.g = pf5Var;
    }

    public tz0(zc2 zc2Var) {
        this.a = 0;
        this.b = 1;
        this.e = zc2Var;
        this.f = zc2Var;
    }
}
