package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vk4 extends it4 {
    public final /* synthetic */ int d;
    public final /* synthetic */ pw3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vk4(int i, pw3 pw3Var) {
        super("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback");
        this.d = i;
        this.e = pw3Var;
    }

    @Override // defpackage.it4
    public final boolean E(int i, Parcel parcel) {
        if (i != 1) {
            return false;
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        int i2 = jv4.a;
        Status statusCreateFromParcel = parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
        jv4.a(parcel);
        int i3 = this.d;
        pw3 pw3Var = this.e;
        switch (i3) {
            case 0:
                TaskUtil.setResultOrApiException(statusCreateFromParcel, pw3Var);
                return true;
            default:
                TaskUtil.setResultOrApiException(statusCreateFromParcel, pw3Var);
                return true;
        }
    }
}
