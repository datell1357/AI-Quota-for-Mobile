package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fl1 implements Closeable {
    public static final Logger q;
    public final fz n;
    public final el1 o;
    public final kk1 p;

    static {
        Logger logger = Logger.getLogger(tk1.class.getName());
        logger.getClass();
        q = logger;
    }

    public fl1(d23 d23Var) {
        d23Var.getClass();
        this.n = d23Var;
        el1 el1Var = new el1(d23Var);
        this.o = el1Var;
        this.p = new kk1(el1Var);
    }

    public final void A(bl1 bl1Var, int i, int i2, int i3) throws IOException {
        int i4;
        if (i3 == 0) {
            p61.k("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
            return;
        }
        int i5 = 0;
        if ((i2 & 8) != 0) {
            byte b = this.n.readByte();
            byte[] bArr = fi4.a;
            i4 = b & 255;
        } else {
            i4 = 0;
        }
        int i6 = this.n.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
        List listR = r(qj0.Q(i - 4, i2, i4), i4, i2, i3);
        cl1 cl1Var = (cl1) bl1Var.p;
        synchronized (cl1Var) {
            if (cl1Var.L.contains(Integer.valueOf(i6))) {
                cl1Var.F(i6, d21.q);
                return;
            }
            cl1Var.L.add(Integer.valueOf(i6));
            sw3.b(cl1Var.v, cl1Var.p + '[' + i6 + "] onRequest", new xk1(cl1Var, i6, listR, i5));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x0232, code lost:
    
        defpackage.p61.k(defpackage.di0.q(r6, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x023b, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(boolean r14, defpackage.bl1 r15) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 854
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fl1.b(boolean, bl1):boolean");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.n.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x011c, code lost:
    
        if (r6 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x011e, code lost:
    
        r9.k(defpackage.kj1.o, true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(defpackage.bl1 r17, int r18, int r19, final int r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fl1.j(bl1, int, int, int):void");
    }

    public final List r(int i, int i2, int i3, int i4) throws IOException {
        el1 el1Var = this.o;
        el1Var.r = i;
        el1Var.o = i;
        el1Var.s = i2;
        el1Var.p = i3;
        el1Var.q = i4;
        kk1 kk1Var = this.p;
        d23 d23Var = kk1Var.c;
        ArrayList arrayList = kk1Var.b;
        while (!d23Var.b()) {
            byte b = d23Var.readByte();
            byte[] bArr = fi4.a;
            int i5 = b & 255;
            if (i5 == 128) {
                p61.k("index == 0");
                return null;
            }
            if ((b & 128) == 128) {
                int iE = kk1Var.e(i5, 127);
                int i6 = iE - 1;
                if (i6 >= 0) {
                    hj1[] hj1VarArr = mk1.a;
                    if (i6 <= hj1VarArr.length - 1) {
                        arrayList.add(hj1VarArr[i6]);
                    }
                }
                int length = kk1Var.e + 1 + (i6 - mk1.a.length);
                if (length >= 0) {
                    hj1[] hj1VarArr2 = kk1Var.d;
                    if (length < hj1VarArr2.length) {
                        hj1 hj1Var = hj1VarArr2[length];
                        hj1Var.getClass();
                        arrayList.add(hj1Var);
                    }
                }
                p61.k(di0.q(iE, "Header index too large "));
                return null;
            }
            if (i5 == 64) {
                hj1[] hj1VarArr3 = mk1.a;
                g00 g00VarD = kk1Var.d();
                mk1.a(g00VarD);
                kk1Var.c(new hj1(g00VarD, kk1Var.d()));
            } else if ((b & 64) == 64) {
                kk1Var.c(new hj1(kk1Var.b(kk1Var.e(i5, 63) - 1), kk1Var.d()));
            } else if ((b & 32) == 32) {
                int iE2 = kk1Var.e(i5, 31);
                kk1Var.a = iE2;
                if (iE2 < 0 || iE2 > 4096) {
                    throw new IOException("Invalid dynamic table size update " + kk1Var.a);
                }
                int i7 = kk1Var.g;
                if (iE2 < i7) {
                    if (iE2 == 0) {
                        hj1[] hj1VarArr4 = kk1Var.d;
                        ji.U(0, hj1VarArr4.length, null, hj1VarArr4);
                        kk1Var.e = kk1Var.d.length - 1;
                        kk1Var.f = 0;
                        kk1Var.g = 0;
                    } else {
                        kk1Var.a(i7 - iE2);
                    }
                }
            } else if (i5 == 16 || i5 == 0) {
                hj1[] hj1VarArr5 = mk1.a;
                g00 g00VarD2 = kk1Var.d();
                mk1.a(g00VarD2);
                arrayList.add(new hj1(g00VarD2, kk1Var.d()));
            } else {
                arrayList.add(new hj1(kk1Var.b(kk1Var.e(i5, 15) - 1), kk1Var.d()));
            }
        }
        List listC0 = o70.C0(arrayList);
        arrayList.clear();
        return listC0;
    }

    public final void z(bl1 bl1Var, int i, int i2, int i3) throws IOException {
        int i4;
        if (i3 == 0) {
            p61.k("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
            return;
        }
        boolean z = false;
        boolean z2 = (i2 & 1) != 0;
        if ((i2 & 8) != 0) {
            byte b = this.n.readByte();
            byte[] bArr = fi4.a;
            i4 = b & 255;
        } else {
            i4 = 0;
        }
        if ((i2 & 32) != 0) {
            fz fzVar = this.n;
            fzVar.readInt();
            fzVar.readByte();
            byte[] bArr2 = fi4.a;
            i -= 5;
        }
        List listR = r(qj0.Q(i, i2, i4), i4, i2, i3);
        cl1 cl1Var = (cl1) bl1Var.p;
        if (i3 != 0 && (i3 & 1) == 0) {
            z = true;
        }
        if (z) {
            sw3.b(cl1Var.v, cl1Var.p + '[' + i3 + "] onHeaders", new xk1(cl1Var, i3, listR, z2));
            return;
        }
        synchronized (cl1Var) {
            jl1 jl1VarJ = cl1Var.j(i3);
            if (jl1VarJ != null) {
                jl1VarJ.k(hi4.f(listR), z2);
                return;
            }
            if (cl1Var.s) {
                return;
            }
            if (i3 <= cl1Var.q) {
                return;
            }
            if (i3 % 2 == cl1Var.r % 2) {
                return;
            }
            jl1 jl1Var = new jl1(i3, cl1Var, false, z2, hi4.f(listR));
            cl1Var.q = i3;
            cl1Var.o.put(Integer.valueOf(i3), jl1Var);
            sw3.b(cl1Var.t.d(), cl1Var.p + '[' + i3 + "] onStream", new h4(14, cl1Var, jl1Var));
        }
    }
}
