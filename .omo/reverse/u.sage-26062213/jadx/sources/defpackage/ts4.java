package defpackage;

import android.os.Parcel;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.auth.api.accounttransfer.zzo;
import com.google.android.gms.auth.api.accounttransfer.zzw;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ts4 extends lt4 {
    @Override // defpackage.lt4
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                Status status = (Status) iv4.a(parcel, Status.CREATOR);
                iv4.b(parcel);
                zzh(status);
                return true;
            case 2:
                Status status2 = (Status) iv4.a(parcel, Status.CREATOR);
                zzw zzwVar = (zzw) iv4.a(parcel, zzw.CREATOR);
                iv4.b(parcel);
                zzf(status2, zzwVar);
                return true;
            case 3:
                Status status3 = (Status) iv4.a(parcel, Status.CREATOR);
                zzo zzoVar = (zzo) iv4.a(parcel, zzo.CREATOR);
                iv4.b(parcel);
                zzg(status3, zzoVar);
                return true;
            case 4:
                zze();
                return true;
            case 5:
                Status status4 = (Status) iv4.a(parcel, Status.CREATOR);
                iv4.b(parcel);
                zzd(status4);
                return true;
            case 6:
                byte[] bArrCreateByteArray = parcel.createByteArray();
                iv4.b(parcel);
                zzb(bArrCreateByteArray);
                return true;
            case 7:
                DeviceMetaData deviceMetaData = (DeviceMetaData) iv4.a(parcel, DeviceMetaData.CREATOR);
                iv4.b(parcel);
                zzc(deviceMetaData);
                return true;
            default:
                return false;
        }
    }

    public abstract void zzb(byte[] bArr);

    public abstract void zzc(DeviceMetaData deviceMetaData);

    public abstract void zzd(Status status);

    public abstract void zze();

    public abstract void zzf(Status status, zzw zzwVar);

    public abstract void zzg(Status status, zzo zzoVar);

    public abstract void zzh(Status status);
}
