package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class g1 implements Iterator, fx1 {
    public final /* synthetic */ int n;
    public int o;
    public final Object p;

    public g1(gi3 gi3Var) {
        this.n = 2;
        this.p = gi3Var;
        this.o = gi3Var.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        Object obj = this.p;
        switch (i) {
            case 0:
                if (this.o < ((j1) obj).a()) {
                }
                break;
            case 1:
                if (this.o < ((Object[]) obj).length) {
                }
                break;
            case 2:
                if (this.o > 0) {
                }
                break;
            case 3:
                if (this.o < ((mq3) obj).f()) {
                }
                break;
            case 4:
                if (this.o < ((byte[]) obj).length) {
                }
                break;
            case 5:
                if (this.o < ((int[]) obj).length) {
                }
                break;
            case 6:
                if (this.o < ((long[]) obj).length) {
                }
                break;
            default:
                if (this.o < ((short[]) obj).length) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        Object obj = this.p;
        switch (i) {
            case 0:
                if (!hasNext()) {
                    p61.v();
                } else {
                    int i2 = this.o;
                    this.o = i2 + 1;
                }
                break;
            case 1:
                try {
                    int i3 = this.o;
                    this.o = i3 + 1;
                } catch (ArrayIndexOutOfBoundsException e) {
                    this.o--;
                    q73.l(e.getMessage());
                    return null;
                }
                break;
            case 2:
                gi3 gi3Var = (gi3) obj;
                int iD = gi3Var.d();
                int i4 = this.o;
                this.o = i4 - 1;
                break;
            case 3:
                int i5 = this.o;
                this.o = i5 + 1;
                break;
            case 4:
                int i6 = this.o;
                byte[] bArr = (byte[]) obj;
                if (i6 >= bArr.length) {
                    q73.l(String.valueOf(i6));
                } else {
                    this.o = i6 + 1;
                }
                break;
            case 5:
                int i7 = this.o;
                int[] iArr = (int[]) obj;
                if (i7 >= iArr.length) {
                    q73.l(String.valueOf(i7));
                } else {
                    this.o = i7 + 1;
                }
                break;
            case 6:
                int i8 = this.o;
                long[] jArr = (long[]) obj;
                if (i8 >= jArr.length) {
                    q73.l(String.valueOf(i8));
                } else {
                    this.o = i8 + 1;
                }
                break;
            default:
                int i9 = this.o;
                short[] sArr = (short[]) obj;
                if (i9 >= sArr.length) {
                    q73.l(String.valueOf(i9));
                } else {
                    this.o = i9 + 1;
                }
                break;
        }
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 3:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 4:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 5:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 6:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public /* synthetic */ g1(int i, Object obj) {
        this.n = i;
        this.p = obj;
    }
}
