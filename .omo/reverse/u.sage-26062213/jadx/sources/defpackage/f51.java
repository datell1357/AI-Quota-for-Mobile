package defpackage;

import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f51 implements yp3 {
    public final cx1 n;
    public long o;
    public boolean p;

    public f51(cx1 cx1Var, long j) {
        this.n = cx1Var;
        this.o = j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        cx1 cx1Var = this.n;
        if (this.p) {
            return;
        }
        this.p = true;
        ReentrantLock reentrantLock = cx1Var.p;
        reentrantLock.lock();
        try {
            int i = cx1Var.o - 1;
            cx1Var.o = i;
            if (i == 0) {
                if (cx1Var.n) {
                    synchronized (cx1Var) {
                        cx1Var.q.close();
                    }
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return mz3.d;
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) {
        long j2;
        long j3;
        int i;
        syVar.getClass();
        if (this.p) {
            k21.n("closed");
            return 0L;
        }
        cx1 cx1Var = this.n;
        long j4 = this.o;
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        long j5 = j + j4;
        long j6 = j4;
        while (true) {
            if (j6 >= j5) {
                j2 = -1;
                break;
            }
            qg3 qg3VarZ = syVar.Z(1);
            byte[] bArr = qg3VarZ.a;
            int i2 = qg3VarZ.c;
            j2 = -1;
            int iMin = (int) Math.min(j5 - j6, 8192 - i2);
            synchronized (cx1Var) {
                bArr.getClass();
                cx1Var.q.seek(j6);
                i = 0;
                while (true) {
                    if (i >= iMin) {
                        break;
                    }
                    int i3 = cx1Var.q.read(bArr, i2, iMin - i);
                    if (i3 != -1) {
                        i += i3;
                    } else if (i == 0) {
                        i = -1;
                    }
                }
            }
            if (i == -1) {
                if (qg3VarZ.b == qg3VarZ.c) {
                    syVar.n = qg3VarZ.a();
                    sg3.a(qg3VarZ);
                }
                if (j4 == j6) {
                    j3 = -1;
                }
            } else {
                qg3VarZ.c += i;
                long j7 = i;
                j6 += j7;
                syVar.o += j7;
            }
        }
        j3 = j6 - j4;
        if (j3 != j2) {
            this.o += j3;
        }
        return j3;
    }
}
