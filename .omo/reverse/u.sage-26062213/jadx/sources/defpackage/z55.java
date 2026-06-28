package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z55 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<z55> CREATOR = new av4(11);
    public final String n;
    public final byte[] o;
    public final byte[][] p;
    public final byte[][] q;
    public final byte[][] r;
    public final byte[][] s;
    public final int[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final byte[][] f431u;
    public final int[] v;
    public final byte[][] w;

    static {
        byte[][] bArr = new byte[0][];
        new z55("", null, bArr, bArr, bArr, bArr, null, null, null, null);
    }

    public z55(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6, int[] iArr2, byte[][] bArr7) {
        this.n = str;
        this.o = bArr;
        this.p = bArr2;
        this.q = bArr3;
        this.r = bArr4;
        this.s = bArr5;
        this.t = iArr;
        this.f431u = bArr6;
        this.v = iArr2;
        this.w = bArr7;
    }

    public static void Y(StringBuilder sb, String str, byte[][] bArr) {
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
            return;
        }
        sb.append("(");
        boolean z = true;
        int i = 0;
        while (i < bArr.length) {
            byte[] bArr2 = bArr[i];
            if (!z) {
                sb.append(", ");
            }
            sb.append("'");
            Preconditions.checkNotNull(bArr2);
            sb.append(Base64.encodeToString(bArr2, 3));
            sb.append("'");
            i++;
            z = false;
        }
        sb.append(")");
    }

    public static Set i0(byte[][] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) == 0) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSetL = nt1.L(length);
        for (byte[] bArr2 : bArr) {
            Preconditions.checkNotNull(bArr2);
            hashSetL.add(Base64.encodeToString(bArr2, 3));
        }
        return hashSetL;
    }

    public static List j0(int[] iArr) {
        if (iArr == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(iArr.length >> 1);
        for (int i = 0; i < iArr.length; i += 2) {
            arrayList.add(new j65(iArr[i], iArr[i + 1]));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public final Set Z() {
        ArrayList arrayList = new ArrayList();
        byte[][] bArr = this.f431u;
        if (bArr != null) {
            Collections.addAll(arrayList, bArr);
        }
        byte[] bArr2 = this.o;
        if (bArr2 != null) {
            arrayList.add(bArr2);
        }
        return i0((byte[][]) arrayList.toArray(new byte[0][]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.HashSet] */
    public final boolean equals(Object obj) {
        Object objL;
        Object objL2;
        int length;
        int length2;
        if (obj instanceof z55) {
            z55 z55Var = (z55) obj;
            if (hm4.b(this.n, z55Var.n) && hm4.b(Z(), z55Var.Z()) && hm4.b(i0(this.p), i0(z55Var.p)) && hm4.b(i0(this.q), i0(z55Var.q)) && hm4.b(i0(this.r), i0(z55Var.r)) && hm4.b(i0(this.s), i0(z55Var.s))) {
                int[] iArr = this.t;
                if (iArr == null || (length2 = iArr.length) == 0) {
                    objL = Collections.EMPTY_SET;
                } else {
                    objL = nt1.L(length2);
                    for (int i : iArr) {
                        objL.add(Integer.valueOf(i));
                    }
                }
                int[] iArr2 = z55Var.t;
                if (iArr2 == null || (length = iArr2.length) == 0) {
                    objL2 = Collections.EMPTY_SET;
                } else {
                    objL2 = nt1.L(length);
                    for (int i2 : iArr2) {
                        objL2.add(Integer.valueOf(i2));
                    }
                }
                if (hm4.b(objL, objL2) && hm4.b(j0(this.v), j0(z55Var.v)) && hm4.b(i0(this.w), i0(z55Var.w))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str = this.n;
        sb.append(str == null ? "null" : di0.y(new StringBuilder(str.length() + 2), "'", str, "'"));
        sb.append(", direct==");
        byte[] bArr = this.o;
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        Y(sb, "GAIA=", this.p);
        sb.append(", ");
        Y(sb, "PSEUDO=", this.q);
        sb.append(", ");
        Y(sb, "ALWAYS=", this.r);
        sb.append(", ");
        Y(sb, "OTHER=", this.s);
        sb.append(", weak=");
        sb.append(Arrays.toString(this.t));
        sb.append(", ");
        Y(sb, "directs=", this.f431u);
        sb.append(", genDims=");
        sb.append(Arrays.toString(j0(this.v).toArray()));
        sb.append(", ");
        Y(sb, "external=", this.w);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.n, false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.o, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 4, this.p, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 5, this.q, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 6, this.r, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 7, this.s, false);
        SafeParcelWriter.writeIntArray(parcel, 8, this.t, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 9, this.f431u, false);
        SafeParcelWriter.writeIntArray(parcel, 10, this.v, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 11, this.w, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
