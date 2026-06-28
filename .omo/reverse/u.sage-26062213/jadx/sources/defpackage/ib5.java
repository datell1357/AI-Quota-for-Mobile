package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ib5 extends it4 {
    public final /* synthetic */ int d;
    public final /* synthetic */ pw3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ib5(int i, pw3 pw3Var) {
        super("com.google.android.gms.auth.api.phone.internal.IAutofillPermissionStateCallback");
        this.d = i;
        switch (i) {
            case 1:
                this.e = pw3Var;
                super("com.google.android.gms.auth.api.phone.internal.IOngoingSmsRequestCallback");
                break;
            default:
                this.e = pw3Var;
                break;
        }
    }

    @Override // defpackage.it4
    public final boolean E(int i, Parcel parcel) {
        int i2 = this.d;
        pw3 pw3Var = this.e;
        switch (i2) {
            case 0:
                if (i == 1) {
                    Parcelable.Creator<Status> creator = Status.CREATOR;
                    int i3 = jv4.a;
                    Status statusCreateFromParcel = parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null;
                    int i4 = parcel.readInt();
                    jv4.a(parcel);
                    TaskUtil.setResultOrApiException(statusCreateFromParcel, Integer.valueOf(i4), pw3Var);
                }
                break;
            default:
                if (i == 1) {
                    Parcelable.Creator<Status> creator2 = Status.CREATOR;
                    int i5 = jv4.a;
                    Status statusCreateFromParcel2 = parcel.readInt() != 0 ? creator2.createFromParcel(parcel) : null;
                    boolean z = parcel.readInt() != 0;
                    jv4.a(parcel);
                    TaskUtil.setResultOrApiException(statusCreateFromParcel2, Boolean.valueOf(z), pw3Var);
                }
                break;
        }
        return false;
    }
}
