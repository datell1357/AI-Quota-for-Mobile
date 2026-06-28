package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dk extends ek {
    public static final Parcelable.Creator<dk> CREATOR = new av4(17);
    public final e21 n;
    public final String o;
    public final int p;

    public dk(int i, String str, int i2) {
        try {
            this.n = e21.a(i);
            this.o = str;
            this.p = i2;
        } catch (c21 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dk)) {
            return false;
        }
        dk dkVar = (dk) obj;
        return Objects.equal(this.n, dkVar.n) && Objects.equal(this.o, dkVar.o) && Objects.equal(Integer.valueOf(this.p), Integer.valueOf(dkVar.p));
    }

    public final int hashCode() {
        return Objects.hashCode(this.n, this.o, Integer.valueOf(this.p));
    }

    public final String toString() {
        ui3 ui3Var = new ui3(getClass().getSimpleName());
        String strValueOf = String.valueOf(this.n.n);
        au4 au4Var = new au4(8);
        ((ui3) ui3Var.q).q = au4Var;
        ui3Var.q = au4Var;
        au4Var.p = strValueOf;
        au4Var.o = "errorCode";
        String str = this.o;
        if (str != null) {
            ui3Var.o(str, "errorMessage");
        }
        return ui3Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.n.n);
        SafeParcelWriter.writeString(parcel, 3, this.o, false);
        SafeParcelWriter.writeInt(parcel, 4, this.p);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
