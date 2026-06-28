package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.signatureverification.SignatureVerificationConfigurationProvider;
import defpackage.iy0;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class PackageSignatureVerifier {
    static volatile zzac zza;
    private static zzad zzb;

    private static synchronized zzad zza(Context context) {
        try {
            if (zzb == null) {
                zzb = new zzad(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzb;
    }

    public PackageVerificationResult queryPackageSignatureVerified(Context context, String str) {
        boolean zHonorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(context);
        zza(context);
        int i = zzo.zzh;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                zzo.zzb();
                if (zzo.zzg.zzi()) {
                    SignatureVerificationConfigurationProvider.zza().zza();
                    String strConcat = String.valueOf(str).concat(true != zHonorsDebugCertificates ? "-0" : "-1");
                    if (zza != null && zza.zza().equals(strConcat)) {
                        return zza.zzb();
                    }
                    str.getClass();
                    zza(context);
                    zzv zzvVar = new zzv(null);
                    zzvVar.zza(str);
                    zzvVar.zzb(zHonorsDebugCertificates);
                    zzvVar.zzc(false);
                    zzy zzyVarZzc = zzo.zzc(zzvVar.zzd());
                    if (zzyVarZzc.zza) {
                        PackageVerificationResult packageVerificationResultZzd = PackageVerificationResult.zzd(str, zzyVarZzc.zzd, null);
                        zza = new zzac(strConcat, packageVerificationResultZzd);
                        return packageVerificationResultZzd;
                    }
                    String str2 = zzyVarZzc.zzb;
                    Preconditions.checkNotNull(str2);
                    return PackageVerificationResult.zza(str, str2, zzyVarZzc.zzc, null);
                }
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        } catch (RemoteException | iy0 e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
        }
        throw new zzae();
    }

    public PackageVerificationResult queryPackageSignatureVerifiedWithRetry(Context context, String str) {
        try {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified = queryPackageSignatureVerified(context, str);
            packageVerificationResultQueryPackageSignatureVerified.zzc();
            return packageVerificationResultQueryPackageSignatureVerified;
        } catch (SecurityException e) {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified2 = queryPackageSignatureVerified(context, str);
            if (packageVerificationResultQueryPackageSignatureVerified2.zzb()) {
                Log.e("PkgSignatureVerifier", "Got flaky result during package signature verification", e);
            }
            return packageVerificationResultQueryPackageSignatureVerified2;
        }
    }
}
