package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import defpackage.kv4;
import defpackage.mt4;
import defpackage.ok4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface IRestoreCredentialService extends IInterface {

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static abstract class Stub extends mt4 implements IRestoreCredentialService {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public static class Proxy extends ok4 implements IRestoreCredentialService {
            public Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public void clearRestoreCredential(ClearRestoreCredentialRequest clearRestoreCredentialRequest, IClearRestoreCredentialCallback iClearRestoreCredentialCallback) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                kv4.b(parcelObtainAndWriteInterfaceToken, clearRestoreCredentialRequest);
                kv4.c(parcelObtainAndWriteInterfaceToken, iClearRestoreCredentialCallback);
                transactAndReadExceptionReturnVoid(4, parcelObtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public void createRestoreCredential(CreateRestoreCredentialRequest createRestoreCredentialRequest, ICreateRestoreCredentialCallback iCreateRestoreCredentialCallback) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                kv4.b(parcelObtainAndWriteInterfaceToken, createRestoreCredentialRequest);
                kv4.c(parcelObtainAndWriteInterfaceToken, iCreateRestoreCredentialCallback);
                transactAndReadExceptionReturnVoid(3, parcelObtainAndWriteInterfaceToken);
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public void getRestoreCredential(GetRestoreCredentialRequest getRestoreCredentialRequest, IGetRestoreCredentialCallback iGetRestoreCredentialCallback) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                kv4.b(parcelObtainAndWriteInterfaceToken, getRestoreCredentialRequest);
                kv4.c(parcelObtainAndWriteInterfaceToken, iGetRestoreCredentialCallback);
                transactAndReadExceptionReturnVoid(2, parcelObtainAndWriteInterfaceToken);
            }
        }

        public static IRestoreCredentialService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
            return iInterfaceQueryLocalInterface instanceof IRestoreCredentialService ? (IRestoreCredentialService) iInterfaceQueryLocalInterface : new Proxy(iBinder);
        }
    }

    void clearRestoreCredential(ClearRestoreCredentialRequest clearRestoreCredentialRequest, IClearRestoreCredentialCallback iClearRestoreCredentialCallback);

    void createRestoreCredential(CreateRestoreCredentialRequest createRestoreCredentialRequest, ICreateRestoreCredentialCallback iCreateRestoreCredentialCallback);

    void getRestoreCredential(GetRestoreCredentialRequest getRestoreCredentialRequest, IGetRestoreCredentialCallback iGetRestoreCredentialCallback);
}
