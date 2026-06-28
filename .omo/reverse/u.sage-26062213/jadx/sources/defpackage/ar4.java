package defpackage;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ar4 implements WorkAccountApi.AddAccountResult {
    public static final Account p = new Account("DUMMY_NAME", "com.google");
    public final Status n;
    public final Account o;

    public ar4(Status status, Account account) {
        this.n = status;
        this.o = account == null ? p : account;
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
    public final Account getAccount() {
        return this.o;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.n;
    }
}
