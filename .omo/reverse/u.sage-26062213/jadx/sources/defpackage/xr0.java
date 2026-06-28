package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xr0 implements Iterator, fx1 {
    public final /* synthetic */ int n;
    public int o;
    public int p;
    public int q;
    public Object r;
    public final Object s;

    public xr0(yr0 yr0Var) {
        this.n = 0;
        this.s = yr0Var;
        this.o = -1;
        int iK = ix.k(0, 0, ((CharSequence) yr0Var.b).length());
        this.p = iK;
        this.q = iK;
    }

    public void b() {
        yr0 yr0Var = (yr0) this.s;
        CharSequence charSequence = (CharSequence) yr0Var.b;
        int i = this.q;
        if (i < 0) {
            this.o = 0;
            this.r = null;
            return;
        }
        if (i > charSequence.length()) {
            int i2 = this.p;
            charSequence.getClass();
            this.r = new ms1(i2, charSequence.length() - 1, 1);
            this.q = -1;
        } else {
            js2 js2Var = (js2) ((df1) yr0Var.c).f(charSequence, Integer.valueOf(this.q));
            if (js2Var == null) {
                int i3 = this.p;
                charSequence.getClass();
                this.r = new ms1(i3, charSequence.length() - 1, 1);
                this.q = -1;
            } else {
                int iIntValue = ((Number) js2Var.n).intValue();
                int iIntValue2 = ((Number) js2Var.o).intValue();
                this.r = ix.a0(this.p, iIntValue);
                int i4 = iIntValue + iIntValue2;
                this.p = i4;
                this.q = i4 + (iIntValue2 == 0 ? 1 : 0);
            }
        }
        this.o = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
            case 0:
                if (this.o == -1) {
                    b();
                }
                return this.o == 1;
            default:
                throw null;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.n) {
            case 0:
                if (this.o == -1) {
                    b();
                }
                if (this.o == 0) {
                    p61.v();
                    return null;
                }
                ms1 ms1Var = (ms1) this.r;
                ms1Var.getClass();
                this.r = null;
                this.o = -1;
                return ms1Var;
            default:
                throw null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public xr0(un3 un3Var, int i, cg1 cg1Var, qn0 qn0Var) {
        this.n = 1;
        this.r = un3Var;
        this.o = i;
        this.s = qn0Var;
        this.p = un3Var.f362u;
    }
}
