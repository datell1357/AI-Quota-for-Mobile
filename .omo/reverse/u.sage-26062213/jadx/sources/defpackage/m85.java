package defpackage;

import android.os.Parcel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m85 extends iu4 implements d15 {
    public final /* synthetic */ AtomicReference c;
    public final /* synthetic */ o95 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m85(o95 o95Var, AtomicReference atomicReference) {
        super("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
        this.c = atomicReference;
        this.d = o95Var;
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        za5 za5Var = (za5) ku4.a(parcel, za5.CREATOR);
        ku4.d(parcel);
        u(za5Var);
        return true;
    }

    @Override // defpackage.d15
    public final void u(za5 za5Var) {
        AtomicReference atomicReference = this.c;
        synchronized (atomicReference) {
            a25 a25Var = ((r45) this.d.a).f;
            r45.l(a25Var);
            a25Var.n.b(Integer.valueOf(za5Var.n.size()), "[sgtm] Got upload batches from service. count");
            atomicReference.set(za5Var);
            atomicReference.notifyAll();
        }
    }
}
