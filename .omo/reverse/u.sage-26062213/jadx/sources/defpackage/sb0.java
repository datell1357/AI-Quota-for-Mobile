package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class sb0 implements c13, qk2 {
    public boolean n;
    public Object o;

    public /* synthetic */ sb0(Object obj) {
        this.o = obj;
        this.n = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.qk2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object I(long r4, long r6, defpackage.dh0 r8) {
        /*
            r3 = this;
            boolean r4 = r8 instanceof defpackage.sf3
            if (r4 == 0) goto L13
            r4 = r8
            sf3 r4 = (defpackage.sf3) r4
            int r5 = r4.t
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r5 & r0
            if (r1 == 0) goto L13
            int r5 = r5 - r0
            r4.t = r5
            goto L1a
        L13:
            sf3 r4 = new sf3
            fh0 r8 = (defpackage.fh0) r8
            r4.<init>(r3, r8)
        L1a:
            java.lang.Object r5 = r4.r
            int r8 = r4.t
            r0 = 1
            if (r8 == 0) goto L30
            if (r8 != r0) goto L29
            long r6 = r4.q
            defpackage.gg4.T(r5)
            goto L4f
        L29:
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r3)
            r3 = 0
            return r3
        L30:
            defpackage.gg4.T(r5)
            boolean r5 = r3.n
            r1 = 0
            if (r5 == 0) goto L57
            java.lang.Object r3 = r3.o
            dg3 r3 = (defpackage.dg3) r3
            boolean r5 = r3.i
            if (r5 == 0) goto L42
            goto L53
        L42:
            r4.q = r6
            r4.t = r0
            java.lang.Object r5 = r3.a(r6, r4)
            ri0 r3 = defpackage.ri0.n
            if (r5 != r3) goto L4f
            return r3
        L4f:
            ra4 r5 = (defpackage.ra4) r5
            long r1 = r5.a
        L53:
            long r1 = defpackage.ra4.d(r6, r1)
        L57:
            ra4 r3 = new ra4
            r3.<init>(r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sb0.I(long, long, dh0):java.lang.Object");
    }

    @Override // defpackage.qk2
    public long J(int i, long j, long j2) {
        if (!this.n) {
            return 0L;
        }
        dg3 dg3Var = (dg3) this.o;
        if (dg3Var.a.e()) {
            return 0L;
        }
        return dg3Var.i(dg3Var.e(dg3Var.a.j(dg3Var.e(dg3Var.h(j2)))));
    }

    @Override // defpackage.c13
    public void a(b13 b13Var, int i) {
        StringBuilder sb = (StringBuilder) this.o;
        if (this.n) {
            this.n = false;
        } else {
            sb.append(", ");
        }
        sb.append(i);
    }

    public void b() {
        this.n = false;
    }

    public void c(byte b) {
        ((d90) this.o).q(String.valueOf(b));
    }

    public void d(char c) {
        d90 d90Var = (d90) this.o;
        d90Var.g(d90Var.o, 1);
        char[] cArr = (char[]) d90Var.p;
        int i = d90Var.o;
        d90Var.o = i + 1;
        cArr[i] = c;
    }

    public void e(int i) {
        ((d90) this.o).q(String.valueOf(i));
    }

    public void f(long j) {
        ((d90) this.o).q(String.valueOf(j));
    }

    public void g(short s) {
        ((d90) this.o).q(String.valueOf(s));
    }

    public void h(String str) {
        byte b;
        str.getClass();
        d90 d90Var = (d90) this.o;
        d90Var.g(d90Var.o, str.length() + 2);
        char[] cArr = (char[]) d90Var.p;
        int i = d90Var.o;
        int i2 = i + 1;
        cArr[i] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        int i3 = length + i2;
        int i4 = i2;
        while (i4 < i3) {
            char c = cArr[i4];
            byte[] bArr = xs3.b;
            if (c < bArr.length && bArr[c] != 0) {
                int length2 = str.length();
                for (int i5 = i4 - i2; i5 < length2; i5++) {
                    d90Var.g(i4, 2);
                    char cCharAt = str.charAt(i5);
                    byte[] bArr2 = xs3.b;
                    if (cCharAt >= bArr2.length || (b = bArr2[cCharAt]) == 0) {
                        int i6 = i4 + 1;
                        ((char[]) d90Var.p)[i4] = cCharAt;
                        i4 = i6;
                    } else {
                        if (b == 1) {
                            String str2 = xs3.a[cCharAt];
                            str2.getClass();
                            d90Var.g(i4, str2.length());
                            str2.getChars(0, str2.length(), (char[]) d90Var.p, i4);
                            int length3 = str2.length() + i4;
                            d90Var.o = length3;
                            i4 = length3;
                        } else {
                            char[] cArr2 = (char[]) d90Var.p;
                            cArr2[i4] = '\\';
                            cArr2[i4 + 1] = (char) b;
                            i4 += 2;
                            d90Var.o = i4;
                        }
                    }
                }
                d90Var.g(i4, 1);
                ((char[]) d90Var.p)[i4] = '\"';
                d90Var.o = i4 + 1;
                return;
            }
            i4++;
        }
        cArr[i3] = '\"';
        d90Var.o = i3 + 1;
    }

    public void k(long j, String str) {
        new rw4(this, str, Long.valueOf(j), 0);
    }

    public rw4 l(String str, boolean z) {
        return new rw4(this, str, Boolean.valueOf(z), 1);
    }

    public sb0(Uri uri, boolean z, boolean z2) {
        this.o = uri;
        this.n = z;
    }

    public /* synthetic */ sb0(Object obj, boolean z) {
        this.o = obj;
        this.n = z;
    }

    public void i() {
    }

    public void j() {
    }
}
