package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wy4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<wy4> CREATOR = new av4(5);
    public final b25 n;
    public final b25 o;

    public wy4(b25 b25Var, b25 b25Var2) {
        this.n = b25Var;
        this.o = b25Var2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wy4)) {
            return false;
        }
        wy4 wy4Var = (wy4) obj;
        return Objects.equal(this.n, wy4Var.n) && Objects.equal(this.o, wy4Var.o);
    }

    public final int hashCode() {
        return Objects.hashCode(this.n, this.o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        b25 b25Var = this.n;
        SafeParcelWriter.writeByteArray(parcel, 1, b25Var == null ? null : b25Var.i(), false);
        b25 b25Var2 = this.o;
        SafeParcelWriter.writeByteArray(parcel, 2, b25Var2 != null ? b25Var2.i() : null, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
