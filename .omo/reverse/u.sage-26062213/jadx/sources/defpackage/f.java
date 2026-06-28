package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements Parcelable {
    public final Parcelable n;
    public static final e o = new e();
    public static final Parcelable.Creator<f> CREATOR = new vs2(1);

    public f(Parcelable parcelable) {
        if (parcelable != null) {
            this.n = parcelable == o ? null : parcelable;
        } else {
            k21.f("superState must not be null");
            throw null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.n, i);
    }

    public f() {
        this.n = null;
    }

    public f(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.n = parcelable == null ? o : parcelable;
    }
}
