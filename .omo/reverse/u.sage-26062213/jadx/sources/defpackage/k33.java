package defpackage;

import android.os.Bundle;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k33 implements n22 {
    public final /* synthetic */ int n;
    public final Object o;

    public /* synthetic */ k33(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        View view;
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                yc3 yc3Var = (yc3) obj;
                if (f22Var != f22.ON_CREATE) {
                    k21.c("Next event must be ON_CREATE");
                    return;
                }
                p22Var.getLifecycle().b(this);
                Bundle bundleA = yc3Var.getSavedStateRegistry().a("androidx.savedstate.Restarter");
                if (bundleA == null) {
                    return;
                }
                ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    k21.n("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                    return;
                }
                int size = stringArrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    String str = stringArrayList.get(i2);
                    i2++;
                    String str2 = str;
                    try {
                        Class<? extends U> clsAsSubclass = Class.forName(str2, false, k33.class.getClassLoader()).asSubclass(sc3.class);
                        clsAsSubclass.getClass();
                        try {
                            Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                            declaredConstructor.setAccessible(true);
                            try {
                                Object objNewInstance = declaredConstructor.newInstance(null);
                                objNewInstance.getClass();
                                if (!(yc3Var instanceof cc4)) {
                                    p61.y(yc3Var, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ");
                                    return;
                                }
                                bc4 viewModelStore = ((cc4) yc3Var).getViewModelStore();
                                uc3 savedStateRegistry = yc3Var.getSavedStateRegistry();
                                viewModelStore.getClass();
                                LinkedHashMap linkedHashMap = viewModelStore.a;
                                for (String str3 : new HashSet(linkedHashMap.keySet())) {
                                    str3.getClass();
                                    vb4 vb4Var = (vb4) linkedHashMap.get(str3);
                                    if (vb4Var != null) {
                                        on4.l(vb4Var, savedStateRegistry, yc3Var.getLifecycle());
                                    }
                                }
                                if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                                    savedStateRegistry.d();
                                }
                            } catch (Exception e) {
                                k21.i(di0.u("Failed to instantiate ", str2), e);
                                return;
                            }
                        } catch (NoSuchMethodException e2) {
                            throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                        }
                    } catch (ClassNotFoundException e3) {
                        k21.i(di0.v("Class ", str2, " wasn't found"), e3);
                        return;
                    }
                }
                return;
            case 1:
                if (f22Var != f22.ON_STOP || (view = ((lc1) obj).mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
                return;
            case 2:
                u90 u90Var = (u90) obj;
                u90.access$ensureViewModelStore(u90Var);
                u90Var.getLifecycle().b(this);
                return;
            case 3:
                new HashMap();
                mg1[] mg1VarArr = (mg1[]) obj;
                if (mg1VarArr.length > 0) {
                    mg1 mg1Var = mg1VarArr[0];
                    throw null;
                }
                if (mg1VarArr.length <= 0) {
                    return;
                }
                mg1 mg1Var2 = mg1VarArr[0];
                throw null;
            default:
                if (f22Var != f22.ON_CREATE) {
                    p61.y(f22Var, "Next event must be ON_CREATE, it was ");
                    return;
                } else {
                    p22Var.getLifecycle().b(this);
                    ((qc3) obj).b();
                    return;
                }
        }
    }
}
