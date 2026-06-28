package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.fy4;
import defpackage.iv4;
import defpackage.yw4;
import defpackage.yy4;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzh implements zzk {
    final /* synthetic */ String zza;
    final /* synthetic */ Bundle zzb;

    public zzh(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.auth.zzk
    public final Object zza(IBinder iBinder) throws IOException, GoogleAuthException {
        yy4 yy4VarE = fy4.E(iBinder);
        String str = this.zza;
        Bundle bundle = this.zzb;
        yw4 yw4Var = (yw4) yy4VarE;
        Parcel parcelZza = yw4Var.zza();
        parcelZza.writeString(str);
        iv4.c(parcelZza, bundle);
        Parcel parcelZzb = yw4Var.zzb(2, parcelZza);
        Bundle bundle2 = (Bundle) iv4.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        zzl.zzc(bundle2);
        String string = bundle2.getString("Error");
        if (bundle2.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
