package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d65 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<d65> CREATOR = new av4(13);
    public final String n;
    public final String o;
    public final b65 p;
    public final boolean q;

    public d65(String str, String str2, b65 b65Var, boolean z) {
        this.n = str;
        this.o = str2;
        this.p = b65Var;
        this.q = z;
    }

    public final void Y(StringBuilder sb) {
        sb.append("FlagOverride(");
        sb.append(this.n);
        sb.append(", ");
        sb.append(this.o);
        sb.append(", ");
        this.p.Y(sb);
        sb.append(", ");
        sb.append(this.q);
        sb.append(")");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d65)) {
            return false;
        }
        d65 d65Var = (d65) obj;
        return hm4.b(this.n, d65Var.n) && hm4.b(this.o, d65Var.o) && hm4.b(this.p, d65Var.p) && this.q == d65Var.q;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Y(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.n, false);
        SafeParcelWriter.writeString(parcel, 3, this.o, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.p, i, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.q);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
