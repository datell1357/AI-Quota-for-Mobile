package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialResponse;
import com.google.android.gms.common.api.Status;
import defpackage.kv4;
import defpackage.mt4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ICreateRestoreCredentialCallback extends IInterface {

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static abstract class Stub extends mt4 implements ICreateRestoreCredentialCallback {
        public Stub() {
            super("com.google.android.gms.auth.blockstore.restorecredential.internal.ICreateRestoreCredentialCallback");
        }

        @Override // defpackage.mt4
        public boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                return false;
            }
            Status status = (Status) kv4.a(parcel, Status.CREATOR);
            CreateRestoreCredentialResponse createRestoreCredentialResponse = (CreateRestoreCredentialResponse) kv4.a(parcel, CreateRestoreCredentialResponse.CREATOR);
            enforceNoDataAvail(parcel);
            onCreateRestoreCredential(status, createRestoreCredentialResponse);
            return true;
        }
    }

    void onCreateRestoreCredential(Status status, CreateRestoreCredentialResponse createRestoreCredentialResponse);
}
