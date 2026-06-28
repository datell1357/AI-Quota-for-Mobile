package defpackage;

import android.os.Handler;
import android.widget.EditText;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xz0 extends ez0 implements Runnable {
    public final WeakReference n;

    public xz0(fg fgVar) {
        this.n = new WeakReference(fgVar);
    }

    @Override // defpackage.ez0
    public final void b() {
        Handler handler;
        EditText editText = (EditText) this.n.get();
        if (editText == null || (handler = editText.getHandler()) == null) {
            return;
        }
        handler.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        yz0.a((EditText) this.n.get(), 1);
    }
}
