package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fp3 implements Parcelable.ClassLoaderCreator {
    public final /* synthetic */ int a;

    public static gp3 a(Parcel parcel, ClassLoader classLoader) {
        if (classLoader == null) {
            classLoader = fp3.class.getClassLoader();
        }
        int i = parcel.readInt();
        if (i == 0) {
            return new gp3();
        }
        vu2 vu2VarG = yn3.o.g();
        for (int i2 = 0; i2 < i; i2++) {
            vu2VarG.add(parcel.readValue(classLoader));
        }
        return new gp3(vu2VarG.e());
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return a(parcel, null);
            default:
                return new kc1(parcel, null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new gp3[i];
            default:
                return new kc1[i];
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                return a(parcel, classLoader);
            default:
                return new kc1(parcel, classLoader);
        }
    }
}
