package defpackage;

import android.graphics.fonts.Font;
import android.util.SizeF;
import android.widget.RemoteViews;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class yv3 {
    public static /* synthetic */ Font.Builder b(Font font) {
        return new Font.Builder(font);
    }

    public static /* synthetic */ RemoteViews.RemoteCollectionItems.Builder f() {
        return new RemoteViews.RemoteCollectionItems.Builder();
    }

    public static /* synthetic */ RemoteViews h(Map map) {
        return new RemoteViews((Map<SizeF, RemoteViews>) map);
    }
}
