package com.google.android.gms.auth.blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class RetrieveBytesRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RetrieveBytesRequest> CREATOR = new zzc();
    private final List zza;
    private final boolean zzb;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Builder {
        private List zza = new ArrayList();
        private boolean zzb = false;

        public RetrieveBytesRequest build() {
            return new RetrieveBytesRequest(this.zza, this.zzb);
        }

        public Builder setKeys(List<String> list) {
            Preconditions.checkNotNull(list, "Keys cannot be set to null");
            this.zza = list;
            return this;
        }

        public Builder setRetrieveAll(boolean z) {
            this.zzb = z;
            return this;
        }
    }

    public RetrieveBytesRequest(List list, boolean z) {
        if (z) {
            boolean z2 = true;
            if (list != null && !list.isEmpty()) {
                z2 = false;
            }
            Preconditions.checkState(z2, "retrieveAll was set to true but other constraint(s) was also provided: keys");
        }
        this.zzb = z;
        this.zza = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Preconditions.checkNotEmpty(str, "Element in keys cannot be null or empty");
                this.zza.add(str);
            }
        }
    }

    public List<String> getKeys() {
        return Collections.unmodifiableList(this.zza);
    }

    public boolean getRetrieveAll() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, getKeys(), false);
        SafeParcelWriter.writeBoolean(parcel, 2, getRetrieveAll());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
