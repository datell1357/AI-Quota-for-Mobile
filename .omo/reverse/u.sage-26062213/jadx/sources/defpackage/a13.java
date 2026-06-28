package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a13 {
    public static final a13 d;
    public final /* synthetic */ int a;
    public int b;
    public int c;

    static {
        int i = 0;
        d = new a13(i, i, 0);
    }

    public a13(int i) {
        this.a = 3;
        this.b = 2;
        this.c = i;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                StringBuilder sb = new StringBuilder();
                sb.append(a13.class.getSimpleName());
                sb.append("[position = ");
                sb.append(this.b);
                sb.append(", length = ");
                return xw1.p(this.c, "]", sb);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ a13() {
        this.a = 2;
    }

    public /* synthetic */ a13(int i, int i2, int i3) {
        this.a = i3;
        this.b = i;
        this.c = i2;
    }
}
