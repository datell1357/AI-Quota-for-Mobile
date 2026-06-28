package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n41 implements wa3 {
    public final va3 a;

    public n41(Throwable th) {
        this.a = new va3(this, th, 2);
    }

    @Override // defpackage.wa3
    public final wa3 a() {
        throw new IllegalStateException("unexpected retry");
    }

    @Override // defpackage.wa3
    public final va3 b() {
        return this.a;
    }

    @Override // defpackage.wa3
    public final i23 c() {
        throw new IllegalStateException("unexpected call");
    }

    @Override // defpackage.wa3
    public final void cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    @Override // defpackage.wa3
    public final boolean d() {
        return false;
    }

    @Override // defpackage.wa3
    public final va3 e() {
        return this.a;
    }
}
