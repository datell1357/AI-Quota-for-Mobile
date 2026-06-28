package defpackage;

import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zx4 extends iu4 implements qw4 {
    public final /* synthetic */ w85 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zx4(tx4 tx4Var, w85 w85Var) {
        super("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
        this.c = w85Var;
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        zze();
        return true;
    }

    @Override // defpackage.qw4
    public final void zze() {
        this.c.run();
    }
}
