package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tt4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<tt4> CREATOR = new d6(25);
    public final int n = 1;
    public final String o;
    public final PendingIntent p;

    public tt4(String str, PendingIntent pendingIntent) {
        this.o = (String) Preconditions.checkNotNull(str);
        this.p = (PendingIntent) Preconditions.checkNotNull(pendingIntent);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.n);
        SafeParcelWriter.writeString(parcel, 2, this.o, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.p, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
