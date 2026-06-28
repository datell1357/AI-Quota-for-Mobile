package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yn2 extends nt4 implements kn1 {
    public final Object c;

    public yn2(Object obj) {
        super("com.google.android.gms.dynamic.IObjectWrapper");
        this.c = obj;
    }

    public static kn1 E(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return iInterfaceQueryLocalInterface instanceof kn1 ? (kn1) iInterfaceQueryLocalInterface : new jt4(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
    }

    public static Object F(kn1 kn1Var) {
        if (kn1Var instanceof yn2) {
            return ((yn2) kn1Var).c;
        }
        IBinder iBinderAsBinder = kn1Var.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            int length = declaredFields.length;
            k21.f(di0.r(length, "Unexpected number of IObjectWrapper declared fields: ", new StringBuilder(String.valueOf(length).length() + 53)));
            return null;
        }
        Preconditions.checkNotNull(field);
        if (field.isAccessible()) {
            k21.f("IObjectWrapper declared field not private!");
            return null;
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException("Binder object is null.", e2);
        }
    }
}
