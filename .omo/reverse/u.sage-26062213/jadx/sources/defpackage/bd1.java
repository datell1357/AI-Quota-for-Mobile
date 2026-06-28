package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bd1 {
    public static final wm3 b = new wm3(0);
    public final /* synthetic */ hd1 a;

    public bd1(hd1 hd1Var) {
        this.a = hd1Var;
    }

    public static Class a(ClassLoader classLoader, String str) throws ClassNotFoundException {
        wm3 wm3Var = b;
        wm3 wm3Var2 = (wm3) wm3Var.get(classLoader);
        if (wm3Var2 == null) {
            wm3Var2 = new wm3(0);
            wm3Var.put(classLoader, wm3Var2);
        }
        Class cls = (Class) wm3Var2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        wm3Var2.put(str, cls2);
        return cls2;
    }

    public static Class b(ClassLoader classLoader, String str) {
        try {
            return a(classLoader, str);
        } catch (ClassCastException e) {
            throw new v00(3, di0.v("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new v00(3, di0.v("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }
}
