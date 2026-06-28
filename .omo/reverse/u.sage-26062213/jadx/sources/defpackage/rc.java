package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rc {
    public final /* synthetic */ int a;

    public /* synthetic */ rc(int i) {
        this.a = i;
    }

    public final a84 a(Object obj, er2 er2Var) {
        switch (this.a) {
            case 0:
                return kt4.g0(((Uri) obj).toString());
            case 1:
                return kt4.k(((File) obj).getPath());
            case 2:
                return kt4.k(((bt2) obj).n.q());
            case 3:
                int iIntValue = ((Number) obj).intValue();
                Context context = er2Var.a;
                try {
                    if (context.getResources().getResourceEntryName(iIntValue) != null) {
                        return kt4.g0("android.resource://" + context.getPackageName() + "/" + iIntValue);
                    }
                } catch (Resources.NotFoundException unused) {
                }
                return null;
            default:
                return kt4.g0((String) obj);
        }
    }
}
