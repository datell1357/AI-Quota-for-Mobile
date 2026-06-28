package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ua5 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ua5> CREATOR = new av4(19);
    public final long n;
    public byte[] o;
    public final String p;
    public final Bundle q;
    public final int r;
    public final long s;
    public String t;

    public ua5(long j, byte[] bArr, String str, Bundle bundle, int i, long j2, String str2) {
        this.n = j;
        this.o = bArr;
        this.p = str;
        this.q = bundle;
        this.r = i;
        this.s = j2;
        this.t = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.n);
        SafeParcelWriter.writeByteArray(parcel, 2, this.o, false);
        SafeParcelWriter.writeString(parcel, 3, this.p, false);
        SafeParcelWriter.writeBundle(parcel, 4, this.q, false);
        SafeParcelWriter.writeInt(parcel, 5, this.r);
        SafeParcelWriter.writeLong(parcel, 6, this.s);
        SafeParcelWriter.writeString(parcel, 7, this.t, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
