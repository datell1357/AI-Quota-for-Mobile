package defpackage;

import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class x65 extends iu4 {
    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        ku4.d(parcel);
        s65 s65Var = (s65) this;
        s65Var.c.notifyListener(new o65(s65Var, bArrCreateByteArray));
        return true;
    }
}
