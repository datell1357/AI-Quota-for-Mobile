package defpackage;

import android.app.Application;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zc3 implements zb4 {
    public final Application a;
    public final yb4 b;
    public final Bundle c;
    public final h22 d;
    public final uc3 e;

    public zc3(Application application, yc3 yc3Var, Bundle bundle) {
        yb4 yb4Var;
        this.e = yc3Var.getSavedStateRegistry();
        this.d = yc3Var.getLifecycle();
        this.c = bundle;
        this.a = application;
        if (application != null) {
            if (yb4.c == null) {
                yb4.c = new yb4(application);
            }
            yb4Var = yb4.c;
            yb4Var.getClass();
        } else {
            yb4Var = new yb4(null);
        }
        this.b = yb4Var;
    }

    @Override // defpackage.zb4
    public final vb4 a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return d(canonicalName, cls);
        }
        k21.f("Local and anonymous classes can not be ViewModels");
        return null;
    }

    @Override // defpackage.zb4
    public final vb4 b(Class cls, of2 of2Var) {
        ls3 ls3Var = wu4.q;
        LinkedHashMap linkedHashMap = of2Var.a;
        String str = (String) linkedHashMap.get(ls3Var);
        if (str == null) {
            k21.n("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
            return null;
        }
        if (linkedHashMap.get(pc3.a) == null || linkedHashMap.get(pc3.b) == null) {
            if (this.d != null) {
                return d(str, cls);
            }
            k21.n("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        Application application = (Application) linkedHashMap.get(yb4.d);
        boolean zIsAssignableFrom = dd.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? ad3.a(cls, ad3.b) : ad3.a(cls, ad3.a);
        return constructorA == null ? this.b.b(cls, of2Var) : (!zIsAssignableFrom || application == null) ? ad3.b(cls, constructorA, pc3.a(of2Var)) : ad3.b(cls, constructorA, application, pc3.a(of2Var));
    }

    @Override // defpackage.zb4
    public final vb4 c(i50 i50Var, of2 of2Var) {
        return b(on4.x(i50Var), of2Var);
    }

    public final vb4 d(String str, Class cls) {
        mc3 mc3Var;
        AutoCloseable autoCloseable;
        Application application;
        h22 h22Var = this.d;
        if (h22Var == null) {
            p61.s("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }
        boolean zIsAssignableFrom = dd.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || this.a == null) ? ad3.a(cls, ad3.b) : ad3.a(cls, ad3.a);
        if (constructorA == null) {
            if (this.a != null) {
                return this.b.a(cls);
            }
            if (ac4.a == null) {
                ac4.a = new ac4();
            }
            ac4.a.getClass();
            return ht4.n(cls);
        }
        uc3 uc3Var = this.e;
        uc3Var.getClass();
        Bundle bundle = this.c;
        Bundle bundleA = uc3Var.a(str);
        if (bundleA != null) {
            bundle = bundleA;
        }
        if (bundle == null) {
            mc3Var = new mc3();
        } else {
            ClassLoader classLoader = mc3.class.getClassLoader();
            classLoader.getClass();
            bundle.setClassLoader(classLoader);
            ca2 ca2Var = new ca2(bundle.size());
            for (String str2 : bundle.keySet()) {
                str2.getClass();
                ca2Var.put(str2, bundle.get(str2));
            }
            mc3Var = new mc3(ca2Var.b());
        }
        nc3 nc3Var = new nc3(str, mc3Var);
        nc3Var.b(h22Var, uc3Var);
        g22 g22Var = ((r22) h22Var).d;
        if (g22Var == g22.o || g22Var.compareTo(g22.q) >= 0) {
            uc3Var.d();
        } else {
            h22Var.a(new qp0(h22Var, uc3Var));
        }
        vb4 vb4VarB = (!zIsAssignableFrom || (application = this.a) == null) ? ad3.b(cls, constructorA, mc3Var) : ad3.b(cls, constructorA, application, mc3Var);
        vb4VarB.getClass();
        wb4 wb4Var = vb4VarB.a;
        if (wb4Var == null) {
            return vb4VarB;
        }
        if (wb4Var.d) {
            wb4.a(nc3Var);
            return vb4VarB;
        }
        synchronized (wb4Var.a) {
            autoCloseable = (AutoCloseable) wb4Var.b.put("androidx.lifecycle.savedstate.vm.tag", nc3Var);
        }
        wb4.a(autoCloseable);
        return vb4VarB;
    }

    public zc3() {
        this.b = new yb4(null);
    }
}
