package defpackage;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yb4 extends ac4 {
    public static yb4 c;
    public static final ls3 d = new ls3(10);
    public final Application b;

    public yb4(Application application) {
        this.b = application;
    }

    @Override // defpackage.ac4, defpackage.zb4
    public final vb4 a(Class cls) {
        Application application = this.b;
        if (application != null) {
            return d(cls, application);
        }
        p61.s("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        return null;
    }

    @Override // defpackage.ac4, defpackage.zb4
    public final vb4 b(Class cls, of2 of2Var) {
        if (this.b != null) {
            return a(cls);
        }
        Application application = (Application) of2Var.a.get(d);
        if (application != null) {
            return d(cls, application);
        }
        if (!dd.class.isAssignableFrom(cls)) {
            return ht4.n(cls);
        }
        k21.f("CreationExtras must have an application by `APPLICATION_KEY`");
        return null;
    }

    public final vb4 d(Class cls, Application application) {
        if (!dd.class.isAssignableFrom(cls)) {
            return ht4.n(cls);
        }
        try {
            vb4 vb4Var = (vb4) cls.getConstructor(Application.class).newInstance(application);
            vb4Var.getClass();
            return vb4Var;
        } catch (IllegalAccessException e) {
            q73.o("Cannot create an instance of ", cls, e);
            return null;
        } catch (InstantiationException e2) {
            q73.o("Cannot create an instance of ", cls, e2);
            return null;
        } catch (NoSuchMethodException e3) {
            q73.o("Cannot create an instance of ", cls, e3);
            return null;
        } catch (InvocationTargetException e4) {
            q73.o("Cannot create an instance of ", cls, e4);
            return null;
        }
    }
}
