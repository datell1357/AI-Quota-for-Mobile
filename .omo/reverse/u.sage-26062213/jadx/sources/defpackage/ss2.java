package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ss2 extends cs3 implements Parcelable, ap3, tr3, pg2 {
    public static final Parcelable.Creator<ss2> CREATOR = new d6(10);
    public xo3 o;

    public ss2(float f) {
        po3 po3VarJ = wo3.j();
        xo3 xo3Var = new xo3(f, po3VarJ.g());
        if (!(po3VarJ instanceof jh1)) {
            xo3Var.b = new xo3(f, 1L);
        }
        this.o = xo3Var;
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
        if (((xo3) ds3Var2).c == ((xo3) ds3Var3).c) {
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
        this.o = (xo3) ds3Var;
    }

    public final float g() {
        return ((xo3) wo3.t(this.o, this)).c;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return Float.valueOf(g());
    }

    public final void h(float f) {
        po3 po3VarJ;
        xo3 xo3Var = (xo3) wo3.h(this.o);
        if (xo3Var.c == f) {
            return;
        }
        xo3 xo3Var2 = this.o;
        synchronized (wo3.c) {
            po3VarJ = wo3.j();
            ((xo3) wo3.o(xo3Var2, this, po3VarJ, xo3Var)).c = f;
        }
        wo3.n(po3VarJ, this);
    }

    @Override // defpackage.pg2
    public final void setValue(Object obj) {
        h(((Number) obj).floatValue());
    }

    public final String toString() {
        return "MutableFloatState(value=" + ((xo3) wo3.h(this.o)).c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(g());
    }
}
