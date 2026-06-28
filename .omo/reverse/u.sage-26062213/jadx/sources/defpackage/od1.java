package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class od1 implements Parcelable {
    public static final Parcelable.Creator<od1> CREATOR = new d6(6);
    public final String n;
    public final String o;
    public final boolean p;
    public final int q;
    public final int r;
    public final String s;
    public final boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f241u;
    public final boolean v;
    public final Bundle w;
    public final boolean x;
    public final int y;
    public Bundle z;

    public od1(Parcel parcel) {
        this.n = parcel.readString();
        this.o = parcel.readString();
        this.p = parcel.readInt() != 0;
        this.q = parcel.readInt();
        this.r = parcel.readInt();
        this.s = parcel.readString();
        this.t = parcel.readInt() != 0;
        this.f241u = parcel.readInt() != 0;
        this.v = parcel.readInt() != 0;
        this.w = parcel.readBundle();
        this.x = parcel.readInt() != 0;
        this.z = parcel.readBundle();
        this.y = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.n);
        sb.append(" (");
        sb.append(this.o);
        sb.append(")}:");
        if (this.p) {
            sb.append(" fromLayout");
        }
        int i = this.r;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.s;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.t) {
            sb.append(" retainInstance");
        }
        if (this.f241u) {
            sb.append(" removing");
        }
        if (this.v) {
            sb.append(" detached");
        }
        if (this.x) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeInt(this.p ? 1 : 0);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeInt(this.t ? 1 : 0);
        parcel.writeInt(this.f241u ? 1 : 0);
        parcel.writeInt(this.v ? 1 : 0);
        parcel.writeBundle(this.w);
        parcel.writeInt(this.x ? 1 : 0);
        parcel.writeBundle(this.z);
        parcel.writeInt(this.y);
    }

    public od1(lc1 lc1Var) {
        this.n = lc1Var.getClass().getName();
        this.o = lc1Var.mWho;
        this.p = lc1Var.mFromLayout;
        this.q = lc1Var.mFragmentId;
        this.r = lc1Var.mContainerId;
        this.s = lc1Var.mTag;
        this.t = lc1Var.mRetainInstance;
        this.f241u = lc1Var.mRemoving;
        this.v = lc1Var.mDetached;
        this.w = lc1Var.mArguments;
        this.x = lc1Var.mHidden;
        this.y = lc1Var.mMaxState.ordinal();
    }
}
