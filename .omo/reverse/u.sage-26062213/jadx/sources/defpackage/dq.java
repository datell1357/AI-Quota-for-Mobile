package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dq implements Parcelable {
    public static final Parcelable.Creator<dq> CREATOR = new d6(1);
    public final boolean A;
    public final int[] n;
    public final ArrayList o;
    public final int[] p;
    public final int[] q;
    public final int r;
    public final String s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f72u;
    public final CharSequence v;
    public final int w;
    public final CharSequence x;
    public final ArrayList y;
    public final ArrayList z;

    public dq(cq cqVar) {
        int size = cqVar.a.size();
        this.n = new int[size * 6];
        if (!cqVar.g) {
            k21.n("Not on back stack");
            throw null;
        }
        this.o = new ArrayList(size);
        this.p = new int[size];
        this.q = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            td1 td1Var = (td1) cqVar.a.get(i2);
            int i3 = i + 1;
            this.n[i] = td1Var.a;
            ArrayList arrayList = this.o;
            lc1 lc1Var = td1Var.b;
            arrayList.add(lc1Var != null ? lc1Var.mWho : null);
            int[] iArr = this.n;
            iArr[i3] = td1Var.c ? 1 : 0;
            iArr[i + 2] = td1Var.d;
            iArr[i + 3] = td1Var.e;
            int i4 = i + 5;
            iArr[i + 4] = td1Var.f;
            i += 6;
            iArr[i4] = td1Var.g;
            this.p[i2] = td1Var.h.ordinal();
            this.q[i2] = td1Var.i.ordinal();
        }
        this.r = cqVar.f;
        this.s = cqVar.h;
        this.t = cqVar.r;
        this.f72u = cqVar.i;
        this.v = cqVar.j;
        this.w = cqVar.k;
        this.x = cqVar.l;
        this.y = cqVar.m;
        this.z = cqVar.n;
        this.A = cqVar.o;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.n);
        parcel.writeStringList(this.o);
        parcel.writeIntArray(this.p);
        parcel.writeIntArray(this.q);
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeInt(this.t);
        parcel.writeInt(this.f72u);
        TextUtils.writeToParcel(this.v, parcel, 0);
        parcel.writeInt(this.w);
        TextUtils.writeToParcel(this.x, parcel, 0);
        parcel.writeStringList(this.y);
        parcel.writeStringList(this.z);
        parcel.writeInt(this.A ? 1 : 0);
    }

    public dq(Parcel parcel) {
        this.n = parcel.createIntArray();
        this.o = parcel.createStringArrayList();
        this.p = parcel.createIntArray();
        this.q = parcel.createIntArray();
        this.r = parcel.readInt();
        this.s = parcel.readString();
        this.t = parcel.readInt();
        this.f72u = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.v = (CharSequence) creator.createFromParcel(parcel);
        this.w = parcel.readInt();
        this.x = (CharSequence) creator.createFromParcel(parcel);
        this.y = parcel.createStringArrayList();
        this.z = parcel.createStringArrayList();
        this.A = parcel.readInt() != 0;
    }
}
