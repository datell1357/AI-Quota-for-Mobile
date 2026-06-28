package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class af5 extends lt4 {
    public final /* synthetic */ int c;
    public final /* synthetic */ pw3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af5(int i, pw3 pw3Var) {
        super("com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback");
        this.c = i;
        switch (i) {
            case 1:
                this.d = pw3Var;
                super("com.google.android.gms.auth.account.data.IGetAccountChangeEventsCallback");
                break;
            default:
                this.d = pw3Var;
                break;
        }
    }

    @Override // defpackage.lt4
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        int i3 = this.c;
        pw3 pw3Var = this.d;
        switch (i3) {
            case 0:
                if (i == 2) {
                    Status status = (Status) iv4.a(parcel, Status.CREATOR);
                    Bundle bundle = (Bundle) iv4.a(parcel, Bundle.CREATOR);
                    iv4.b(parcel);
                    vl4.a(status, bundle, pw3Var);
                }
                break;
            default:
                if (i == 2) {
                    Status status2 = (Status) iv4.a(parcel, Status.CREATOR);
                    AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) iv4.a(parcel, AccountChangeEventsResponse.CREATOR);
                    iv4.b(parcel);
                    vl4.a(status2, accountChangeEventsResponse, pw3Var);
                }
                break;
        }
        return true;
    }
}
