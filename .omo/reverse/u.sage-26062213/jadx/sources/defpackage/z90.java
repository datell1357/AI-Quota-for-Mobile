package defpackage;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z90 implements n03 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ z90(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.n03
    public final Object get() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                String str = (String) obj;
                try {
                    Class<?> cls = Class.forName(str);
                    if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                        return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new xt1("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    Log.w("ComponentDiscovery", "Class " + str + " is not an found.");
                    return null;
                } catch (IllegalAccessException e) {
                    throw new xt1(di0.v("Could not instantiate ", str, "."), e);
                } catch (InstantiationException e2) {
                    throw new xt1(di0.v("Could not instantiate ", str, "."), e2);
                } catch (NoSuchMethodException e3) {
                    throw new xt1(di0.u("Could not instantiate ", str), e3);
                } catch (InvocationTargetException e4) {
                    throw new xt1(di0.u("Could not instantiate ", str), e4);
                }
            case 1:
                return (ComponentRegistrar) obj;
            default:
                return new zn1((e61) obj);
        }
    }
}
