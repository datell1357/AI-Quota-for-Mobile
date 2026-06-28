package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ab1 implements gz0 {
    public final Context a;
    public final za1 b;
    public final b21 c;
    public final Object d = new Object();
    public Handler e;
    public ThreadPoolExecutor f;
    public ThreadPoolExecutor g;
    public ix h;

    public ab1(Context context, za1 za1Var) {
        bi4.k(context, "Context cannot be null");
        this.a = context.getApplicationContext();
        this.b = za1Var;
        this.c = bb1.d;
    }

    @Override // defpackage.gz0
    public final void a(ix ixVar) {
        synchronized (this.d) {
            this.h = ixVar;
        }
        synchronized (this.d) {
            try {
                if (this.h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new nc0("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new y(4, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.d) {
            try {
                this.h = null;
                Handler handler = this.e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.e = null;
                ThreadPoolExecutor threadPoolExecutor = this.g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final rb1 c() {
        try {
            b21 b21Var = this.c;
            Context context = this.a;
            za1 za1Var = this.b;
            b21Var.getClass();
            ArrayList arrayList = new ArrayList(1);
            Object obj = new Object[]{za1Var}[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            d90 d90VarA = ya1.a(context, Collections.unmodifiableList(arrayList));
            int i = d90VarA.o;
            if (i != 0) {
                throw new RuntimeException(xw1.q("fetchFonts failed (", i, ")"));
            }
            rb1[] rb1VarArr = (rb1[]) ((List) d90VarA.p).get(0);
            if (rb1VarArr == null || rb1VarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return rb1VarArr[0];
        } catch (PackageManager.NameNotFoundException e) {
            k21.i("provider not found", e);
            return null;
        }
    }
}
