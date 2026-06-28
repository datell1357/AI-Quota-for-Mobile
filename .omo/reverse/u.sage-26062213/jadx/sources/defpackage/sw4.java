package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sw4 extends gu4 implements tw4 {
    public sw4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // defpackage.tw4
    public final int a() {
        Parcel parcelE = E(2, F());
        int i = parcelE.readInt();
        parcelE.recycle();
        return i;
    }

    @Override // defpackage.tw4
    public final void d(String str, String str2, Bundle bundle, long j) {
        Parcel parcelF = F();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        ku4.b(parcelF, bundle);
        parcelF.writeLong(j);
        G(1, parcelF);
    }
}
