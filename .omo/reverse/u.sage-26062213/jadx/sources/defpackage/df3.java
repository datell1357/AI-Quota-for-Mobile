package defpackage;

import android.view.ScrollFeedbackProvider;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class df3 implements ef3 {
    public final ScrollFeedbackProvider n;

    public df3(NestedScrollView nestedScrollView) {
        this.n = ScrollFeedbackProvider.createProvider(nestedScrollView);
    }

    @Override // defpackage.ef3
    public final void onScrollLimit(int i, int i2, int i3, boolean z) {
        this.n.onScrollLimit(i, i2, i3, z);
    }

    @Override // defpackage.ef3
    public final void onScrollProgress(int i, int i2, int i3, int i4) {
        this.n.onScrollProgress(i, i2, i3, i4);
    }
}
