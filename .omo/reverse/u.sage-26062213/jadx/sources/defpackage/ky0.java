package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ky0 {
    public final /* synthetic */ int a;
    public int b;
    public int c;
    public int d;

    public ky0(int i, int i2) {
        this.a = 1;
        if (i < 0) {
            mk0.h("Lower bound cannot be negative");
            throw null;
        }
        if (i > i2) {
            mk0.h("Lower bound cannot be greater then upper bound");
            throw null;
        }
        this.b = i;
        this.c = i2;
        this.d = i;
    }

    public boolean a() {
        return this.d >= this.c;
    }

    public void b(int i) {
        int i2 = this.c;
        int i3 = this.b;
        if (i < i3) {
            mk0.h(di0.p(i, i3, "pos: ", " < lowerBound: "));
        } else if (i <= i2) {
            this.d = i;
        } else {
            mk0.h(di0.p(i, i2, "pos: ", " > upperBound: "));
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "[" + Integer.toString(this.b) + '>' + Integer.toString(this.d) + '>' + Integer.toString(this.c) + ']';
            default:
                return super.toString();
        }
    }

    public ky0(int i, int i2, int i3) {
        this.a = 2;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public ky0() {
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
    }
}
