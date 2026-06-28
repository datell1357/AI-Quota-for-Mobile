package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import defpackage.eh0;
import defpackage.ow3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class zacx implements eh0 {
    @Override // defpackage.eh0
    public final /* bridge */ /* synthetic */ Object then(ow3 ow3Var) throws ApiException {
        if (((Boolean) ow3Var.g()).booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
