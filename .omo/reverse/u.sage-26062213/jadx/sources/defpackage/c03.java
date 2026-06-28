package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c03 implements w94 {
    public boolean a = false;
    public boolean b = false;
    public a51 c;
    public final b03 d;

    public c03(b03 b03Var) {
        this.d = b03Var;
    }

    @Override // defpackage.w94
    public final w94 b(String str) {
        if (this.a) {
            throw new p01("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
        this.d.i(this.c, str, this.b);
        return this;
    }

    @Override // defpackage.w94
    public final w94 c(boolean z) {
        if (this.a) {
            throw new p01("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
        this.d.c(this.c, z ? 1 : 0, this.b);
        return this;
    }
}
