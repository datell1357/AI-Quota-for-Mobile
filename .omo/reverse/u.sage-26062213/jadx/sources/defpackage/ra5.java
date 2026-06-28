package defpackage;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ra5 implements Comparable {
    public static final AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(ra5.class, Object.class, "o");
    public static final /* synthetic */ long q = sa5.a.objectFieldOffset(ra5.class.getDeclaredField("o"));
    public final String n;
    public volatile Object o;

    public /* synthetic */ ra5(String str, byte[] bArr) {
        this.n = str;
        this.o = bArr;
    }

    public final /* synthetic */ void a(byte[] bArr) {
        byte[][] bArr2;
        ra5 ra5Var;
        int i = 0;
        while (true) {
            Object obj = this.o;
            if (!(obj instanceof byte[])) {
                byte[][] bArr3 = (byte[][]) obj;
                while (true) {
                    int length = bArr3.length;
                    if (i >= length) {
                        bArr2 = (byte[][]) Arrays.copyOf(bArr3, length + 1);
                        bArr2[length] = bArr;
                        break;
                    } else if (Arrays.equals(bArr, bArr3[i])) {
                        return;
                    } else {
                        i++;
                    }
                }
            } else {
                byte[] bArr4 = (byte[]) obj;
                if (Arrays.equals(bArr, bArr4)) {
                    return;
                }
                i = 1;
                bArr2 = new byte[][]{bArr4, bArr};
            }
            byte[][] bArr5 = bArr2;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            while (true) {
                atomicReferenceFieldUpdater.getClass();
                Unsafe unsafe = sa5.a;
                long j = q;
                ra5Var = this;
                if (unsafe.compareAndSwapObject(ra5Var, j, obj, bArr5)) {
                    return;
                }
                if (unsafe.getObjectVolatile(ra5Var, j) != obj) {
                    break;
                } else {
                    this = ra5Var;
                }
            }
            this = ra5Var;
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.n.compareTo((String) obj);
    }
}
