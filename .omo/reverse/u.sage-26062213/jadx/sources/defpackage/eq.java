package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eq implements Parcelable {
    public static final Parcelable.Creator<eq> CREATOR = new d6(2);
    public final ArrayList n;
    public final ArrayList o;

    public eq(Parcel parcel) {
        this.n = parcel.createStringArrayList();
        this.o = parcel.createTypedArrayList(dq.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.n);
        parcel.writeTypedList(this.o);
    }
}
