package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class us2 extends cs3 implements Parcelable, ap3, tr3, pg2 {
    public static final Parcelable.Creator<us2> CREATOR = new d6(12);
    public zo3 o;

    public us2(long j) {
        po3 po3VarJ = wo3.j();
        zo3 zo3Var = new zo3(po3VarJ.g(), j);
        if (!(po3VarJ instanceof jh1)) {
            zo3Var.b = new zo3(1L, j);
        }
        this.o = zo3Var;
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
        if (((zo3) ds3Var2).c == ((zo3) ds3Var3).c) {
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
        this.o = (zo3) ds3Var;
    }

    public final long g() {
        return ((zo3) wo3.t(this.o, this)).c;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return Long.valueOf(g());
    }

    public final void h(long j) {
        po3 po3VarJ;
        zo3 zo3Var = (zo3) wo3.h(this.o);
        if (zo3Var.c != j) {
            zo3 zo3Var2 = this.o;
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                ((zo3) wo3.o(zo3Var2, this, po3VarJ, zo3Var)).c = j;
            }
            wo3.n(po3VarJ, this);
        }
    }

    @Override // defpackage.pg2
    public final void setValue(Object obj) {
        h(((Number) obj).longValue());
    }

    public final String toString() {
        return "MutableLongState(value=" + ((zo3) wo3.h(this.o)).c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(g());
    }
}
