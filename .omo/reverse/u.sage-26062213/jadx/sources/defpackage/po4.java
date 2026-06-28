package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class po4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<po4> CREATOR = new d6(17);
    public final long n;
    public final int o;
    public final long p;

    public po4(int i, long j, long j2) {
        this.n = j;
        this.o = i;
        this.p = j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.n);
        SafeParcelWriter.writeInt(parcel, 2, this.o);
        SafeParcelWriter.writeLong(parcel, 3, this.p);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
