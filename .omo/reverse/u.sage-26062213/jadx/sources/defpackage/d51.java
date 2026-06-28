package defpackage;

import android.app.NotificationChannel;
import android.content.res.AssetManager;
import android.graphics.ColorSpace;
import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class d51 {
    public static /* synthetic */ NotificationChannel c(String str) {
        return new NotificationChannel("com.google.android.gms.availability", str, 4);
    }

    public static /* bridge */ /* synthetic */ ColorSpace d(Object obj) {
        return (ColorSpace) obj;
    }

    public static /* synthetic */ Typeface.Builder e(AssetManager assetManager) {
        return new Typeface.Builder(assetManager, "fonts/anthropic_serif.ttf");
    }

    public static /* synthetic */ void s() {
    }

    public static /* synthetic */ Typeface.Builder y(AssetManager assetManager) {
        return new Typeface.Builder(assetManager, "fonts/anthropic_sans.ttf");
    }
}
