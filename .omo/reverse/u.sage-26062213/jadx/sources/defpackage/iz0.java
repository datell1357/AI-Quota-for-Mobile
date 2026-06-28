package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.emoji2.text.EmojiCompatInitializer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iz0 implements op0 {
    public final /* synthetic */ h22 n;

    public iz0(EmojiCompatInitializer emojiCompatInitializer, h22 h22Var) {
        this.n = h22Var;
    }

    @Override // defpackage.op0
    public final void A(p22 p22Var) {
        (Build.VERSION.SDK_INT >= 28 ? oc0.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new f20(1), 500L);
        this.n.b(this);
    }
}
