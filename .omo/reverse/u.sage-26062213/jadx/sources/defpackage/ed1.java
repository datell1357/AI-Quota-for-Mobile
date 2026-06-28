package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ed1 implements Parcelable {
    public static final Parcelable.Creator<ed1> CREATOR = new d6(4);
    public String n;
    public int o;

    public ed1(String str, int i) {
        this.n = str;
        this.o = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.n);
        parcel.writeInt(this.o);
    }
}
