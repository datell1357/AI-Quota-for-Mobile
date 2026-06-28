package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r03 {
    public static final g00 b = new g00(Arrays.copyOf(new byte[]{42}, 1));
    public static final List c = tv4.E("*");
    public static final r03 d = new r03(new hg(1));
    public final hg a;

    public r03(hg hgVar) {
        this.a = hgVar;
    }

    public static List b(String str) {
        List listR0 = zs3.R0(str, new char[]{'.'});
        if (!nt1.g(o70.o0(listR0), "")) {
            return listR0;
        }
        int size = listR0.size() - 1;
        return o70.z0(size >= 0 ? size : 0, listR0);
    }

    public final String a(String str) {
        String strR;
        String strR2;
        String strR3;
        List listR0;
        int size;
        int size2;
        String unicode = IDN.toUnicode(str);
        unicode.getClass();
        List listB = b(unicode);
        hg hgVar = this.a;
        AtomicBoolean atomicBoolean = (AtomicBoolean) hgVar.a;
        if (atomicBoolean.get() || !atomicBoolean.compareAndSet(false, true)) {
            try {
                ((CountDownLatch) hgVar.b).await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        hgVar.s();
                        break;
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z = true;
                    } catch (IOException e) {
                        hgVar.e = e;
                        if (z) {
                        }
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        if (((g00) hgVar.c) == null) {
            StringBuilder sb = new StringBuilder("Unable to load ");
            sb.append(hgVar.f);
            sb.append(" resource.");
            IllegalStateException illegalStateException = new IllegalStateException(sb.toString());
            illegalStateException.initCause((IOException) hgVar.e);
            throw illegalStateException;
        }
        int size3 = listB.size();
        g00[] g00VarArr = new g00[size3];
        for (int i = 0; i < size3; i++) {
            g00 g00Var = g00.q;
            g00VarArr[i] = bx3.o((String) listB.get(i));
        }
        int i2 = 0;
        while (true) {
            if (i2 >= size3) {
                strR = null;
                break;
            }
            g00 g00Var2 = (g00) hgVar.c;
            if (g00Var2 == null) {
                nt1.X("bytes");
                throw null;
            }
            strR = b21.r(g00Var2, g00VarArr, i2);
            if (strR != null) {
                break;
            }
            i2++;
        }
        if (size3 > 1) {
            g00[] g00VarArr2 = (g00[]) g00VarArr.clone();
            int length = g00VarArr2.length - 1;
            for (int i3 = 0; i3 < length; i3++) {
                g00VarArr2[i3] = b;
                g00 g00Var3 = (g00) hgVar.c;
                if (g00Var3 == null) {
                    nt1.X("bytes");
                    throw null;
                }
                strR2 = b21.r(g00Var3, g00VarArr2, i3);
                if (strR2 != null) {
                    break;
                }
            }
            strR2 = null;
        } else {
            strR2 = null;
        }
        if (strR2 != null) {
            int i4 = size3 - 1;
            for (int i5 = 0; i5 < i4; i5++) {
                g00 g00Var4 = (g00) hgVar.d;
                if (g00Var4 == null) {
                    nt1.X("exceptionBytes");
                    throw null;
                }
                strR3 = b21.r(g00Var4, g00VarArr, i5);
                if (strR3 != null) {
                    break;
                }
            }
            strR3 = null;
        } else {
            strR3 = null;
        }
        if (strR3 != null) {
            listR0 = zs3.R0("!".concat(strR3), new char[]{'.'});
        } else if (strR == null && strR2 == null) {
            listR0 = c;
        } else {
            List listR02 = g01.n;
            List listR03 = strR != null ? zs3.R0(strR, new char[]{'.'}) : listR02;
            if (strR2 != null) {
                listR02 = zs3.R0(strR2, new char[]{'.'});
            }
            listR0 = listR03.size() > listR02.size() ? listR03 : listR02;
        }
        if (listB.size() == listR0.size() && ((String) listR0.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) listR0.get(0)).charAt(0) == '!') {
            size = listB.size();
            size2 = listR0.size();
        } else {
            size = listB.size();
            size2 = listR0.size() + 1;
        }
        int i6 = size - size2;
        ai3 s70Var = new s70(0, b(str));
        if (i6 < 0) {
            k21.l(xw1.q("Requested element count ", i6, " is less than zero."));
            return null;
        }
        if (i6 != 0) {
            s70Var = s70Var instanceof by0 ? ((by0) s70Var).a(i6) : new ay0(s70Var, i6);
        }
        return ci3.L(s70Var, ".");
    }
}
