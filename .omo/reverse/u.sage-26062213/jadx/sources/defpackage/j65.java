package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j65 extends AbstractSafeParcelable implements Comparable {
    public static final Parcelable.Creator<j65> CREATOR = new av4(15);
    public final int n;
    public final int o;

    public j65(int i, int i2) {
        this.n = i;
        this.o = i2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        j65 j65Var = (j65) obj;
        int i = j65Var.n;
        int i2 = this.n;
        if (i2 < i) {
            return -1;
        }
        if (i2 > i) {
            return 1;
        }
        int i3 = j65Var.o;
        int i4 = this.o;
        if (i4 < i3) {
            return -1;
        }
        return i4 > i3 ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0004, code lost:
    
        r0 = (r3 = (defpackage.j65) r3).n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
    
        r3 = r3.o;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof defpackage.j65
            if (r0 == 0) goto L1c
            j65 r3 = (defpackage.j65) r3
            int r0 = r3.n
            int r1 = r2.n
            if (r1 >= r0) goto Ld
            goto L1c
        Ld:
            if (r1 <= r0) goto L10
            goto L1c
        L10:
            int r3 = r3.o
            int r2 = r2.o
            if (r2 >= r3) goto L17
            goto L1c
        L17:
            if (r2 <= r3) goto L1a
            goto L1c
        L1a:
            r2 = 1
            return r2
        L1c:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j65.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return (this.n * 31) + this.o;
    }

    public final String toString() {
        int i = this.n;
        int length = String.valueOf(i).length();
        int i2 = this.o;
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(i2).length() + 1);
        sb.append("GenericDimension(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.n);
        SafeParcelWriter.writeInt(parcel, 2, this.o);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
