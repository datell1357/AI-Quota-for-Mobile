package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iw4 extends gu4 implements mw4 {
    public iw4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // defpackage.mw4
    public final void i(Bundle bundle) {
        Parcel parcelF = F();
        ku4.b(parcelF, bundle);
        G(1, parcelF);
    }
}
