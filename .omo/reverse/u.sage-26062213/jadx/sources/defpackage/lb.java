package defpackage;

import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lb implements pi {
    public int n;
    public final Object o;
    public Object p;
    public Object q;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x028e  */
    /* JADX WARN: Type inference failed for: r18v3, types: [android.graphics.Bitmap, java.lang.Throwable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public lb(defpackage.en2 r30) {
        /*
            Method dump skipped, instruction units count: 1442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lb.<init>(en2):void");
    }

    public long a() {
        Paint paint = (Paint) this.o;
        return Build.VERSION.SDK_INT >= 29 ? nh4.a.a(paint) : c75.b(paint.getColor());
    }

    public int b() {
        Paint.Cap strokeCap = ((Paint) this.o).getStrokeCap();
        int i = strokeCap == null ? -1 : mb.a[strokeCap.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i != 2) {
            return i != 3 ? 0 : 2;
        }
        return 1;
    }

    public int c() {
        Paint.Join strokeJoin = ((Paint) this.o).getStrokeJoin();
        int i = strokeJoin == null ? -1 : mb.b[strokeJoin.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 2;
    }

    @Override // defpackage.pi
    public ListenableFuture call() {
        ic5 ic5Var = (ic5) this.o;
        sm4 sm4Var = (sm4) this.p;
        int i = this.n;
        ArrayList arrayList = (ArrayList) this.q;
        ListenableFuture listenableFutureC = tf1.c(sm4Var);
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) tf1.b((Future) arrayList.get(i2))).booleanValue()) {
                if (((List) ic5Var.b).get(i2) != null) {
                    mk0.b();
                    return null;
                }
                u85 u85Var = new u85(1);
                int i3 = vf5.a;
                listenableFutureC = tf1.f(listenableFutureC, new ic5(4, ye5.a(), u85Var), fu0.n);
            }
        }
        return listenableFutureC;
    }

    public void d(float f) {
        ((Paint) this.o).setAlpha((int) Math.rint(f * 255.0f));
    }

    public void e(int i) {
        if (this.n == i) {
            return;
        }
        this.n = i;
        Paint paint = (Paint) this.o;
        if (Build.VERSION.SDK_INT >= 29) {
            nh4.a.b(paint, i);
        } else {
            paint.setXfermode(new PorterDuffXfermode(se0.G(i)));
        }
    }

    public void f(long j) {
        Paint paint = (Paint) this.o;
        if (Build.VERSION.SDK_INT >= 29) {
            nh4.a.c(paint, j);
        } else {
            paint.setColor(c75.R(j));
        }
    }

    public void g(ow owVar) {
        this.q = owVar;
        ((Paint) this.o).setColorFilter(owVar != null ? owVar.a : null);
    }

    public void h(Shader shader) {
        this.p = shader;
        ((Paint) this.o).setShader(shader);
    }

    public void i(int i) {
        ((Paint) this.o).setStrokeCap(i == 2 ? Paint.Cap.SQUARE : i == 1 ? Paint.Cap.ROUND : i == 0 ? Paint.Cap.BUTT : Paint.Cap.BUTT);
    }

    public void j(int i) {
        ((Paint) this.o).setStrokeJoin(i == 0 ? Paint.Join.MITER : i == 2 ? Paint.Join.BEVEL : i == 1 ? Paint.Join.ROUND : Paint.Join.MITER);
    }

    public void k(int i) {
        ((Paint) this.o).setStyle(i == 1 ? Paint.Style.STROKE : Paint.Style.FILL);
    }

    public lb(yh2 yh2Var, int i) {
        this.o = yh2Var.s;
        this.n = i;
        ai2 ai2Var = yh2Var.f421u;
        this.p = ai2Var.a();
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        this.q = bundleX;
        ai2Var.h.c(bundleX);
    }

    public lb(Bundle bundle) {
        bundle.getClass();
        String string = bundle.getString("nav-entry-state:id");
        if (string != null) {
            this.o = string;
            this.n = mt1.D("nav-entry-state:destination-id", bundle);
            Bundle bundle2 = bundle.getBundle("nav-entry-state:args");
            if (bundle2 != null) {
                this.p = bundle2;
                Bundle bundle3 = bundle.getBundle("nav-entry-state:saved-state");
                if (bundle3 != null) {
                    this.q = bundle3;
                    return;
                } else {
                    nt1.I("nav-entry-state:saved-state");
                    throw null;
                }
            }
            nt1.I("nav-entry-state:args");
            throw null;
        }
        nt1.I("nav-entry-state:id");
        throw null;
    }

    public lb(Paint paint) {
        this.o = paint;
        this.n = 3;
    }

    public /* synthetic */ lb(ic5 ic5Var, sm4 sm4Var, int i, ArrayList arrayList) {
        this.o = ic5Var;
        this.p = sm4Var;
        this.n = i;
        this.q = arrayList;
    }
}
