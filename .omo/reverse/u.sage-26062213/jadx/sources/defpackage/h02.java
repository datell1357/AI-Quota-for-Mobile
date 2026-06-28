package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h02 implements tr3 {
    public final ws2 n;
    public int o;

    public h02(int i) {
        int i2 = (i / 30) * 30;
        this.n = new ws2(ix.a0(Math.max(i2 - 100, 0), i2 + 130), w13.S);
        this.o = i;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return (ms1) this.n.getValue();
    }
}
