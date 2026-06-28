package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import defpackage.kv4;
import defpackage.mt4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface IClearRestoreCredentialCallback extends IInterface {

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static abstract class Stub extends mt4 implements IClearRestoreCredentialCallback {
        public Stub() {
            super("com.google.android.gms.auth.blockstore.restorecredential.internal.IClearRestoreCredentialCallback");
        }

        @Override // defpackage.mt4
        public boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                return false;
            }
            Status status = (Status) kv4.a(parcel, Status.CREATOR);
            boolean z = parcel.readInt() != 0;
            enforceNoDataAvail(parcel);
            onClearRestoreCredential(status, z);
            return true;
        }
    }

    void onClearRestoreCredential(Status status, boolean z);
}
