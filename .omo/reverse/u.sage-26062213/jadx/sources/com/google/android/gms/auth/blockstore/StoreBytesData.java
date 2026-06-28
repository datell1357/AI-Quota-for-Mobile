package com.google.android.gms.auth.blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class StoreBytesData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StoreBytesData> CREATOR = new zze();
    private final byte[] zza;
    private final boolean zzb;
    private final String zzc;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Builder {
        private byte[] zza;
        private boolean zzb;
        private String zzc = BlockstoreClient.DEFAULT_BYTES_DATA_KEY;

        public StoreBytesData build() {
            return new StoreBytesData(this.zza, this.zzb, this.zzc);
        }

        public Builder setBytes(byte[] bArr) {
            this.zza = bArr;
            return this;
        }

        public Builder setKey(String str) {
            Preconditions.checkNotEmpty(str, "key cannot be null or empty");
            this.zzc = str;
            return this;
        }

        public Builder setShouldBackupToCloud(boolean z) {
            this.zzb = z;
            return this;
        }
    }

    public StoreBytesData(byte[] bArr, boolean z, String str) {
        this.zza = bArr;
        this.zzb = z;
        this.zzc = str;
    }

    public byte[] getBytes() {
        return this.zza;
    }

    public String getKey() {
        return this.zzc;
    }

    public boolean shouldBackupToCloud() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 1, getBytes(), false);
        SafeParcelWriter.writeBoolean(parcel, 2, shouldBackupToCloud());
        SafeParcelWriter.writeString(parcel, 3, getKey(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
