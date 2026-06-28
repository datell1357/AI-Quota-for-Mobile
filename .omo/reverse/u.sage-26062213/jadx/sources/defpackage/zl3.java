package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zl3 {
    public final ws2 a;
    public final ws2 b;
    public final dh c;
    public final long d;
    public long e;
    public float f;
    public float g;
    public long h;
    public long i;
    public ta4 j;

    public zl3() {
        Boolean bool = Boolean.FALSE;
        this.a = ca.A(bool);
        this.b = ca.A(bool);
        this.c = new dh(3);
        this.d = sd2.a();
        this.e = t70.e;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = f14.b;
        this.i = 0L;
    }

    public final boolean a() {
        return ((Boolean) this.b.getValue()).booleanValue();
    }

    public final boolean b() {
        return ((Boolean) this.a.getValue()).booleanValue();
    }

    public final void c(boolean z) {
        ws2 ws2Var = this.a;
        boolean zBooleanValue = ((Boolean) ws2Var.getValue()).booleanValue();
        ws2 ws2Var2 = this.b;
        if (zBooleanValue && !z) {
            ws2Var2.setValue(Boolean.TRUE);
        } else if (z) {
            ws2Var2.setValue(Boolean.FALSE);
        }
        ws2Var.setValue(Boolean.valueOf(z));
    }
}
