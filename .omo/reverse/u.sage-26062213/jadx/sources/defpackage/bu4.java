package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bu4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<bu4> CREATOR = new d6(29);
    public final String n;
    public final zt4 o;
    public final String p;
    public final long q;
    public final long r;

    public bu4(bu4 bu4Var, long j, long j2) {
        Preconditions.checkNotNull(bu4Var);
        this.n = bu4Var.n;
        this.o = bu4Var.o;
        this.p = bu4Var.p;
        this.q = j;
        this.r = j2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.o);
        String str = this.p;
        int length = String.valueOf(str).length();
        String str2 = this.n;
        StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + strValueOf.length());
        di0.E(sb, "origin=", str, ",name=", str2);
        return xw1.s(sb, ",params=", strValueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        d6.a(this, parcel, i);
    }

    public bu4(String str, zt4 zt4Var, String str2, long j, long j2) {
        this.n = str;
        this.o = zt4Var;
        this.p = str2;
        this.q = j;
        this.r = j2;
    }
}
