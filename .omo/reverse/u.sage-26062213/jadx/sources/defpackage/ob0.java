package defpackage;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ob0 implements ComponentCallbacks2, ViewTreeObserver.OnWindowFocusChangeListener {
    public final /* synthetic */ pb0 n;

    public ob0(pb0 pb0Var) {
        this.n = pb0Var;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.n.e(configuration);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        pb0 pb0Var = this.n;
        pb0Var.g.a.clear();
        m73 m73Var = pb0Var.h;
        synchronized (m73Var) {
            m73Var.a.c();
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        pb0 pb0Var = this.n;
        pb0Var.g.a.clear();
        m73 m73Var = pb0Var.h;
        synchronized (m73Var) {
            m73Var.a.c();
        }
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        ((ws2) this.n.t.n).setValue(Boolean.valueOf(z));
    }
}
