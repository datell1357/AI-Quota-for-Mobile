package defpackage;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class le5 extends mt4 {
    public final /* synthetic */ int c;
    public final /* synthetic */ pw3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public le5(int i, pw3 pw3Var) {
        super("com.google.android.gms.auth.blockstore.internal.IStoreBytesCallback");
        this.c = i;
        switch (i) {
            case 1:
                this.d = pw3Var;
                super("com.google.android.gms.auth.blockstore.internal.IDeleteBytesCallback");
                break;
            case 2:
                this.d = pw3Var;
                super("com.google.android.gms.auth.blockstore.internal.IIsEndToEndEncryptionAvailableCallback");
                break;
            default:
                this.d = pw3Var;
                break;
        }
    }

    @Override // defpackage.mt4
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        int i3 = this.c;
        pw3 pw3Var = this.d;
        switch (i3) {
            case 0:
                if (i == 1) {
                    Status status = (Status) kv4.a(parcel, Status.CREATOR);
                    int i4 = parcel.readInt();
                    enforceNoDataAvail(parcel);
                    TaskUtil.setResultOrApiException(status, Integer.valueOf(i4), pw3Var);
                }
                break;
            case 1:
                if (i == 1) {
                    Status status2 = (Status) kv4.a(parcel, Status.CREATOR);
                    z = parcel.readInt() != 0;
                    enforceNoDataAvail(parcel);
                    TaskUtil.setResultOrApiException(status2, Boolean.valueOf(z), pw3Var);
                }
                break;
            default:
                if (i == 1) {
                    Status status3 = (Status) kv4.a(parcel, Status.CREATOR);
                    z = parcel.readInt() != 0;
                    enforceNoDataAvail(parcel);
                    TaskUtil.setResultOrApiException(status3, Boolean.valueOf(z), pw3Var);
                }
                break;
        }
        return false;
    }
}
