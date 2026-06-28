package defpackage;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k85 extends iu4 implements v05 {
    public final /* synthetic */ AtomicReference c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k85(o95 o95Var, AtomicReference atomicReference) {
        super("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
        this.c = atomicReference;
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(oa5.CREATOR);
        ku4.d(parcel);
        z(arrayListCreateTypedArrayList);
        return true;
    }

    @Override // defpackage.v05
    public final void z(List list) {
        AtomicReference atomicReference = this.c;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }
}
