package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d6;
import defpackage.ya4;
import defpackage.za4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new d6(9);
    public final za4 n;

    public ParcelImpl(Parcel parcel) {
        this.n = new ya4(parcel).g();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new ya4(parcel).i(this.n);
    }
}
