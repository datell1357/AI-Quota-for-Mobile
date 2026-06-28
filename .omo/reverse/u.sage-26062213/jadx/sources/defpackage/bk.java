package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bk extends ek {
    public static final Parcelable.Creator<bk> CREATOR = new av4(7);
    public final b25 n;
    public final b25 o;
    public final b25 p;
    public final b25 q;
    public final b25 r;

    public bk(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr);
        b25 b25Var = b25.p;
        b25 b25VarH = b25.h(bArr6.length, bArr6);
        byte[] bArr7 = (byte[]) Preconditions.checkNotNull(bArr2);
        b25 b25VarH2 = b25.h(bArr7.length, bArr7);
        byte[] bArr8 = (byte[]) Preconditions.checkNotNull(bArr3);
        b25 b25VarH3 = b25.h(bArr8.length, bArr8);
        byte[] bArr9 = (byte[]) Preconditions.checkNotNull(bArr4);
        b25 b25VarH4 = b25.h(bArr9.length, bArr9);
        b25 b25VarH5 = bArr5 == null ? null : b25.h(bArr5.length, bArr5);
        this.n = (b25) Preconditions.checkNotNull(b25VarH);
        this.o = (b25) Preconditions.checkNotNull(b25VarH2);
        this.p = (b25) Preconditions.checkNotNull(b25VarH3);
        this.q = (b25) Preconditions.checkNotNull(b25VarH4);
        this.r = b25VarH5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bk)) {
            return false;
        }
        bk bkVar = (bk) obj;
        return Objects.equal(this.n, bkVar.n) && Objects.equal(this.o, bkVar.o) && Objects.equal(this.p, bkVar.p) && Objects.equal(this.q, bkVar.q) && Objects.equal(this.r, bkVar.r);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Objects.hashCode(this.n)), Integer.valueOf(Objects.hashCode(this.o)), Integer.valueOf(Objects.hashCode(this.p)), Integer.valueOf(Objects.hashCode(this.q)), Integer.valueOf(Objects.hashCode(this.r)));
    }

    public final String toString() {
        ui3 ui3Var = new ui3(getClass().getSimpleName());
        p05 p05Var = w05.c;
        byte[] bArrI = this.n.i();
        ui3Var.o(p05Var.c(bArrI.length, bArrI), "keyHandle");
        byte[] bArrI2 = this.o.i();
        ui3Var.o(p05Var.c(bArrI2.length, bArrI2), "clientDataJSON");
        byte[] bArrI3 = this.p.i();
        ui3Var.o(p05Var.c(bArrI3.length, bArrI3), "authenticatorData");
        byte[] bArrI4 = this.q.i();
        ui3Var.o(p05Var.c(bArrI4.length, bArrI4), "signature");
        b25 b25Var = this.r;
        byte[] bArrI5 = b25Var == null ? null : b25Var.i();
        if (bArrI5 != null) {
            ui3Var.o(p05Var.c(bArrI5.length, bArrI5), "userHandle");
        }
        return ui3Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.n.i(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.o.i(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.p.i(), false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.q.i(), false);
        b25 b25Var = this.r;
        SafeParcelWriter.writeByteArray(parcel, 6, b25Var == null ? null : b25Var.i(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
