package com.google.android.datatransport.cct;

import android.content.Context;
import defpackage.i30;
import defpackage.rk0;
import defpackage.v14;
import defpackage.yn;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class CctBackendFactory {
    public v14 create(rk0 rk0Var) {
        Context context = ((yn) rk0Var).a;
        yn ynVar = (yn) rk0Var;
        return new i30(context, ynVar.b, ynVar.c);
    }
}
