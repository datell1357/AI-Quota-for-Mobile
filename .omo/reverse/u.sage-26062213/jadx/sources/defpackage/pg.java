package defpackage;

import android.graphics.Typeface;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pg implements Runnable {
    public final /* synthetic */ TextView n;
    public final /* synthetic */ Typeface o;
    public final /* synthetic */ int p;

    public pg(TextView textView, Typeface typeface, int i) {
        this.n = textView;
        this.o = typeface;
        this.p = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.setTypeface(this.o, this.p);
    }
}
