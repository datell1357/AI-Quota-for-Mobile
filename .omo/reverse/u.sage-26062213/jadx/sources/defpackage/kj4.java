package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.ApiExceptionUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kj4 extends sj4 {
    public final /* synthetic */ int c;
    public final /* synthetic */ pw3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj4(oj4 oj4Var, pw3 pw3Var, int i) {
        super("com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback");
        this.c = i;
        switch (i) {
            case 3:
                this.d = pw3Var;
                super("com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback");
                break;
            case 4:
                this.d = pw3Var;
                super("com.google.android.gms.auth.api.identity.internal.IGetPhoneNumberHintIntentCallback");
                break;
            default:
                this.d = pw3Var;
                break;
        }
    }

    @Override // defpackage.sj4
    public final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) {
        int i3 = this.c;
        pw3 pw3Var = this.d;
        switch (i3) {
            case 0:
                if (i == 1) {
                    Status status = (Status) bk4.a(parcel, Status.CREATOR);
                    SaveAccountLinkingTokenResult saveAccountLinkingTokenResult = (SaveAccountLinkingTokenResult) bk4.a(parcel, SaveAccountLinkingTokenResult.CREATOR);
                    bk4.d(parcel);
                    if (status.isSuccess()) {
                        pw3Var.b(saveAccountLinkingTokenResult);
                    } else {
                        pw3Var.a(ApiExceptionUtil.fromStatus(status));
                    }
                }
                break;
            case 1:
                if (i == 1) {
                    Status status2 = (Status) bk4.a(parcel, Status.CREATOR);
                    SavePasswordResult savePasswordResult = (SavePasswordResult) bk4.a(parcel, SavePasswordResult.CREATOR);
                    bk4.d(parcel);
                    TaskUtil.setResultOrApiException(status2, savePasswordResult, pw3Var);
                }
                break;
            case 2:
                if (i == 1) {
                    Status status3 = (Status) bk4.a(parcel, Status.CREATOR);
                    BeginSignInResult beginSignInResult = (BeginSignInResult) bk4.a(parcel, BeginSignInResult.CREATOR);
                    bk4.d(parcel);
                    TaskUtil.setResultOrApiException(status3, beginSignInResult, pw3Var);
                }
                break;
            case 3:
                if (i == 1) {
                    Status status4 = (Status) bk4.a(parcel, Status.CREATOR);
                    PendingIntent pendingIntent = (PendingIntent) bk4.a(parcel, PendingIntent.CREATOR);
                    bk4.d(parcel);
                    TaskUtil.setResultOrApiException(status4, pendingIntent, pw3Var);
                }
                break;
            case 4:
                if (i == 1) {
                    Status status5 = (Status) bk4.a(parcel, Status.CREATOR);
                    PendingIntent pendingIntent2 = (PendingIntent) bk4.a(parcel, PendingIntent.CREATOR);
                    bk4.d(parcel);
                    TaskUtil.setResultOrApiException(status5, pendingIntent2, pw3Var);
                }
                break;
            default:
                if (i == 1) {
                    Status status6 = (Status) bk4.a(parcel, Status.CREATOR);
                    AuthorizationResult authorizationResult = (AuthorizationResult) bk4.a(parcel, AuthorizationResult.CREATOR);
                    bk4.d(parcel);
                    if (status6.isSuccess()) {
                        pw3Var.b(authorizationResult);
                    } else {
                        pw3Var.a(ApiExceptionUtil.fromStatus(status6));
                    }
                }
                break;
        }
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj4(lj4 lj4Var, pw3 pw3Var, int i) {
        super("com.google.android.gms.auth.api.identity.internal.ISaveAccountLinkingTokenCallback");
        this.c = i;
        switch (i) {
            case 1:
                this.d = pw3Var;
                super("com.google.android.gms.auth.api.identity.internal.ISavePasswordCallback");
                break;
            default:
                this.d = pw3Var;
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj4(ij4 ij4Var, pw3 pw3Var) {
        super("com.google.android.gms.auth.api.identity.internal.IAuthorizationCallback");
        this.c = 5;
        this.d = pw3Var;
    }
}
