package defpackage;

import java.util.ArrayDeque;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ft1 implements bo2 {
    public final /* synthetic */ int n;
    public boolean o;
    public Object p;
    public Object q;

    public ft1(int i) {
        this.n = i;
        switch (i) {
            case 3:
                this.p = new Object();
                break;
        }
    }

    public boolean a(long j) {
        Object obj;
        List list = (List) ((xh1) this.q).n;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = list.get(i);
            if (qj0.G(((bw2) obj).a, j)) {
                break;
            }
            i++;
        }
        bw2 bw2Var = (bw2) obj;
        if (bw2Var != null) {
            return bw2Var.h;
        }
        return false;
    }

    public void b(fc5 fc5Var) {
        synchronized (this.p) {
            try {
                if (((ArrayDeque) this.q) == null) {
                    this.q = new ArrayDeque();
                }
                ((ArrayDeque) this.q).add(fc5Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(ow3 ow3Var) {
        fc5 fc5Var;
        synchronized (this.p) {
            if (((ArrayDeque) this.q) != null && !this.o) {
                this.o = true;
                while (true) {
                    synchronized (this.p) {
                        try {
                            fc5Var = (fc5) ((ArrayDeque) this.q).poll();
                            if (fc5Var == null) {
                                this.o = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    fc5Var.b(ow3Var);
                }
            }
        }
    }

    @Override // defpackage.bo2
    public void e(Object obj) {
        this.o = true;
        ((i52) this.q).onLoadFinished((h52) this.p, obj);
    }

    public String toString() {
        switch (this.n) {
            case 1:
                return ((i52) this.q).toString();
            default:
                return super.toString();
        }
    }

    public ft1(e82 e82Var, xh1 xh1Var) {
        this.n = 0;
        this.p = e82Var;
        this.q = xh1Var;
    }

    public ft1(h52 h52Var, i52 i52Var) {
        this.n = 1;
        this.o = false;
        this.p = h52Var;
        this.q = i52Var;
    }
}
