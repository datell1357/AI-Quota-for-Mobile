package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o32 implements Iterator, fx1 {
    public String n;
    public boolean o;
    public final /* synthetic */ s70 p;

    public o32(s70 s70Var) {
        this.p = s70Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() throws IOException {
        if (this.n == null && !this.o) {
            String line = ((BufferedReader) this.p.b).readLine();
            this.n = line;
            if (line == null) {
                this.o = true;
            }
        }
        return this.n != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        String str = this.n;
        this.n = null;
        str.getClass();
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
