package defpackage;

import java.io.Serializable;
import java.util.TreeSet;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mu implements th0, Serializable {
    public final TreeSet n = new TreeSet(new kh0(1));
    public final transient ReentrantReadWriteLock o = new ReentrantReadWriteLock();

    public final String toString() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.o;
        reentrantReadWriteLock.readLock().lock();
        try {
            return this.n.toString();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }
}
