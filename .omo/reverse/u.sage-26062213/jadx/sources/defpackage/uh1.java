package defpackage;

import com.google.api.client.googleapis.batch.json.JsonBatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.http.HttpHeaders;
import com.google.api.services.calendar.model.Event;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uh1 extends JsonBatchCallback {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ AbstractCollection b;

    public uh1(LinkedHashSet linkedHashSet) {
        this.b = linkedHashSet;
    }

    @Override // com.google.api.client.googleapis.batch.json.JsonBatchCallback
    public final void onFailure(GoogleJsonError googleJsonError, HttpHeaders httpHeaders) {
        switch (this.a) {
            case 0:
                break;
            default:
                ra3 ra3Var = ez3.a;
                if (googleJsonError != null) {
                    googleJsonError.getMessage();
                }
                ra3Var.getClass();
                ra3.f(new Object[0]);
                break;
        }
    }

    @Override // com.google.api.client.googleapis.batch.BatchCallback
    public final void onSuccess(Object obj, HttpHeaders httpHeaders) {
        int i = this.a;
        AbstractCollection abstractCollection = this.b;
        switch (i) {
            case 0:
                Event event = (Event) obj;
                if (event != null) {
                    String id = event.getId();
                    id.getClass();
                    ((LinkedHashSet) abstractCollection).add(id);
                }
                break;
            default:
                Event event2 = (Event) obj;
                if (event2 != null) {
                    String id2 = event2.getId();
                    id2.getClass();
                    ((ArrayList) abstractCollection).add(id2);
                    ra3 ra3Var = ez3.a;
                    event2.getId();
                    ra3Var.getClass();
                    ra3.c(new Object[0]);
                }
                break;
        }
    }

    public uh1(String str, ArrayList arrayList) {
        this.b = arrayList;
    }

    private final void a(GoogleJsonError googleJsonError, HttpHeaders httpHeaders) {
    }
}
