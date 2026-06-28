package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ws2 extends cs3 implements Parcelable, ap3 {
    public static final Parcelable.Creator<ws2> CREATOR = new vs2(0);
    public final w13 o;
    public bp3 p;

    public ws2(Object obj, w13 w13Var) {
        this.o = w13Var;
        po3 po3VarJ = wo3.j();
        bp3 bp3Var = new bp3(po3VarJ.g(), obj);
        if (!(po3VarJ instanceof jh1)) {
            bp3Var.b = new bp3(1L, obj);
        }
        this.p = bp3Var;
    }

    @Override // defpackage.bs3
    public final ds3 a() {
        return this.p;
    }

    @Override // defpackage.ap3
    public final w13 b() {
        return this.o;
    }

    @Override // defpackage.bs3
    public final ds3 d(ds3 ds3Var, ds3 ds3Var2, ds3 ds3Var3) {
        if (this.o.g(((bp3) ds3Var2).c, ((bp3) ds3Var3).c)) {
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
        this.p = (bp3) ds3Var;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return ((bp3) wo3.t(this.p, this)).c;
    }

    @Override // defpackage.pg2
    public final void setValue(Object obj) {
        po3 po3VarJ;
        bp3 bp3Var = (bp3) wo3.h(this.p);
        if (this.o.g(bp3Var.c, obj)) {
            return;
        }
        bp3 bp3Var2 = this.p;
        synchronized (wo3.c) {
            po3VarJ = wo3.j();
            ((bp3) wo3.o(bp3Var2, this, po3VarJ, bp3Var)).c = obj;
        }
        wo3.n(po3VarJ, this);
    }

    public final String toString() {
        return "MutableState(value=" + ((bp3) wo3.h(this.p)).c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeValue(getValue());
        w13 w13Var = w13.J;
        w13 w13Var2 = this.o;
        if (nt1.g(w13Var2, w13Var)) {
            i2 = 0;
        } else if (nt1.g(w13Var2, w13.S)) {
            i2 = 1;
        } else {
            if (!nt1.g(w13Var2, w13.P)) {
                k21.n("Only known types of MutableState's SnapshotMutationPolicy are supported");
                return;
            }
            i2 = 2;
        }
        parcel.writeInt(i2);
    }
}
