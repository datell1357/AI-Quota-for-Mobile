package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zt4 extends AbstractSafeParcelable implements Iterable {
    public static final Parcelable.Creator<zt4> CREATOR = new d6(28);
    public final Bundle n;

    public zt4(Bundle bundle) {
        this.n = bundle;
    }

    public final Object Y(String str) {
        return this.n.get(str);
    }

    public final Double Z() {
        return Double.valueOf(this.n.getDouble("value"));
    }

    public final String i0() {
        return this.n.getString("currency");
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new if2(this);
    }

    public final Bundle j0() {
        return new Bundle(this.n);
    }

    public final String toString() {
        return this.n.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, j0(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
