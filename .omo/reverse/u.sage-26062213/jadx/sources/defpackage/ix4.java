package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ix4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ix4> CREATOR = new av4(2);
    public final long n;
    public final long o;
    public final boolean p;
    public final Bundle q;
    public final String r;

    public ix4(long j, long j2, boolean z, Bundle bundle, String str) {
        this.n = j;
        this.o = j2;
        this.p = z;
        this.q = bundle;
        this.r = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.n);
        SafeParcelWriter.writeLong(parcel, 2, this.o);
        SafeParcelWriter.writeBoolean(parcel, 3, this.p);
        SafeParcelWriter.writeBundle(parcel, 7, this.q, false);
        SafeParcelWriter.writeString(parcel, 8, this.r, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
