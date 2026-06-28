package defpackage;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccount;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class es4 implements WorkAccountApi {
    public static final Status a = new Status(13);

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public final PendingResult addWorkAccount(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.execute(new xn4(WorkAccount.API, googleApiClient, str));
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public final PendingResult removeWorkAccount(GoogleApiClient googleApiClient, Account account) {
        return googleApiClient.execute(new kp4(WorkAccount.API, googleApiClient, account));
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public final void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, boolean z) {
        setWorkAuthenticatorEnabledWithResult(googleApiClient, z);
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public final PendingResult setWorkAuthenticatorEnabledWithResult(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.execute(new rm4(WorkAccount.API, googleApiClient, z));
    }
}
