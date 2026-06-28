package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements m20 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ i0(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.m20
    public final boolean cancel() {
        switch (this.n) {
            case 0:
                ((i60) this.o).d();
                return true;
            default:
                try {
                    ((he0) this.o).j();
                    return true;
                } catch (IOException unused) {
                    return false;
                }
        }
    }
}
