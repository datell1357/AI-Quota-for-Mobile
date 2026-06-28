package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n9 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n9(int i, int i2) {
        super(1);
        this.o = i2;
        this.p = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        int i2 = this.p;
        switch (i) {
            case 0:
                return Boolean.valueOf(((ka1) obj).N0(i2));
            case 1:
                return Boolean.valueOf(((ka1) obj).N0(i2));
            case 2:
                return Boolean.valueOf(((ka1) obj).N0(i2));
            default:
                return Boolean.valueOf(((ka1) obj).G0(i2));
        }
    }
}
