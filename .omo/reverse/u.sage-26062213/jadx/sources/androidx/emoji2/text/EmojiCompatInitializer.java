package androidx.emoji2.text;

import android.content.Context;
import androidx.lifecycle.ProcessLifecycleInitializer;
import defpackage.bb1;
import defpackage.eh;
import defpackage.h22;
import defpackage.hz0;
import defpackage.ih;
import defpackage.iz0;
import defpackage.p22;
import defpackage.uq1;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements uq1 {
    @Override // defpackage.uq1
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // defpackage.uq1
    public final Object b(Context context) {
        Object objR;
        bb1 bb1Var = new bb1(new ih(context, 2));
        bb1Var.a = 1;
        if (hz0.k == null) {
            synchronized (hz0.j) {
                try {
                    if (hz0.k == null) {
                        hz0.k = new hz0(bb1Var);
                    }
                } finally {
                }
            }
        }
        eh ehVarW = eh.w(context);
        ehVarW.getClass();
        synchronized (eh.s) {
            try {
                objR = ((HashMap) ehVarW.o).get(ProcessLifecycleInitializer.class);
                if (objR == null) {
                    objR = ehVarW.r(ProcessLifecycleInitializer.class, new HashSet());
                }
            } finally {
            }
        }
        h22 lifecycle = ((p22) objR).getLifecycle();
        lifecycle.a(new iz0(this, lifecycle));
        return Boolean.TRUE;
    }
}
