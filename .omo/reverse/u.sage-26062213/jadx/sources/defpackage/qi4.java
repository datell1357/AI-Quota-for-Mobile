package defpackage;

import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qi4 extends mi4 {
    @Override // defpackage.mi4
    public final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 3:
                oi4.b(parcel);
                break;
            case 4:
                oi4.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                oi4.b(parcel);
                break;
            case 7:
                oi4.b(parcel);
                break;
            case 8:
                bj4 bj4Var = (bj4) oi4.a(parcel, bj4.CREATOR);
                oi4.b(parcel);
                zab(bj4Var);
                break;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                oi4.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }

    public abstract void zab(bj4 bj4Var);
}
