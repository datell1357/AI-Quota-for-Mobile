package defpackage;

import com.google.android.gms.auth.api.phone.SmsCodeAutofillClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uc5 extends GoogleApi implements SmsCodeAutofillClient {
    public static final Api a = new Api("SmsCodeAutofill.API", new d95(), new Api.ClientKey());

    @Override // com.google.android.gms.auth.api.phone.SmsCodeAutofillClient
    public final ow3 checkPermissionState() {
        return doRead(TaskApiCall.builder().setFeatures(om4.a).run(new ny4(this, 19)).setMethodKey(1564).build());
    }

    @Override // com.google.android.gms.auth.api.phone.SmsCodeAutofillClient
    public final ow3 hasOngoingSmsRequest(String str) {
        Preconditions.checkNotNull(str);
        Preconditions.checkArgument(!str.isEmpty(), "The package name cannot be empty.");
        return doRead(TaskApiCall.builder().setFeatures(om4.a).run(new bc5(this, str)).setMethodKey(1565).build());
    }

    @Override // com.google.android.gms.auth.api.phone.SmsCodeAutofillClient
    public final ow3 startSmsCodeRetriever() {
        return doWrite(TaskApiCall.builder().setFeatures(om4.a).run(new ky4(this)).setMethodKey(1563).build());
    }
}
