package defpackage;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zv3 {
    public static final String d = t72.i("SystemJobInfoConverter");
    public final ComponentName a;
    public final pr3 b;
    public final boolean c;

    public zv3(Context context, pr3 pr3Var, boolean z) {
        this.b = pr3Var;
        this.a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
        this.c = z;
    }
}
