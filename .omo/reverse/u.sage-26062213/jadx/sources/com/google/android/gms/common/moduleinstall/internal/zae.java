package com.google.android.gms.common.moduleinstall.internal;

import android.os.IInterface;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface zae extends IInterface {
    void zab(Status status);

    void zac(Status status, ModuleInstallIntentResponse moduleInstallIntentResponse);

    void zad(Status status, ModuleInstallResponse moduleInstallResponse);

    void zae(Status status, ModuleAvailabilityResponse moduleAvailabilityResponse);
}
