package defpackage;

import com.google.api.client.googleapis.batch.json.JsonBatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.http.HttpHeaders;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ph1 extends JsonBatchCallback {
    @Override // com.google.api.client.googleapis.batch.json.JsonBatchCallback
    public final void onFailure(GoogleJsonError googleJsonError, HttpHeaders httpHeaders) {
        if (googleJsonError != null && googleJsonError.getCode() == 404) {
            ez3.a.getClass();
            ra3.c(new Object[0]);
            return;
        }
        ra3 ra3Var = ez3.a;
        if (googleJsonError != null) {
            googleJsonError.getMessage();
        }
        ra3Var.getClass();
        ra3.m(new Object[0]);
    }

    @Override // com.google.api.client.googleapis.batch.BatchCallback
    public final void onSuccess(Object obj, HttpHeaders httpHeaders) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
    }
}
