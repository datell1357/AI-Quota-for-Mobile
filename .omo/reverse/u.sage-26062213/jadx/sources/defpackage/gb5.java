package defpackage;

import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gb5 implements ze1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ gb5(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.ze1
    public final Object apply(Object obj) {
        switch (this.n) {
            case 0:
                Log.w("FlagStore", "Failed to commit to updated flags for ".concat(String.valueOf(((qb5) this.o).c)), (Throwable) obj);
                return null;
            case 1:
                aa5 aa5Var = (aa5) obj;
                oe5 oe5Var = dc5.a;
                String str = (String) this.o;
                v95 v95Var = (v95) aa5Var.t(str, w95.u()).k();
                if (!Collections.unmodifiableList(((w95) v95Var.o).t()).contains("")) {
                    v95Var.b();
                    ((w95) v95Var.o).v("");
                }
                y95 y95Var = (y95) aa5Var.k();
                v95Var.b();
                ((w95) v95Var.o).w("");
                w95 w95Var = (w95) v95Var.d();
                y95Var.b();
                ((aa5) y95Var.o).v().put(str, w95Var);
                return (aa5) y95Var.d();
            default:
                yc5 yc5Var = (yc5) this.o;
                t95 t95Var = (t95) obj;
                pc4 pc4Var = new pc4(25);
                StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskWrites().build());
                try {
                    try {
                        synchronized (yc5.j) {
                            gd5 gd5Var = (gd5) yc5Var.d.get();
                            Uri uri = yc5Var.g;
                            pc4 pc4Var2 = new pc4(t95Var.t());
                            pc4Var2.p = new pc4[]{pc4Var};
                            gd5Var.a(uri, pc4Var2);
                            yc5Var.h = t95Var.t();
                            break;
                        }
                        synchronized (yc5.k) {
                            gd5 gd5Var2 = (gd5) yc5Var.d.get();
                            Uri uri2 = yc5Var.i;
                            pc4 pc4Var3 = new pc4(t95Var.u());
                            pc4Var3.p = new pc4[]{pc4Var};
                            gd5Var2.a(uri2, pc4Var3);
                            t95Var.u();
                            break;
                        }
                        return null;
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                } finally {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
        }
    }
}
