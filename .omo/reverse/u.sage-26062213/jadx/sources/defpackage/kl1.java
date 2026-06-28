package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kl1 implements Closeable {
    public static final Logger s = Logger.getLogger(tk1.class.getName());
    public final ez n;
    public final sy o;
    public int p;
    public boolean q;
    public final lk1 r;

    public kl1(c23 c23Var) {
        c23Var.getClass();
        this.n = c23Var;
        sy syVar = new sy();
        this.o = syVar;
        this.p = 16384;
        this.r = new lk1(syVar);
    }

    public final void A(boolean z, int i, ArrayList arrayList) {
        synchronized (this) {
            if (this.q) {
                throw new IOException("closed");
            }
            this.r.d(arrayList);
            long j = this.o.o;
            long jMin = Math.min(this.p, j);
            int i2 = j == jMin ? 4 : 0;
            if (z) {
                i2 |= 1;
            }
            r(i, (int) jMin, 1, i2);
            this.n.J(jMin, this.o);
            if (j > jMin) {
                long j2 = j - jMin;
                while (j2 > 0) {
                    long jMin2 = Math.min(this.p, j2);
                    j2 -= jMin2;
                    r(i, (int) jMin2, 9, j2 == 0 ? 4 : 0);
                    this.n.J(jMin2, this.o);
                }
            }
        }
    }

    public final void B(int i, boolean z, int i2) {
        synchronized (this) {
            if (this.q) {
                throw new IOException("closed");
            }
            r(0, 8, 6, z ? 1 : 0);
            this.n.writeInt(i);
            this.n.writeInt(i2);
            this.n.flush();
        }
    }

    public final void F(int i, d21 d21Var) {
        synchronized (this) {
            if (this.q) {
                throw new IOException("closed");
            }
            if (d21Var.n == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            r(i, 4, 3, 0);
            this.n.writeInt(d21Var.n);
            this.n.flush();
        }
    }

    public final void K(int i, long j) {
        synchronized (this) {
            try {
                if (this.q) {
                    throw new IOException("closed");
                }
                if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
                }
                Logger logger = s;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(tk1.c(false, i, 4, j));
                }
                r(i, 4, 8, 0);
                this.n.writeInt((int) j);
                this.n.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(lk3 lk3Var) {
        lk3Var.getClass();
        synchronized (this) {
            try {
                if (this.q) {
                    throw new IOException("closed");
                }
                int i = this.p;
                int i2 = lk3Var.a;
                if ((i2 & 32) != 0) {
                    i = lk3Var.b[5];
                }
                this.p = i;
                if (((i2 & 2) != 0 ? lk3Var.b[1] : -1) != -1) {
                    lk1 lk1Var = this.r;
                    int i3 = (i2 & 2) != 0 ? lk3Var.b[1] : -1;
                    lk1Var.getClass();
                    int iMin = Math.min(i3, 16384);
                    int i4 = lk1Var.d;
                    if (i4 != iMin) {
                        if (iMin < i4) {
                            lk1Var.b = Math.min(lk1Var.b, iMin);
                        }
                        lk1Var.c = true;
                        lk1Var.d = iMin;
                        int i5 = lk1Var.h;
                        if (iMin < i5) {
                            if (iMin == 0) {
                                hj1[] hj1VarArr = lk1Var.e;
                                ji.U(0, hj1VarArr.length, null, hj1VarArr);
                                lk1Var.f = lk1Var.e.length - 1;
                                lk1Var.g = 0;
                                lk1Var.h = 0;
                            } else {
                                lk1Var.a(i5 - iMin);
                            }
                        }
                    }
                }
                r(0, 0, 4, 1);
                this.n.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.q = true;
            this.n.close();
        }
    }

    public final void flush() {
        synchronized (this) {
            if (this.q) {
                throw new IOException("closed");
            }
            this.n.flush();
        }
    }

    public final void j(boolean z, int i, sy syVar, int i2) {
        synchronized (this) {
            if (this.q) {
                throw new IOException("closed");
            }
            r(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                ez ezVar = this.n;
                syVar.getClass();
                ezVar.J(i2, syVar);
            }
        }
    }

    public final void r(int i, int i2, int i3, int i4) {
        if (i3 != 8) {
            Level level = Level.FINE;
            Logger logger = s;
            if (logger.isLoggable(level)) {
                logger.fine(tk1.b(false, i, i2, i3, i4));
            }
        }
        if (i2 > this.p) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.p + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            k21.l(di0.q(i, "reserved bit set: "));
            return;
        }
        byte[] bArr = fi4.a;
        ez ezVar = this.n;
        ezVar.getClass();
        ezVar.writeByte((i2 >>> 16) & 255);
        ezVar.writeByte((i2 >>> 8) & 255);
        ezVar.writeByte(i2 & 255);
        ezVar.writeByte(i3 & 255);
        ezVar.writeByte(i4 & 255);
        ezVar.writeInt(i & Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public final void z(int i, d21 d21Var, byte[] bArr) {
        synchronized (this) {
            if (this.q) {
                throw new IOException("closed");
            }
            if (d21Var.n == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            r(0, bArr.length + 8, 7, 0);
            this.n.writeInt(i);
            this.n.writeInt(d21Var.n);
            if (bArr.length != 0) {
                this.n.write(bArr);
            }
            this.n.flush();
        }
    }
}
