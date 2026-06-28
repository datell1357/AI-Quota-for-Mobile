package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class od0 extends zy {
    public final vy C;

    public od0(int i, vy vyVar) {
        super(i);
        this.C = vyVar;
        if (vyVar == vy.n) {
            p61.h(y33.a(zy.class).c(), " instead", "This implementation does not support suspension for senders, use ");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        k21.l(xw1.q("Buffered channel capacity must be at least 1, but ", i, " was specified"));
        throw null;
    }

    @Override // defpackage.zy
    public final boolean D() {
        return this.C == vy.o;
    }

    public final Object S(Object obj, boolean z) {
        if (this.C != vy.p) {
            return O(obj);
        }
        Object objN = super.n(obj);
        return (!(objN instanceof y30) || (objN instanceof x30)) ? objN : t64.a;
    }

    @Override // defpackage.zy, defpackage.yh3
    public final Object f(dh0 dh0Var, Object obj) throws Throwable {
        if (S(obj, true) instanceof x30) {
            throw u();
        }
        return t64.a;
    }

    @Override // defpackage.zy, defpackage.yh3
    public final Object n(Object obj) {
        return S(obj, false);
    }
}
