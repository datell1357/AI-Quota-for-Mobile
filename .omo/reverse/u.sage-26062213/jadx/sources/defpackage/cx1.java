package defpackage;

import java.io.Closeable;
import java.io.RandomAccessFile;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cx1 implements Closeable {
    public boolean n;
    public int o;
    public final ReentrantLock p = new ReentrantLock();
    public final RandomAccessFile q;

    public cx1(RandomAccessFile randomAccessFile) {
        this.q = randomAccessFile;
    }

    public final f51 b(long j) {
        ReentrantLock reentrantLock = this.p;
        reentrantLock.lock();
        try {
            if (this.n) {
                throw new IllegalStateException("closed");
            }
            this.o++;
            reentrantLock.unlock();
            return new f51(this, j);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.p;
        reentrantLock.lock();
        try {
            if (this.n) {
                return;
            }
            this.n = true;
            if (this.o != 0) {
                return;
            }
            synchronized (this) {
                this.q.close();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long size() {
        long length;
        ReentrantLock reentrantLock = this.p;
        reentrantLock.lock();
        try {
            if (this.n) {
                throw new IllegalStateException("closed");
            }
            synchronized (this) {
                length = this.q.length();
            }
            return length;
        } finally {
            reentrantLock.unlock();
        }
    }
}
