package androidx.work;

import android.content.Context;
import defpackage.bx3;
import defpackage.eg4;
import defpackage.gg4;
import defpackage.md0;
import defpackage.t72;
import defpackage.uq1;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class WorkManagerInitializer implements uq1 {
    public static final String a = t72.i("WrkMgrInitializer");

    @Override // defpackage.uq1
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // defpackage.uq1
    public final Object b(Context context) {
        t72.g().c(a, "Initializing WorkManager with default configuration.");
        md0 md0Var = new md0(new bx3(20));
        context.getClass();
        synchronized (eg4.m) {
            try {
                eg4 eg4Var = eg4.k;
                if (eg4Var != null && eg4.l != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                if (eg4Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (eg4.l == null) {
                        eg4.l = gg4.r(applicationContext, md0Var);
                    }
                    eg4.k = eg4.l;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return eg4.c(context);
    }
}
