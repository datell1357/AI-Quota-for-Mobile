package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zat;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class um3 extends GmsClient implements si4 {
    public final boolean a;
    public final ClientSettings b;
    public final Bundle c;
    public final Integer d;

    public um3(Context context, Looper looper, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.a = true;
        this.b = clientSettings;
        this.c = bundle;
        this.d = clientSettings.zab();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.si4
    public final void a(IAccountAccessor iAccountAccessor, boolean z) {
        try {
            ui4 ui4Var = (ui4) getService();
            int iIntValue = ((Integer) Preconditions.checkNotNull(this.d)).intValue();
            Parcel parcelZaa = ui4Var.zaa();
            oi4.d(parcelZaa, iAccountAccessor);
            parcelZaa.writeInt(iIntValue);
            parcelZaa.writeInt(z ? 1 : 0);
            ui4Var.zac(9, parcelZaa);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.si4
    public final void b(ni4 ni4Var) {
        Preconditions.checkNotNull(ni4Var, "Expecting a valid ISignInCallbacks");
        try {
            Account accountOrDefault = this.b.getAccountOrDefault();
            zat zatVar = new zat(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.d)).intValue(), "<<default account>>".equals(accountOrDefault.name) ? Storage.getInstance(getContext()).getSavedDefaultGoogleSignInAccount() : null);
            ui4 ui4Var = (ui4) getService();
            yi4 yi4Var = new yi4(1, zatVar);
            Parcel parcelZaa = ui4Var.zaa();
            oi4.c(parcelZaa, yi4Var);
            oi4.d(parcelZaa, ni4Var);
            ui4Var.zac(12, parcelZaa);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                ni4Var.zab(new bj4(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof ui4 ? (ui4) iInterfaceQueryLocalInterface : new ui4(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        ClientSettings clientSettings = this.b;
        boolean zEquals = getContext().getPackageName().equals(clientSettings.getRealClientPackageName());
        Bundle bundle = this.c;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", clientSettings.getRealClientPackageName());
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.si4
    public final void zaa() {
        try {
            ui4 ui4Var = (ui4) getService();
            int iIntValue = ((Integer) Preconditions.checkNotNull(this.d)).intValue();
            Parcel parcelZaa = ui4Var.zaa();
            parcelZaa.writeInt(iIntValue);
            ui4Var.zac(7, parcelZaa);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // defpackage.si4
    public final void zab() {
        connect(new BaseGmsClient.LegacyClientCallbackAdapter(this));
    }
}
