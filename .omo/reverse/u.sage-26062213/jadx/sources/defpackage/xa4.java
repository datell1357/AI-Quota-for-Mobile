package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class xa4 {
    public final di a;
    public final di b;
    public final di c;

    public xa4(di diVar, di diVar2, di diVar3) {
        this.a = diVar;
        this.b = diVar2;
        this.c = diVar3;
    }

    public abstract ya4 a();

    public final Class b(Class cls) throws ClassNotFoundException {
        String name = cls.getName();
        di diVar = this.c;
        Class cls2 = (Class) diVar.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        diVar.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method c(String str) throws NoSuchMethodException {
        di diVar = this.a;
        Method method = (Method) diVar.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, xa4.class.getClassLoader()).getDeclaredMethod("read", xa4.class);
        diVar.put(str, declaredMethod);
        return declaredMethod;
    }

    public final Method d(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        String name = cls.getName();
        di diVar = this.b;
        Method method = (Method) diVar.get(name);
        if (method != null) {
            return method;
        }
        Class clsB = b(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsB.getDeclaredMethod("write", cls, xa4.class);
        diVar.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean e(int i);

    public final Parcelable f(Parcelable parcelable, int i) {
        if (!e(i)) {
            return parcelable;
        }
        return ((ya4) this).e.readParcelable(ya4.class.getClassLoader());
    }

    public final za4 g() {
        String string = ((ya4) this).e.readString();
        if (string == null) {
            return null;
        }
        try {
            return (za4) c(string).invoke(null, a());
        } catch (ClassNotFoundException e) {
            k21.i("VersionedParcel encountered ClassNotFoundException", e);
            return null;
        } catch (IllegalAccessException e2) {
            k21.i("VersionedParcel encountered IllegalAccessException", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            k21.i("VersionedParcel encountered NoSuchMethodException", e3);
            return null;
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            k21.i("VersionedParcel encountered InvocationTargetException", e4);
            return null;
        }
    }

    public abstract void h(int i);

    public final void i(za4 za4Var) {
        if (za4Var == null) {
            ((ya4) this).e.writeString(null);
            return;
        }
        try {
            ((ya4) this).e.writeString(b(za4Var.getClass()).getName());
            ya4 ya4VarA = a();
            try {
                d(za4Var.getClass()).invoke(null, za4Var, ya4VarA);
                Parcel parcel = ya4VarA.e;
                int i = ya4VarA.i;
                if (i >= 0) {
                    int i2 = ya4VarA.d.get(i);
                    int iDataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(iDataPosition - i2);
                    parcel.setDataPosition(iDataPosition);
                }
            } catch (ClassNotFoundException e) {
                k21.i("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                k21.i("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                k21.i("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                k21.i("VersionedParcel encountered InvocationTargetException", e4);
            }
        } catch (ClassNotFoundException e5) {
            k21.i(za4Var.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
