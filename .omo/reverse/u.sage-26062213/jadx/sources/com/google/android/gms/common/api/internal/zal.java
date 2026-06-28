package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import defpackage.ai;
import defpackage.di;
import defpackage.ow3;
import defpackage.pw3;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zal {
    private int zad;
    private final di zab = new di(0);
    private final pw3 zac = new pw3();
    private boolean zae = false;
    private final di zaa = new di(0);

    public zal(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.zaa.put(((HasApiKey) it.next()).getApiKey(), null);
        }
        this.zad = ((ai) this.zaa.keySet()).n.p;
    }

    public final ow3 zaa() {
        return this.zac.a;
    }

    public final Set zab() {
        return this.zaa.keySet();
    }

    public final void zac(ApiKey apiKey, ConnectionResult connectionResult, String str) {
        this.zaa.put(apiKey, connectionResult);
        this.zab.put(apiKey, str);
        this.zad--;
        if (!connectionResult.isSuccess()) {
            this.zae = true;
        }
        if (this.zad == 0) {
            if (!this.zae) {
                this.zac.b(this.zab);
            } else {
                this.zac.a(new AvailabilityException(this.zaa));
            }
        }
    }
}
