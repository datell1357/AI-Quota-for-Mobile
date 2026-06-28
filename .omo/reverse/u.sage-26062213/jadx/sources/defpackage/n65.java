package defpackage;

import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n65 extends iu4 {
    public final /* synthetic */ int c = 1;
    public final pw3 d;

    public n65(pw3 pw3Var) {
        super("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
        this.d = pw3Var;
    }

    @Override // defpackage.iu4
    public final boolean E(int i, Parcel parcel, Parcel parcel2) {
        switch (this.c) {
            case 0:
                if (i != 2) {
                    return false;
                }
                Status status = (Status) ku4.a(parcel, Status.CREATOR);
                byte[] bArrCreateByteArray = parcel.createByteArray();
                ku4.d(parcel);
                pw3 pw3Var = this.d;
                if (!status.isSuccess()) {
                    TaskUtil.setResultOrApiException(status, null, pw3Var);
                    return true;
                }
                try {
                    kn4 kn4Var = kn4.a;
                    int i2 = um4.a;
                    TaskUtil.setResultOrApiException(status, t95.v(bArrCreateByteArray, kn4.b), pw3Var);
                    return true;
                } catch (fo4 e) {
                    pw3Var.a(e);
                    return true;
                }
            default:
                pw3 pw3Var2 = this.d;
                switch (i) {
                    case 1:
                        Status status2 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status2, pw3Var2);
                        return true;
                    case 2:
                        Status status3 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status3, pw3Var2);
                        return true;
                    case 3:
                        Status status4 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status4, pw3Var2);
                        return true;
                    case 4:
                        Status status5 = (Status) ku4.a(parcel, Status.CREATOR);
                        t55 t55Var = (t55) ku4.a(parcel, t55.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status5, t55Var, pw3Var2);
                        return true;
                    case 5:
                        Status status6 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status6, pw3Var2);
                        return true;
                    case 6:
                        Status status7 = (Status) ku4.a(parcel, Status.CREATOR);
                        z55 z55Var = (z55) ku4.a(parcel, z55.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status7, z55Var, pw3Var2);
                        return true;
                    case 7:
                        Status status8 = (Status) ku4.a(parcel, Status.CREATOR);
                        w55 w55Var = (w55) ku4.a(parcel, w55.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status8, w55Var, pw3Var2);
                        return true;
                    case 8:
                        Status status9 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status9, pw3Var2);
                        return true;
                    case ConnectionResult.SERVICE_INVALID /* 9 */:
                        Status status10 = (Status) ku4.a(parcel, Status.CREATOR);
                        b65 b65Var = (b65) ku4.a(parcel, b65.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status10, b65Var, pw3Var2);
                        return true;
                    case 10:
                        Status status11 = (Status) ku4.a(parcel, Status.CREATOR);
                        t55 t55Var2 = (t55) ku4.a(parcel, t55.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status11, t55Var2, pw3Var2);
                        return true;
                    case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                        Status status12 = (Status) ku4.a(parcel, Status.CREATOR);
                        parcel.readLong();
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status12, null, pw3Var2);
                        return true;
                    case 12:
                        Status status13 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status13, pw3Var2);
                        return true;
                    case 13:
                        Status status14 = (Status) ku4.a(parcel, Status.CREATOR);
                        g65 g65Var = (g65) ku4.a(parcel, g65.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status14, g65Var, pw3Var2);
                        return true;
                    case 14:
                        Status status15 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status15, pw3Var2);
                        return true;
                    case 15:
                        Status status16 = (Status) ku4.a(parcel, Status.CREATOR);
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status16, pw3Var2);
                        return true;
                    case 16:
                        Status status17 = (Status) ku4.a(parcel, Status.CREATOR);
                        long j = parcel.readLong();
                        ku4.d(parcel);
                        TaskUtil.setResultOrApiException(status17, Long.valueOf(j), pw3Var2);
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n65(w65 w65Var, pw3 pw3Var) {
        super("com.google.android.gms.phenotype.internal.IGetStorageInfoCallbacks");
        this.d = pw3Var;
    }
}
