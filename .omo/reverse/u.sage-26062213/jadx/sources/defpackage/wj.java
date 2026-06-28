package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<wj> CREATOR = new av4(4);
    public final boolean n;

    public wj(boolean z) {
        this.n = z;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof wj) && this.n == ((wj) obj).n;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.n));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.n);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
