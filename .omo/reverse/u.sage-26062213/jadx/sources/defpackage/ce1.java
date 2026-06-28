package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ce1 implements ej1, yc3, cc4 {
    public final lc1 n;
    public final bc4 o;
    public zb4 p;
    public r22 q = null;
    public wc3 r = null;

    public ce1(lc1 lc1Var, bc4 bc4Var) {
        this.n = lc1Var;
        this.o = bc4Var;
    }

    public final void a(f22 f22Var) {
        this.q.e(f22Var);
    }

    public final void b() {
        if (this.q == null) {
            this.q = new r22(this, true);
            wc3 wc3Var = new wc3(new xc3(this, new vc3(0, this)));
            this.r = wc3Var;
            wc3Var.a();
        }
    }

    @Override // defpackage.ej1
    public final vk0 getDefaultViewModelCreationExtras() {
        Application application;
        lc1 lc1Var = this.n;
        Context applicationContext = lc1Var.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        of2 of2Var = new of2(0);
        LinkedHashMap linkedHashMap = of2Var.a;
        if (application != null) {
            linkedHashMap.put(yb4.d, application);
        }
        linkedHashMap.put(pc3.a, lc1Var);
        linkedHashMap.put(pc3.b, this);
        if (lc1Var.getArguments() != null) {
            linkedHashMap.put(pc3.c, lc1Var.getArguments());
        }
        return of2Var;
    }

    @Override // defpackage.ej1
    public final zb4 getDefaultViewModelProviderFactory() {
        Application application;
        lc1 lc1Var = this.n;
        zb4 defaultViewModelProviderFactory = lc1Var.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(lc1Var.mDefaultFactory)) {
            this.p = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.p == null) {
            Context applicationContext = lc1Var.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.p = new zc3(application, lc1Var, lc1Var.getArguments());
        }
        return this.p;
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        b();
        return this.q;
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        b();
        return this.r.b;
    }

    @Override // defpackage.cc4
    public final bc4 getViewModelStore() {
        b();
        return this.o;
    }
}
