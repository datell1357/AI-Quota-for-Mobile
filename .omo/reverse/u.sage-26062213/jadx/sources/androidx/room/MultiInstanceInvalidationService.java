package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import defpackage.qe2;
import defpackage.re2;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {
    public int n;
    public final LinkedHashMap o = new LinkedHashMap();
    public final re2 p = new re2(this);
    public final qe2 q = new qe2(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        return this.q;
    }
}
