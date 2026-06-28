package defpackage;

import com.google.android.gms.auth.api.phone.SmsRetrieverClient;
import com.google.android.gms.common.api.internal.TaskApiCall;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sl4 extends SmsRetrieverClient {
    @Override // com.google.android.gms.auth.api.phone.SmsRetrieverClient, com.google.android.gms.auth.api.phone.SmsRetrieverApi
    public final ow3 startSmsRetriever() {
        return doWrite(TaskApiCall.builder().run(new ny4(this, 27)).setFeatures(om4.c).setMethodKey(1567).build());
    }

    @Override // com.google.android.gms.auth.api.phone.SmsRetrieverClient, com.google.android.gms.auth.api.phone.SmsRetrieverApi
    public final ow3 startSmsUserConsent(String str) {
        return doWrite(TaskApiCall.builder().run(new sg0(this, str, 7)).setFeatures(om4.d).setMethodKey(1568).build());
    }
}
