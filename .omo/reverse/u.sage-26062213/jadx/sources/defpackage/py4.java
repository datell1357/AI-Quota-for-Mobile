package defpackage;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class py4 extends iu4 implements tw4 {
    public final ww4 c;

    public py4(ww4 ww4Var) {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
        this.c = ww4Var;
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int iIdentityHashCode = System.identityHashCode(this.c);
            parcel2.writeNoException();
            parcel2.writeInt(iIdentityHashCode);
            return true;
        }
        String string = parcel.readString();
        String string2 = parcel.readString();
        Bundle bundle = (Bundle) ku4.a(parcel, Bundle.CREATOR);
        long j = parcel.readLong();
        ku4.d(parcel);
        d(string, string2, bundle, j);
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.tw4
    public final int a() {
        return System.identityHashCode(this.c);
    }

    @Override // defpackage.tw4
    public final void d(String str, String str2, Bundle bundle, long j) {
        this.c.a(str, str2, bundle, j);
    }
}
