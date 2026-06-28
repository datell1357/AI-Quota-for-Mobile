package com.google.android.gms.common;

import defpackage.dq4;
import defpackage.un4;
import defpackage.yq4;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class GmsSignatureVerifier {
    private static final zzab zza;
    private static final zzab zzb;
    private static final HashMap zzc;

    static {
        zzaa zzaaVar = new zzaa();
        zzaaVar.zza("com.google.android.gms");
        zzaaVar.zzb(204200000L);
        zzm zzmVar = zzo.zzf;
        byte[] bArrZzc = zzmVar.zzc();
        byte[] bArrZzc2 = zzo.zzd.zzc();
        byte[] bArrZzc3 = zzo.zzb.zzc();
        un4 un4Var = dq4.o;
        Object[] objArr = {bArrZzc, bArrZzc2, bArrZzc3};
        yq4.b(3, objArr);
        zzaaVar.zzc(dq4.l(3, objArr));
        zzm zzmVar2 = zzo.zze;
        byte[] bArrZzc4 = zzmVar2.zzc();
        zzm zzmVar3 = zzo.zzc;
        Object[] objArr2 = {bArrZzc4, zzmVar3.zzc(), zzo.zza.zzc()};
        yq4.b(3, objArr2);
        zzaaVar.zzd(dq4.l(3, objArr2));
        zza = zzaaVar.zze();
        zzaa zzaaVar2 = new zzaa();
        zzaaVar2.zza("com.android.vending");
        zzaaVar2.zzb(82240000L);
        Object[] objArr3 = {zzmVar.zzc()};
        yq4.b(1, objArr3);
        zzaaVar2.zzc(dq4.l(1, objArr3));
        Object[] objArr4 = {zzmVar2.zzc(), zzmVar3.zzc()};
        yq4.b(2, objArr4);
        zzaaVar2.zzd(dq4.l(2, objArr4));
        zzb = zzaaVar2.zze();
        zzc = new HashMap();
    }
}
