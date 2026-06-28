package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vs2 implements Parcelable.ClassLoaderCreator {
    public final /* synthetic */ int a;

    public /* synthetic */ vs2(int i) {
        this.a = i;
    }

    public static ws2 a(Parcel parcel, ClassLoader classLoader) {
        w13 w13Var;
        if (classLoader == null) {
            classLoader = vs2.class.getClassLoader();
        }
        Object value = parcel.readValue(classLoader);
        int i = parcel.readInt();
        if (i == 0) {
            w13Var = w13.J;
        } else if (i == 1) {
            w13Var = w13.S;
        } else {
            if (i != 2) {
                k21.n(xw1.q("Unsupported MutableState policy ", i, " was restored"));
                return null;
            }
            w13Var = w13.P;
        }
        return new ws2(value, w13Var);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                return a(parcel, classLoader);
            case 1:
                if (parcel.readParcelable(classLoader) == null) {
                    return f.o;
                }
                k21.n("superState must be null");
                return null;
            default:
                return new d04(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ws2[i];
            case 1:
                return new f[i];
            default:
                return new d04[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return a(parcel, null);
            case 1:
                if (parcel.readParcelable(null) == null) {
                    return f.o;
                }
                k21.n("superState must be null");
                return null;
            default:
                return new d04(parcel, null);
        }
    }
}
