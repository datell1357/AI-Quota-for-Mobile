package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t55 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<t55> CREATOR = new av4(9);
    public final String n;
    public final byte[] o;
    public final String p;
    public final r55[] q;
    public final TreeMap r = new TreeMap();
    public final boolean s;
    public final long t;

    public t55(String str, String str2, r55[] r55VarArr, boolean z, byte[] bArr, long j) {
        this.n = str;
        this.p = str2;
        this.q = r55VarArr;
        this.s = z;
        this.o = bArr;
        this.t = j;
        for (r55 r55Var : r55VarArr) {
            this.r.put(Integer.valueOf(r55Var.n), r55Var);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t55)) {
            return false;
        }
        t55 t55Var = (t55) obj;
        return hm4.b(this.n, t55Var.n) && hm4.b(this.p, t55Var.p) && this.r.equals(t55Var.r) && this.s == t55Var.s && Arrays.equals(this.o, t55Var.o) && this.t == t55Var.t;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.n, this.p, this.r, Boolean.valueOf(this.s), this.o, Long.valueOf(this.t)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        sb.append(this.n);
        sb.append("', '");
        sb.append(this.p);
        sb.append("', (");
        Iterator it = this.r.values().iterator();
        while (it.hasNext()) {
            sb.append((r55) it.next());
            sb.append(", ");
        }
        sb.append("), ");
        sb.append(this.s);
        sb.append(", ");
        byte[] bArr = this.o;
        sb.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        sb.append(", ");
        sb.append(this.t);
        sb.append(')');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.n, false);
        SafeParcelWriter.writeString(parcel, 3, this.p, false);
        SafeParcelWriter.writeTypedArray(parcel, 4, this.q, i, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.s);
        SafeParcelWriter.writeByteArray(parcel, 6, this.o, false);
        SafeParcelWriter.writeLong(parcel, 7, this.t);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
