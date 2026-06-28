package defpackage;

import android.util.Log;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jd2 extends FutureTask {
    public final /* synthetic */ ej n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd2(ej ejVar, id2 id2Var) {
        super(id2Var);
        this.n = ejVar;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        ej ejVar = this.n;
        AtomicBoolean atomicBoolean = ejVar.q;
        try {
            Object obj = get();
            if (atomicBoolean.get()) {
                return;
            }
            ejVar.a(obj);
        } catch (InterruptedException e) {
            Log.w("AsyncTask", e);
        } catch (CancellationException unused) {
            if (atomicBoolean.get()) {
                return;
            }
            ejVar.a(null);
        } catch (ExecutionException e2) {
            k21.i("An error occurred while executing doInBackground()", e2.getCause());
        } catch (Throwable th) {
            k21.i("An error occurred while executing doInBackground()", th);
        }
    }
}
