package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.go0;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "CreateRestoreCredentialRequestCreator")
public final class CreateRestoreCredentialRequest extends AbstractSafeParcelable {

    @SafeParcelable.Field(getter = "getRequestBundle", id = 1)
    private final Bundle requestBundle;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<CreateRestoreCredentialRequest> CREATOR = new CreateRestoreCredentialRequestCreator();

    @SafeParcelable.Constructor
    public CreateRestoreCredentialRequest(@SafeParcelable.Param(id = 1) Bundle bundle) {
        bundle.getClass();
        this.requestBundle = bundle;
    }

    public final Bundle getRequestBundle() {
        return this.requestBundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        CreateRestoreCredentialRequestCreator.writeToParcel(this, parcel, i);
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(go0 go0Var) {
            this();
        }
    }
}
