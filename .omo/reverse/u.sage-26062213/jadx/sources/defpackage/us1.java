package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class us1 implements Parcelable {
    public static final Parcelable.Creator<us1> CREATOR = new d6(7);
    public final IntentSender n;
    public final Intent o;
    public final int p;
    public final int q;

    public us1(IntentSender intentSender, Intent intent, int i, int i2) {
        this.n = intentSender;
        this.o = intent;
        this.p = i;
        this.q = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeParcelable(this.n, i);
        parcel.writeParcelable(this.o, i);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
    }
}
