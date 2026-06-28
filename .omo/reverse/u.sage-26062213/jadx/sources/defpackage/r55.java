package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r55 extends AbstractSafeParcelable implements Comparable {
    public static final Parcelable.Creator<r55> CREATOR = new av4(8);
    public final int n;
    public final b65[] o;
    public final String[] p;
    public final TreeMap q = new TreeMap();

    public r55(int i, b65[] b65VarArr, String[] strArr) {
        this.n = i;
        this.o = b65VarArr;
        for (b65 b65Var : b65VarArr) {
            this.q.put(b65Var.n, b65Var);
        }
        this.p = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.n - ((r55) obj).n;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof r55)) {
            return false;
        }
        r55 r55Var = (r55) obj;
        return this.n == r55Var.n && hm4.b(this.q, r55Var.q) && Arrays.equals(this.p, r55Var.p);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.n);
        sb.append(", (");
        Iterator it = this.q.values().iterator();
        while (it.hasNext()) {
            sb.append((b65) it.next());
            sb.append(", ");
        }
        sb.append("), (");
        String[] strArr = this.p;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append("))");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.n);
        SafeParcelWriter.writeTypedArray(parcel, 3, this.o, i, false);
        SafeParcelWriter.writeStringArray(parcel, 4, this.p, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
