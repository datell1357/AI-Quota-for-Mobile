package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zav;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bj4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<bj4> CREATOR = new d6(16);
    public final int n;
    public final ConnectionResult o;
    public final zav p;

    public bj4(int i, ConnectionResult connectionResult, zav zavVar) {
        this.n = i;
        this.o = connectionResult;
        this.p = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.n);
        SafeParcelWriter.writeParcelable(parcel, 2, this.o, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.p, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
