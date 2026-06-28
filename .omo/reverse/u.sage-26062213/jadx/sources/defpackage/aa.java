package defpackage;

import android.view.View;
import android.view.translation.ViewTranslationCallback;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aa {
    public static final aa a = new aa();

    public final void a(View view) {
        view.clearViewTranslationCallback();
    }

    public final void b(View view) {
        y9 y9Var = y9.a;
        ViewTranslationCallback unused = y9.a;
        view.setViewTranslationCallback(y9Var);
    }
}
