package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xf5 extends ib0 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xf5(int i) {
        super(4);
        this.b = i;
    }

    @Override // defpackage.ib0
    public final /* synthetic */ Object t() {
        switch (this.b) {
            case 0:
                return new yf5();
            case 1:
                return new ag5();
            case 2:
                return new rg5();
            default:
                return new tg5();
        }
    }
}
