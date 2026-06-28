package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import defpackage.pw3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zah extends zad {
    public final ListenerHolder.ListenerKey zab;

    public zah(ListenerHolder.ListenerKey listenerKey, pw3 pw3Var) {
        super(4, pw3Var);
        this.zab = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zaa(zabq zabqVar) {
        zaci zaciVar = (zaci) zabqVar.zah().get(this.zab);
        return zaciVar != null && zaciVar.zaa.zab();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zab(zabq zabqVar) {
        zaci zaciVar = (zaci) zabqVar.zah().get(this.zab);
        if (zaciVar == null) {
            return null;
        }
        return zaciVar.zaa.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zac(zabq zabqVar) {
        zaci zaciVar = (zaci) zabqVar.zah().remove(this.zab);
        if (zaciVar == null) {
            this.zaa.d(Boolean.FALSE);
            return;
        }
        zaciVar.zab.unregisterListener(zabqVar.zaf(), this.zaa);
        zaciVar.zaa.clearListener();
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zag(zaad zaadVar, boolean z) {
    }
}
