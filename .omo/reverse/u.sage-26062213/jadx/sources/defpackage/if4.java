package defpackage;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class if4 extends ContentObserver {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if4(aw4 aw4Var) {
        super(null);
        this.b = aw4Var;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        switch (this.a) {
            case 1:
                aw4 aw4Var = (aw4) this.b;
                synchronized (aw4Var.d) {
                    aw4Var.e = null;
                    rw4.i.incrementAndGet();
                    break;
                }
                synchronized (aw4Var) {
                    try {
                        Iterator it = aw4Var.f.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            throw null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                super.onChange(z);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if4(zy zyVar, Handler handler) {
        super(handler);
        this.b = zyVar;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        switch (this.a) {
            case 0:
                ((zy) this.b).n(t64.a);
                break;
            default:
                super.onChange(z, uri);
                break;
        }
    }
}
