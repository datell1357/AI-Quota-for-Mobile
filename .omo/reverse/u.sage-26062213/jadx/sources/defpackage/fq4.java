package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fq4 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<fq4> CREATOR = new d6(18);
    public String n;
    public String o;
    public vb5 p;
    public long q;
    public boolean r;
    public String s;
    public final bu4 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f101u;
    public bu4 v;
    public final long w;
    public final bu4 x;

    public fq4(fq4 fq4Var) {
        Preconditions.checkNotNull(fq4Var);
        this.n = fq4Var.n;
        this.o = fq4Var.o;
        this.p = fq4Var.p;
        this.q = fq4Var.q;
        this.r = fq4Var.r;
        this.s = fq4Var.s;
        this.t = fq4Var.t;
        this.f101u = fq4Var.f101u;
        this.v = fq4Var.v;
        this.w = fq4Var.w;
        this.x = fq4Var.x;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.n, false);
        SafeParcelWriter.writeString(parcel, 3, this.o, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.p, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.q);
        SafeParcelWriter.writeBoolean(parcel, 6, this.r);
        SafeParcelWriter.writeString(parcel, 7, this.s, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.t, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.f101u);
        SafeParcelWriter.writeParcelable(parcel, 10, this.v, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.w);
        SafeParcelWriter.writeParcelable(parcel, 12, this.x, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public fq4(String str, String str2, vb5 vb5Var, long j, boolean z, String str3, bu4 bu4Var, long j2, bu4 bu4Var2, long j3, bu4 bu4Var3) {
        this.n = str;
        this.o = str2;
        this.p = vb5Var;
        this.q = j;
        this.r = z;
        this.s = str3;
        this.t = bu4Var;
        this.f101u = j2;
        this.v = bu4Var2;
        this.w = j3;
        this.x = bu4Var3;
    }
}
