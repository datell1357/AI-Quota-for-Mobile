package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vc5 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<vc5> CREATOR = new av4(23);
    public final boolean A;
    public final boolean B;
    public final Boolean C;
    public final long D;
    public final List E;
    public final String F;
    public final String G;
    public final String H;
    public final boolean I;
    public final long J;
    public final int K;
    public final String L;
    public final int M;
    public final long N;
    public final String O;
    public final String P;
    public final long Q;
    public final int R;
    public final long S;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final long r;
    public final long s;
    public final String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f375u;
    public final boolean v;
    public final long w;
    public final String x;
    public final long y;
    public final int z;

    public vc5(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, int i, boolean z3, boolean z4, Boolean bool, long j5, List list, String str7, String str8, String str9, boolean z5, long j6, int i2, String str10, int i3, long j7, String str11, String str12, long j8, int i4, long j9) {
        Preconditions.checkNotEmpty(str);
        this.n = str;
        this.o = true == TextUtils.isEmpty(str2) ? null : str2;
        this.p = str3;
        this.w = j;
        this.q = str4;
        this.r = j2;
        this.s = j3;
        this.t = str5;
        this.f375u = z;
        this.v = z2;
        this.x = str6;
        this.y = j4;
        this.z = i;
        this.A = z3;
        this.B = z4;
        this.C = bool;
        this.D = j5;
        this.E = list;
        this.F = str7;
        this.G = str8;
        this.H = str9;
        this.I = z5;
        this.J = j6;
        this.K = i2;
        this.L = str10;
        this.M = i3;
        this.N = j7;
        this.O = str11;
        this.P = str12;
        this.Q = j8;
        this.R = i4;
        this.S = j9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.n, false);
        SafeParcelWriter.writeString(parcel, 3, this.o, false);
        SafeParcelWriter.writeString(parcel, 4, this.p, false);
        SafeParcelWriter.writeString(parcel, 5, this.q, false);
        SafeParcelWriter.writeLong(parcel, 6, this.r);
        SafeParcelWriter.writeLong(parcel, 7, this.s);
        SafeParcelWriter.writeString(parcel, 8, this.t, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.f375u);
        SafeParcelWriter.writeBoolean(parcel, 10, this.v);
        SafeParcelWriter.writeLong(parcel, 11, this.w);
        SafeParcelWriter.writeString(parcel, 12, this.x, false);
        SafeParcelWriter.writeLong(parcel, 14, this.y);
        SafeParcelWriter.writeInt(parcel, 15, this.z);
        SafeParcelWriter.writeBoolean(parcel, 16, this.A);
        SafeParcelWriter.writeBoolean(parcel, 18, this.B);
        SafeParcelWriter.writeBooleanObject(parcel, 21, this.C, false);
        SafeParcelWriter.writeLong(parcel, 22, this.D);
        SafeParcelWriter.writeStringList(parcel, 23, this.E, false);
        SafeParcelWriter.writeString(parcel, 25, this.F, false);
        SafeParcelWriter.writeString(parcel, 26, this.G, false);
        SafeParcelWriter.writeString(parcel, 27, this.H, false);
        SafeParcelWriter.writeBoolean(parcel, 28, this.I);
        SafeParcelWriter.writeLong(parcel, 29, this.J);
        SafeParcelWriter.writeInt(parcel, 30, this.K);
        SafeParcelWriter.writeString(parcel, 31, this.L, false);
        SafeParcelWriter.writeInt(parcel, 32, this.M);
        SafeParcelWriter.writeLong(parcel, 34, this.N);
        SafeParcelWriter.writeString(parcel, 35, this.O, false);
        SafeParcelWriter.writeString(parcel, 36, this.P, false);
        SafeParcelWriter.writeLong(parcel, 37, this.Q);
        SafeParcelWriter.writeInt(parcel, 38, this.R);
        SafeParcelWriter.writeLong(parcel, 39, this.S);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public vc5(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, int i, boolean z3, boolean z4, Boolean bool, long j5, ArrayList arrayList, String str7, String str8, String str9, boolean z5, long j6, int i2, String str10, int i3, long j7, String str11, String str12, long j8, int i4, long j9) {
        this.n = str;
        this.o = str2;
        this.p = str3;
        this.w = j3;
        this.q = str4;
        this.r = j;
        this.s = j2;
        this.t = str5;
        this.f375u = z;
        this.v = z2;
        this.x = str6;
        this.y = j4;
        this.z = i;
        this.A = z3;
        this.B = z4;
        this.C = bool;
        this.D = j5;
        this.E = arrayList;
        this.F = str7;
        this.G = str8;
        this.H = str9;
        this.I = z5;
        this.J = j6;
        this.K = i2;
        this.L = str10;
        this.M = i3;
        this.N = j7;
        this.O = str11;
        this.P = str12;
        this.Q = j8;
        this.R = i4;
        this.S = j9;
    }
}
