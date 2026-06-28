package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vq3 implements Iterator {
    public String o;
    public final CharSequence p;
    public final se0 q;
    public final boolean r;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ g40 f383u;
    public int n = 2;
    public int s = 0;

    public vq3(lq1 lq1Var, CharSequence charSequence, g40 g40Var) {
        this.f383u = g40Var;
        this.q = (se0) lq1Var.c;
        this.r = lq1Var.a;
        this.t = lq1Var.b;
        this.p = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int length;
        String string;
        CharSequence charSequence;
        se0 se0Var;
        n44.a0(this.n != 4);
        int iF = di0.F(this.n);
        if (iF == 0) {
            return true;
        }
        if (iF != 2) {
            this.n = 4;
            int i = this.s;
            while (true) {
                length = this.s;
                if (length == -1) {
                    this.n = 3;
                    string = null;
                    break;
                }
                charSequence = this.p;
                int length2 = charSequence.length();
                n44.Y(length, length2);
                while (true) {
                    if (length >= length2) {
                        length = -1;
                        break;
                    }
                    if (this.f383u.A(charSequence.charAt(length))) {
                        break;
                    }
                    length++;
                }
                if (length == -1) {
                    length = charSequence.length();
                    this.s = -1;
                } else {
                    this.s = length + 1;
                }
                int i2 = this.s;
                if (i2 == i) {
                    int i3 = i2 + 1;
                    this.s = i3;
                    if (i3 > charSequence.length()) {
                        this.s = -1;
                    }
                } else {
                    while (true) {
                        se0Var = this.q;
                        if (i >= length || !se0Var.A(charSequence.charAt(i))) {
                            break;
                        }
                        i++;
                    }
                    while (length > i && se0Var.A(charSequence.charAt(length - 1))) {
                        length--;
                    }
                    if (!this.r || i != length) {
                        break;
                    }
                    i = this.s;
                }
            }
            int i4 = this.t;
            if (i4 == 1) {
                length = charSequence.length();
                this.s = -1;
                while (length > i && se0Var.A(charSequence.charAt(length - 1))) {
                    length--;
                }
            } else {
                this.t = i4 - 1;
            }
            string = charSequence.subSequence(i, length).toString();
            this.o = string;
            if (this.n != 3) {
                this.n = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        this.n = 2;
        String str = this.o;
        this.o = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
