package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zs4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zs4> CREATOR = new d6(22);
    public final int n = 1;
    public final String o;
    public final int p;

    public zs4(String str, int i) {
        this.o = (String) Preconditions.checkNotNull(str);
        this.p = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.n);
        SafeParcelWriter.writeString(parcel, 2, this.o, false);
        SafeParcelWriter.writeInt(parcel, 3, this.p);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
