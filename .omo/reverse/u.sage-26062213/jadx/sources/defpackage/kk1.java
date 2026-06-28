package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kk1 {
    public final d23 c;
    public int f;
    public int g;
    public int a = BlockstoreClient.MAX_SIZE;
    public final ArrayList b = new ArrayList();
    public hj1[] d = new hj1[8];
    public int e = 7;

    public kk1(el1 el1Var) {
        this.c = new d23(el1Var);
    }

    public final int a(int i) {
        int i2;
        int i3 = 0;
        if (i > 0) {
            int length = this.d.length;
            while (true) {
                length--;
                i2 = this.e;
                if (length < i2 || i <= 0) {
                    break;
                }
                hj1 hj1Var = this.d[length];
                hj1Var.getClass();
                int i4 = hj1Var.c;
                i -= i4;
                this.g -= i4;
                this.f--;
                i3++;
            }
            hj1[] hj1VarArr = this.d;
            System.arraycopy(hj1VarArr, i2 + 1, hj1VarArr, i2 + 1 + i3, this.f);
            this.e += i3;
        }
        return i3;
    }

    public final g00 b(int i) throws IOException {
        if (i >= 0) {
            hj1[] hj1VarArr = mk1.a;
            if (i <= hj1VarArr.length - 1) {
                return hj1VarArr[i].a;
            }
        }
        int length = this.e + 1 + (i - mk1.a.length);
        if (length >= 0) {
            hj1[] hj1VarArr2 = this.d;
            if (length < hj1VarArr2.length) {
                hj1 hj1Var = hj1VarArr2[length];
                hj1Var.getClass();
                return hj1Var.a;
            }
        }
        throw new IOException("Header index too large " + (i + 1));
    }

    public final void c(hj1 hj1Var) {
        this.b.add(hj1Var);
        int i = hj1Var.c;
        int i2 = this.a;
        if (i > i2) {
            hj1[] hj1VarArr = this.d;
            ji.U(0, hj1VarArr.length, null, hj1VarArr);
            this.e = this.d.length - 1;
            this.f = 0;
            this.g = 0;
            return;
        }
        a((this.g + i) - i2);
        int i3 = this.f + 1;
        hj1[] hj1VarArr2 = this.d;
        if (i3 > hj1VarArr2.length) {
            hj1[] hj1VarArr3 = new hj1[hj1VarArr2.length * 2];
            System.arraycopy(hj1VarArr2, 0, hj1VarArr3, hj1VarArr2.length, hj1VarArr2.length);
            this.e = this.d.length - 1;
            this.d = hj1VarArr3;
        }
        int i4 = this.e;
        this.e = i4 - 1;
        this.d[i4] = hj1Var;
        this.f++;
        this.g += i;
    }

    public final g00 d() {
        d23 d23Var = this.c;
        byte b = d23Var.readByte();
        byte[] bArr = fi4.a;
        int i = b & 255;
        int i2 = 0;
        boolean z = (b & 128) == 128;
        long jE = e(i, 127);
        if (!z) {
            return d23Var.p(jE);
        }
        sy syVar = new sy();
        int[] iArr = fn1.a;
        d23Var.getClass();
        en1 en1Var = fn1.c;
        en1 en1Var2 = en1Var;
        int i3 = 0;
        for (long j = 0; j < jE; j++) {
            byte b2 = d23Var.readByte();
            byte[] bArr2 = fi4.a;
            i2 = (i2 << 8) | (b2 & 255);
            i3 += 8;
            while (i3 >= 8) {
                en1[] en1VarArr = (en1[]) en1Var2.p;
                en1VarArr.getClass();
                en1Var2 = en1VarArr[(i2 >>> (i3 - 8)) & 255];
                en1Var2.getClass();
                if (((en1[]) en1Var2.p) == null) {
                    syVar.o0(en1Var2.n);
                    i3 -= en1Var2.o;
                    en1Var2 = en1Var;
                } else {
                    i3 -= 8;
                }
            }
        }
        while (i3 > 0) {
            en1[] en1VarArr2 = (en1[]) en1Var2.p;
            en1VarArr2.getClass();
            en1 en1Var3 = en1VarArr2[(i2 << (8 - i3)) & 255];
            en1Var3.getClass();
            int i4 = en1Var3.o;
            if (((en1[]) en1Var3.p) != null || i4 > i3) {
                break;
            }
            syVar.o0(en1Var3.n);
            i3 -= i4;
            en1Var2 = en1Var;
        }
        return syVar.p(syVar.o);
    }

    public final int e(int i, int i2) {
        int i3 = i & i2;
        if (i3 < i2) {
            return i3;
        }
        int i4 = 0;
        while (true) {
            byte b = this.c.readByte();
            byte[] bArr = fi4.a;
            int i5 = b & 255;
            if ((b & 128) == 0) {
                return i2 + (i5 << i4);
            }
            i2 += (b & 127) << i4;
            i4 += 7;
        }
    }
}
