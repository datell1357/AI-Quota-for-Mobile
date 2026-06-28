package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jd1 implements Parcelable {
    public static final Parcelable.Creator<jd1> CREATOR = new d6(5);
    public ArrayList n;
    public ArrayList o;
    public dq[] p;
    public int q;
    public String r;
    public ArrayList s;
    public ArrayList t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList f149u;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.n);
        parcel.writeStringList(this.o);
        parcel.writeTypedArray(this.p, i);
        parcel.writeInt(this.q);
        parcel.writeString(this.r);
        parcel.writeStringList(this.s);
        parcel.writeTypedList(this.t);
        parcel.writeTypedList(this.f149u);
    }
}
