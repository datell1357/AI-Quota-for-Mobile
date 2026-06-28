package com.google.android.gms.auth;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.di0;
import defpackage.fy4;
import defpackage.iv4;
import defpackage.to4;
import defpackage.yw4;
import defpackage.yy4;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzj implements zzk {
    final /* synthetic */ String zza;
    final /* synthetic */ Context zzb;

    public zzj(String str, Context context) {
        this.zza = str;
        this.zzb = context;
    }

    @Override // com.google.android.gms.auth.zzk
    public final Object zza(IBinder iBinder) throws IOException, GoogleAuthException {
        yy4 yy4VarE = fy4.E(iBinder);
        String str = this.zza;
        yw4 yw4Var = (yw4) yy4VarE;
        Parcel parcelZza = yw4Var.zza();
        parcelZza.writeString(str);
        Parcel parcelZzb = yw4Var.zzb(8, parcelZza);
        Bundle bundle = (Bundle) iv4.a(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        zzl.zzc(bundle);
        String string = bundle.getString("Error");
        Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent");
        if (di0.i(3, to4.a(string))) {
            return Boolean.TRUE;
        }
        zzl.zzn(this.zzb, "requestGoogleAccountsAccess", string, intent, pendingIntent);
        throw new GoogleAuthException("Invalid state. Shouldn't happen");
    }
}
