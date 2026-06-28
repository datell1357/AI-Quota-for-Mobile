package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class pr1 extends md2 implements b24 {
    public hd4 B;
    public hd4 C;

    public pr1() {
        j71 j71Var = c75.g;
        this.B = j71Var;
        this.C = j71Var;
    }

    @Override // defpackage.md2
    public final void A0() {
        this.B = c75.g;
    }

    public abstract hd4 G0(hd4 hd4Var);

    public void H0() {
        this.C = G0(this.B);
        qj0.d0(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new or1(this, 0));
    }

    @Override // defpackage.b24
    public final Object n() {
        return "androidx.compose.foundation.layout.ConsumedInsetsProvider";
    }

    @Override // defpackage.md2
    public final void y0() {
        qj0.b0(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new or1(this, 1));
        H0();
    }

    @Override // defpackage.md2
    public final void z0() {
        this.C = this.B;
        qj0.d0(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new or1(this, 0));
    }
}
