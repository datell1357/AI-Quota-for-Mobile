package defpackage;

import android.app.NotificationManager;
import android.content.Context;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fn2 {
    public final NotificationManager a;

    static {
        new HashSet();
    }

    public fn2(Context context) {
        this.a = (NotificationManager) context.getSystemService("notification");
    }
}
