package defpackage;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class og {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ WeakReference c;
    public final /* synthetic */ tg d;

    public og(tg tgVar, int i, int i2, WeakReference weakReference) {
        this.d = tgVar;
        this.a = i;
        this.b = i2;
        this.c = weakReference;
    }

    public final void a(int i) {
        new Handler(Looper.getMainLooper()).post(new l7(this, i));
    }

    public final void b(Typeface typeface) {
        int i;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.a) != -1) {
            typeface = sg.a(typeface, i, (this.b & 2) != 0);
        }
        tg tgVar = this.d;
        if (tgVar.m) {
            tgVar.l = typeface;
            TextView textView = (TextView) this.c.get();
            if (textView != null) {
                boolean zIsAttachedToWindow = textView.isAttachedToWindow();
                int i2 = tgVar.j;
                if (zIsAttachedToWindow) {
                    textView.post(new pg(textView, typeface, i2));
                } else {
                    textView.setTypeface(typeface, i2);
                }
            }
        }
    }
}
