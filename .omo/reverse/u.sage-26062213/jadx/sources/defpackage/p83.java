package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p83 implements wa3 {
    public final i23 a;

    public p83(i23 i23Var) {
        i23Var.getClass();
        this.a = i23Var;
    }

    @Override // defpackage.wa3
    public final wa3 a() {
        throw new IllegalStateException("unexpected retry");
    }

    @Override // defpackage.wa3
    public final va3 b() {
        throw new IllegalStateException("already connected");
    }

    @Override // defpackage.wa3
    public final i23 c() {
        return this.a;
    }

    @Override // defpackage.wa3
    public final void cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    @Override // defpackage.wa3
    public final boolean d() {
        return true;
    }

    @Override // defpackage.wa3
    public final va3 e() {
        throw new IllegalStateException("already connected");
    }
}
