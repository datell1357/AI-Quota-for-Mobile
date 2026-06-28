package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.RetrieveBytesResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cf5 extends mt4 implements IInterface {
    public final /* synthetic */ int c;
    public final /* synthetic */ pw3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf5(int i, pw3 pw3Var) {
        super("com.google.android.gms.auth.blockstore.internal.IRetrieveBytesCallback");
        this.c = i;
        this.d = pw3Var;
    }

    @Override // defpackage.mt4
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
        pw3 pw3Var = this.d;
        int i3 = this.c;
        if (i == 1) {
            Status status = (Status) kv4.a(parcel, Status.CREATOR);
            byte[] bArrCreateByteArray = parcel.createByteArray();
            enforceNoDataAvail(parcel);
            switch (i3) {
                case 1:
                    TaskUtil.setResultOrApiException(status, bArrCreateByteArray, pw3Var);
                    return true;
                default:
                    throw new UnsupportedOperationException();
            }
        }
        if (i != 2) {
            return false;
        }
        Status status2 = (Status) kv4.a(parcel, Status.CREATOR);
        RetrieveBytesResponse retrieveBytesResponse = (RetrieveBytesResponse) kv4.a(parcel, RetrieveBytesResponse.CREATOR);
        enforceNoDataAvail(parcel);
        switch (i3) {
            case 0:
                TaskUtil.setResultOrApiException(status2, retrieveBytesResponse, pw3Var);
                return true;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
