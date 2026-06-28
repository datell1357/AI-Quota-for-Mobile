package defpackage;

import android.accounts.Account;
import com.google.android.gms.auth.account.zza;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class in4 extends zza {
    public final /* synthetic */ int c;
    public final /* synthetic */ BaseImplementation.ApiMethodImpl d;

    public /* synthetic */ in4(int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.c = i;
        this.d = apiMethodImpl;
    }

    @Override // com.google.android.gms.auth.account.zzb
    public void zzb(Account account) {
        switch (this.c) {
            case 0:
                ((xn4) this.d).setResult(new ar4(account != null ? Status.RESULT_SUCCESS : es4.a, account));
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.android.gms.auth.account.zzb
    public void zzc(boolean z) {
        switch (this.c) {
            case 1:
                ((kp4) this.d).setResult(new vr4(z ? Status.RESULT_SUCCESS : es4.a, 1));
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
