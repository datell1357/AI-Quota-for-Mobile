package defpackage;

import com.google.android.gms.auth.api.phone.SmsCodeBrowserClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ke5 extends GoogleApi implements SmsCodeBrowserClient {
    public static final Api a = new Api("SmsCodeBrowser.API", new xd5(), new Api.ClientKey());

    @Override // com.google.android.gms.auth.api.phone.SmsCodeBrowserClient
    public final ow3 startSmsCodeRetriever() {
        return doWrite(TaskApiCall.builder().setFeatures(om4.b).run(new ny4(this, 25)).setMethodKey(1566).build());
    }
}
