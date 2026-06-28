package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b65 extends AbstractSafeParcelable implements Comparable {
    public static final Parcelable.Creator<b65> CREATOR = new av4(12);
    public final String n;
    public final long o;
    public final boolean p;
    public final double q;
    public final String r;
    public final byte[] s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f26u;
    public final int v;

    public b65(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2, int i3) {
        this.n = str;
        this.o = j;
        this.p = z;
        this.q = d;
        this.r = str2;
        this.s = bArr;
        this.t = i;
        this.f26u = i2;
        this.v = i3;
    }

    public final void Y(StringBuilder sb) {
        sb.append("Flag(");
        String str = this.n;
        sb.append(str);
        sb.append(", ");
        int i = this.t;
        if (i == 1) {
            sb.append(this.o);
        } else if (i == 2) {
            sb.append(this.p);
        } else if (i == 3) {
            sb.append(this.q);
        } else if (i == 4) {
            sb.append("'");
            sb.append((String) Preconditions.checkNotNull(this.r));
            sb.append("'");
        } else {
            if (i != 5) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(i).length());
                sb2.append("Invalid type: ");
                sb2.append(str);
                sb2.append(", ");
                sb2.append(i);
                throw new AssertionError(sb2.toString());
            }
            sb.append("'");
            sb.append(Base64.encodeToString((byte[]) Preconditions.checkNotNull(this.s), 3));
            sb.append("'");
        }
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(this.f26u);
        sb.append(", ");
        sb.append(this.v);
        sb.append(")");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00a3 A[RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compareTo(java.lang.Object r8) {
        /*
            r7 = this;
            b65 r8 = (defpackage.b65) r8
            java.lang.String r0 = r8.n
            java.lang.String r1 = r7.n
            int r0 = r1.compareTo(r0)
            if (r0 == 0) goto Ld
            return r0
        Ld:
            int r0 = r8.t
            r1 = -1
            r2 = 0
            r3 = 1
            int r4 = r7.t
            if (r4 >= r0) goto L18
            r0 = r1
            goto L1d
        L18:
            if (r4 == r0) goto L1c
            r0 = r3
            goto L1d
        L1c:
            r0 = r2
        L1d:
            if (r0 == 0) goto L20
            return r0
        L20:
            if (r4 == r3) goto L97
            r0 = 2
            if (r4 == r0) goto L8d
            r0 = 3
            if (r4 == r0) goto L84
            r0 = 4
            if (r4 == r0) goto L72
            r0 = 5
            if (r4 != r0) goto L59
            byte[] r8 = r8.s
            byte[] r7 = r7.s
            if (r7 != r8) goto L36
            goto La2
        L36:
            if (r7 != 0) goto L3a
            goto L9f
        L3a:
            if (r8 != 0) goto L3e
            goto La3
        L3e:
            r0 = r2
        L3f:
            int r4 = r8.length
            int r5 = r7.length
            int r6 = java.lang.Math.min(r5, r4)
            if (r0 >= r6) goto L52
            r4 = r7[r0]
            r5 = r8[r0]
            int r4 = r4 - r5
            if (r4 == 0) goto L4f
            return r4
        L4f:
            int r0 = r0 + 1
            goto L3f
        L52:
            if (r5 >= r4) goto L55
            return r1
        L55:
            if (r5 == r4) goto L58
            return r3
        L58:
            return r2
        L59:
            java.lang.String r7 = java.lang.String.valueOf(r4)
            int r7 = r7.length()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            int r7 = r7 + 20
            r8.<init>(r7)
            java.lang.String r7 = "Invalid enum value: "
            java.lang.String r7 = defpackage.di0.r(r4, r7, r8)
            defpackage.k21.c(r7)
            return r2
        L72:
            java.lang.String r8 = r8.r
            java.lang.String r7 = r7.r
            if (r7 != r8) goto L79
            goto La2
        L79:
            if (r7 != 0) goto L7c
            goto L9f
        L7c:
            if (r8 != 0) goto L7f
            goto La3
        L7f:
            int r7 = r7.compareTo(r8)
            return r7
        L84:
            double r0 = r7.q
            double r7 = r8.q
            int r7 = java.lang.Double.compare(r0, r7)
            return r7
        L8d:
            boolean r8 = r8.p
            boolean r7 = r7.p
            if (r7 != r8) goto L94
            goto La2
        L94:
            if (r7 == 0) goto L9f
            goto La3
        L97:
            long r4 = r7.o
            long r7 = r8.o
            int r7 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r7 >= 0) goto La0
        L9f:
            return r1
        La0:
            if (r7 != 0) goto La3
        La2:
            return r2
        La3:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b65.compareTo(java.lang.Object):int");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b65) {
            b65 b65Var = (b65) obj;
            if (hm4.b(this.n, b65Var.n)) {
                int i = b65Var.t;
                int i2 = this.t;
                if (i2 == i && this.f26u == b65Var.f26u && this.v == b65Var.v) {
                    if (i2 == 1) {
                        return this.o == b65Var.o;
                    }
                    if (i2 == 2) {
                        return this.p == b65Var.p;
                    }
                    if (i2 == 3) {
                        return this.q == b65Var.q;
                    }
                    if (i2 == 4) {
                        return hm4.b(this.r, b65Var.r);
                    }
                    if (i2 == 5) {
                        return Arrays.equals(this.s, b65Var.s);
                    }
                    k21.c(di0.r(i2, "Invalid enum value: ", new StringBuilder(String.valueOf(i2).length() + 20)));
                    return false;
                }
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Y(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.n;
        boolean z = str == null;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        if (!z) {
            SafeParcelWriter.writeString(parcel, 2, str, false);
        }
        long j = this.o;
        if (j != 0) {
            SafeParcelWriter.writeLong(parcel, 3, j);
        }
        if (this.p) {
            SafeParcelWriter.writeBoolean(parcel, 4, true);
        }
        double d = this.q;
        if (d != 0.0d) {
            SafeParcelWriter.writeDouble(parcel, 5, d);
        }
        String str2 = this.r;
        if (str2 != null) {
            SafeParcelWriter.writeString(parcel, 6, str2, false);
        }
        byte[] bArr = this.s;
        if (bArr != null) {
            SafeParcelWriter.writeByteArray(parcel, 7, bArr, false);
        }
        int i2 = this.t;
        if (i2 != 0) {
            SafeParcelWriter.writeInt(parcel, 8, i2);
        }
        int i3 = this.f26u;
        if (i3 != 0) {
            SafeParcelWriter.writeInt(parcel, 9, i3);
        }
        int i4 = this.v;
        if (i4 != 0) {
            SafeParcelWriter.writeInt(parcel, 10, i4);
        }
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
