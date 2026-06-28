package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import defpackage.di0;
import defpackage.t53;
import defpackage.u53;
import defpackage.yn2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zaz extends u53 {
    private static final zaz zaa = new zaz();

    private zaz() {
    }

    public static View zaa(Context context, int i, int i2) throws t53 {
        zaz zazVar = zaa;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            return (View) yn2.F(((zam) zazVar.getRemoteCreatorInstance(context)).zae(new yn2(context), zaxVar));
        } catch (Exception e) {
            throw new t53(di0.p(i, i2, "Could not get button with size ", " and color "), e);
        }
    }

    @Override // defpackage.u53
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return iInterfaceQueryLocalInterface instanceof zam ? (zam) iInterfaceQueryLocalInterface : new zam(iBinder);
    }
}
