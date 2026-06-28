package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ck extends ek {
    public static final Parcelable.Creator<ck> CREATOR = new av4(16);
    public final b25 n;
    public final b25 o;
    public final b25 p;
    public final String[] q;

    public ck(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
        byte[] bArr4 = (byte[]) Preconditions.checkNotNull(bArr);
        b25 b25Var = b25.p;
        b25 b25VarH = b25.h(bArr4.length, bArr4);
        byte[] bArr5 = (byte[]) Preconditions.checkNotNull(bArr2);
        b25 b25VarH2 = b25.h(bArr5.length, bArr5);
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr3);
        b25 b25VarH3 = b25.h(bArr6.length, bArr6);
        this.n = (b25) Preconditions.checkNotNull(b25VarH);
        this.o = (b25) Preconditions.checkNotNull(b25VarH2);
        this.p = (b25) Preconditions.checkNotNull(b25VarH3);
        this.q = (String[]) Preconditions.checkNotNull(strArr);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ck)) {
            return false;
        }
        ck ckVar = (ck) obj;
        return Objects.equal(this.n, ckVar.n) && Objects.equal(this.o, ckVar.o) && Objects.equal(this.p, ckVar.p);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Objects.hashCode(this.n)), Integer.valueOf(Objects.hashCode(this.o)), Integer.valueOf(Objects.hashCode(this.p)));
    }

    public final String toString() {
        ui3 ui3Var = new ui3(getClass().getSimpleName());
        p05 p05Var = w05.c;
        byte[] bArrI = this.n.i();
        ui3Var.o(p05Var.c(bArrI.length, bArrI), "keyHandle");
        byte[] bArrI2 = this.o.i();
        ui3Var.o(p05Var.c(bArrI2.length, bArrI2), "clientDataJSON");
        byte[] bArrI3 = this.p.i();
        ui3Var.o(p05Var.c(bArrI3.length, bArrI3), "attestationObject");
        ui3Var.o(Arrays.toString(this.q), "transports");
        return ui3Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.n.i(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.o.i(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.p.i(), false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.q, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
