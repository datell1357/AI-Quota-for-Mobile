package defpackage;

import java.nio.ByteBuffer;
import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ba2 {
    public int n;
    public int o;
    public int p;
    public Object q;

    public ba2() {
        if (ls3.p == null) {
            ls3.p = new ls3(9);
        }
    }

    public int b(int i) {
        if (i < this.p) {
            return ((ByteBuffer) this.q).getShort(this.o + i);
        }
        return 0;
    }

    public void d() {
        if (((ca2) this.q).f44u != this.p) {
            throw new ConcurrentModificationException();
        }
    }

    public void e() {
        while (true) {
            int i = this.n;
            ca2 ca2Var = (ca2) this.q;
            if (i >= ca2Var.s || ca2Var.p[i] >= 0) {
                return;
            } else {
                this.n = i + 1;
            }
        }
    }

    public boolean hasNext() {
        return this.n < ((ca2) this.q).s;
    }

    public void remove() {
        ca2 ca2Var = (ca2) this.q;
        d();
        if (this.o == -1) {
            k21.n("Call next() before removing element from the iterator.");
            return;
        }
        ca2Var.d();
        ca2Var.l(this.o);
        this.o = -1;
        this.p = ca2Var.f44u;
    }
}
