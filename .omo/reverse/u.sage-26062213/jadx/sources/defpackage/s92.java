package defpackage;

import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s92 extends i6 {
    public final j6 a;

    public s92(j6 j6Var) {
        this.a = j6Var;
    }

    @Override // defpackage.i6
    public final void a(Object obj) {
        Parcelable parcelable = (Parcelable) obj;
        o6 o6Var = this.a.a;
        if (o6Var != null) {
            o6Var.a(parcelable);
        } else {
            k21.n("Launcher has not been initialized");
        }
    }
}
