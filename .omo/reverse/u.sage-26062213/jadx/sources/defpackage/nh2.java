package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nh2 extends b70 {
    public final byte[] p;
    public final String q;
    public final byte[] r;
    public final int s;

    public nh2(String str) throws kh2 {
        Charset charset;
        byte[] bArrF = oq.f(str.getBytes(ph2.b));
        this.n = 0;
        this.o = bArrF;
        if (bArrF.length < ph2.d.length) {
            throw new kh2(cm1.a("NTLM message decoding error - packet too short"));
        }
        int i = 0;
        while (true) {
            byte[] bArr = ph2.d;
            int length = bArr.length;
            byte[] bArr2 = (byte[]) this.o;
            if (i >= length) {
                int iH = ph2.h(bArr.length, bArr2);
                if (iH != 2) {
                    throw new kh2(cm1.a("NTLM type " + Integer.toString(2) + " message expected - instead got type " + Integer.toString(iH)));
                }
                byte[] bArr3 = (byte[]) this.o;
                this.n = bArr3.length;
                byte[] bArr4 = new byte[8];
                this.p = bArr4;
                if (bArr3.length < 32) {
                    throw new kh2(cm1.a("NTLM: Message too short"));
                }
                System.arraycopy(bArr3, 24, bArr4, 0, 8);
                int iH2 = ph2.h(20, (byte[]) this.o);
                this.s = iH2;
                this.q = null;
                if (this.n >= 20) {
                    byte[] bArrD = D(12);
                    if (bArrD.length != 0) {
                        if ((iH2 & 1) == 0) {
                            charset = ph2.b;
                        } else {
                            charset = ph2.a;
                            if (charset == null) {
                                throw new kh2("Unicode not supported");
                            }
                        }
                        this.q = new String(bArrD, charset);
                    }
                }
                this.r = null;
                if (this.n >= 48) {
                    byte[] bArrD2 = D(40);
                    if (bArrD2.length != 0) {
                        this.r = bArrD2;
                        return;
                    }
                    return;
                }
                return;
            }
            if (bArr2[i] != bArr[i]) {
                throw new kh2(cm1.a("NTLM message expected - instead got unrecognized bytes"));
            }
            i++;
        }
    }
}
