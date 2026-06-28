package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t94 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<t94> CREATOR = new d6(27);
    public final int n;
    public final short o;
    public final short p;

    public t94(int i, short s, short s2) {
        this.n = i;
        this.o = s;
        this.p = s2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t94)) {
            return false;
        }
        t94 t94Var = (t94) obj;
        return this.n == t94Var.n && this.o == t94Var.o && this.p == t94Var.p;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.n), Short.valueOf(this.o), Short.valueOf(this.p));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.n);
        SafeParcelWriter.writeShort(parcel, 2, this.o);
        SafeParcelWriter.writeShort(parcel, 3, this.p);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
