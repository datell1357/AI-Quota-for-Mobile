package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.api.Api;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lk1 {
    public final sy a;
    public boolean c;
    public int g;
    public int h;
    public int b = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public int d = BlockstoreClient.MAX_SIZE;
    public hj1[] e = new hj1[8];
    public int f = 7;

    public lk1(sy syVar) {
        this.a = syVar;
    }

    public final void a(int i) {
        int i2;
        if (i > 0) {
            int length = this.e.length - 1;
            int i3 = 0;
            while (true) {
                i2 = this.f;
                if (length < i2 || i <= 0) {
                    break;
                }
                hj1 hj1Var = this.e[length];
                hj1Var.getClass();
                i -= hj1Var.c;
                int i4 = this.h;
                hj1 hj1Var2 = this.e[length];
                hj1Var2.getClass();
                this.h = i4 - hj1Var2.c;
                this.g--;
                i3++;
                length--;
            }
            hj1[] hj1VarArr = this.e;
            int i5 = i2 + 1;
            System.arraycopy(hj1VarArr, i5, hj1VarArr, i5 + i3, this.g);
            hj1[] hj1VarArr2 = this.e;
            int i6 = this.f + 1;
            Arrays.fill(hj1VarArr2, i6, i6 + i3, (Object) null);
            this.f += i3;
        }
    }

    public final void b(hj1 hj1Var) {
        int i = hj1Var.c;
        int i2 = this.d;
        if (i > i2) {
            hj1[] hj1VarArr = this.e;
            ji.U(0, hj1VarArr.length, null, hj1VarArr);
            this.f = this.e.length - 1;
            this.g = 0;
            this.h = 0;
            return;
        }
        a((this.h + i) - i2);
        int i3 = this.g + 1;
        hj1[] hj1VarArr2 = this.e;
        if (i3 > hj1VarArr2.length) {
            hj1[] hj1VarArr3 = new hj1[hj1VarArr2.length * 2];
            System.arraycopy(hj1VarArr2, 0, hj1VarArr3, hj1VarArr2.length, hj1VarArr2.length);
            this.f = this.e.length - 1;
            this.e = hj1VarArr3;
        }
        int i4 = this.f;
        this.f = i4 - 1;
        this.e[i4] = hj1Var;
        this.g++;
        this.h += i;
    }

    public final void c(g00 g00Var) throws EOFException {
        g00Var.getClass();
        int[] iArr = fn1.a;
        int iC = g00Var.c();
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < iC; i++) {
            byte bH = g00Var.h(i);
            byte[] bArr = fi4.a;
            j2 += (long) fn1.b[bH & 255];
        }
        int i2 = (int) ((j2 + 7) >> 3);
        int iC2 = g00Var.c();
        sy syVar = this.a;
        if (i2 >= iC2) {
            e(g00Var.c(), 127, 0);
            syVar.j0(g00Var);
            return;
        }
        sy syVar2 = new sy();
        int[] iArr2 = fn1.a;
        int iC3 = g00Var.c();
        int i3 = 0;
        for (int i4 = 0; i4 < iC3; i4++) {
            byte bH2 = g00Var.h(i4);
            byte[] bArr2 = fi4.a;
            int i5 = bH2 & 255;
            int i6 = fn1.a[i5];
            byte b = fn1.b[i5];
            j = (j << b) | ((long) i6);
            i3 += b;
            while (i3 >= 8) {
                i3 -= 8;
                syVar2.o0((int) (j >> i3));
            }
        }
        if (i3 > 0) {
            syVar2.o0((int) ((j << (8 - i3)) | (255 >>> i3)));
        }
        g00 g00VarP = syVar2.p(syVar2.o);
        e(g00VarP.c(), 127, 128);
        syVar.j0(g00VarP);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(java.util.ArrayList r14) throws java.io.EOFException {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lk1.d(java.util.ArrayList):void");
    }

    public final void e(int i, int i2, int i3) {
        sy syVar = this.a;
        if (i < i2) {
            syVar.o0(i | i3);
            return;
        }
        syVar.o0(i3 | i2);
        int i4 = i - i2;
        while (i4 >= 128) {
            syVar.o0(128 | (i4 & 127));
            i4 >>>= 7;
        }
        syVar.o0(i4);
    }
}
