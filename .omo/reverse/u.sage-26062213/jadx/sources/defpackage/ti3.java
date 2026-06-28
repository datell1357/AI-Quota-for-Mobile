package defpackage;

import android.app.Application;
import android.app.Service;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ti3 implements og1 {
    public final Service n;
    public tl0 o;

    public ti3(Service service) {
        this.n = service;
    }

    @Override // defpackage.og1
    public final Object a() {
        if (this.o == null) {
            Application application = this.n.getApplication();
            boolean z = application instanceof og1;
            Class<?> cls = application.getClass();
            if (!z) {
                q73.k(cls, "Hilt service must be attached to an @HiltAndroidApp Application. Found: ");
                return null;
            }
            this.o = new tl0(((vl0) ((si3) bi4.u(application, si3.class))).b);
        }
        return this.o;
    }
}
