package com.google.android.gms.auth;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.fy4;
import defpackage.iv4;
import defpackage.yw4;
import defpackage.yy4;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zzi implements zzk {
    final /* synthetic */ AccountChangeEventsRequest zza;

    public zzi(AccountChangeEventsRequest accountChangeEventsRequest) {
        this.zza = accountChangeEventsRequest;
    }

    @Override // com.google.android.gms.auth.zzk
    public final Object zza(IBinder iBinder) throws IOException {
        yy4 yy4VarE = fy4.E(iBinder);
        AccountChangeEventsRequest accountChangeEventsRequest = this.zza;
        yw4 yw4Var = (yw4) yy4VarE;
        Parcel parcelZza = yw4Var.zza();
        iv4.c(parcelZza, accountChangeEventsRequest);
        Parcel parcelZzb = yw4Var.zzb(3, parcelZza);
        AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) iv4.a(parcelZzb, AccountChangeEventsResponse.CREATOR);
        parcelZzb.recycle();
        zzl.zzc(accountChangeEventsResponse);
        return accountChangeEventsResponse.getEvents();
    }
}
