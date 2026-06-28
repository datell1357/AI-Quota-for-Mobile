package defpackage;

import android.os.BadParcelableException;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class jv4 {
    public static final /* synthetic */ int a = 0;

    static {
        jv4.class.getClassLoader();
    }

    public static void a(Parcel parcel) {
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(di0.q(iDataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }
}
