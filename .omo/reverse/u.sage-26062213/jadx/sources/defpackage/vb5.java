package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vb5 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<vb5> CREATOR = new av4(22);
    public final int n;
    public final String o;
    public final long p;
    public final Long q;
    public final String r;
    public final String s;
    public final Double t;

    public vb5(long j, Object obj, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        this.n = 2;
        this.o = str;
        this.p = j;
        this.s = str2;
        if (obj == null) {
            this.q = null;
            this.t = null;
            this.r = null;
            return;
        }
        if (obj instanceof Long) {
            this.q = (Long) obj;
            this.t = null;
            this.r = null;
        } else if (obj instanceof String) {
            this.q = null;
            this.t = null;
            this.r = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                k21.f("User attribute given of un-supported type");
                throw null;
            }
            this.q = null;
            this.t = (Double) obj;
            this.r = null;
        }
    }

    public final Object Y() {
        Long l = this.q;
        if (l != null) {
            return l;
        }
        Double d = this.t;
        if (d != null) {
            return d;
        }
        String str = this.r;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        av4.a(this, parcel);
    }

    public vb5(xb5 xb5Var) {
        this(xb5Var.d, xb5Var.e, xb5Var.c, xb5Var.b);
    }

    public vb5(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.n = i;
        this.o = str;
        this.p = j;
        this.q = l;
        this.t = i == 1 ? f != null ? Double.valueOf(f.doubleValue()) : null : d;
        this.r = str2;
        this.s = str3;
    }
}
