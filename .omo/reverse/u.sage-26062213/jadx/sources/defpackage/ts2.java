package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ts2 extends cs3 implements Parcelable, ap3, tr3, pg2 {
    public static final Parcelable.Creator<ts2> CREATOR = new d6(11);
    public yo3 o;

    public ts2(int i) {
        po3 po3VarJ = wo3.j();
        yo3 yo3Var = new yo3(po3VarJ.g(), i);
        if (!(po3VarJ instanceof jh1)) {
            yo3Var.b = new yo3(1L, i);
        }
        this.o = yo3Var;
    }

    @Override // defpackage.bs3
    public final ds3 a() {
        return this.o;
    }

    @Override // defpackage.ap3
    public final w13 b() {
        return w13.S;
    }

    @Override // defpackage.bs3
    public final ds3 d(ds3 ds3Var, ds3 ds3Var2, ds3 ds3Var3) {
        if (((yo3) ds3Var2).c == ((yo3) ds3Var3).c) {
            return ds3Var2;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.bs3
    public final void e(ds3 ds3Var) {
        ds3Var.getClass();
        this.o = (yo3) ds3Var;
    }

    public final int g() {
        return ((yo3) wo3.t(this.o, this)).c;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return Integer.valueOf(g());
    }

    public final void h(int i) {
        po3 po3VarJ;
        yo3 yo3Var = (yo3) wo3.h(this.o);
        if (yo3Var.c != i) {
            yo3 yo3Var2 = this.o;
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                ((yo3) wo3.o(yo3Var2, this, po3VarJ, yo3Var)).c = i;
            }
            wo3.n(po3VarJ, this);
        }
    }

    @Override // defpackage.pg2
    public final void setValue(Object obj) {
        h(((Number) obj).intValue());
    }

    public final String toString() {
        return di0.p(((yo3) wo3.h(this.o)).c, hashCode(), "MutableIntState(value=", ")@");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(g());
    }
}
