package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import defpackage.aj4;
import defpackage.cj4;
import defpackage.zi4;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zae extends zag {
    private final WeakReference zac;

    public zae(ImageView imageView, int i) {
        super(Uri.EMPTY, i);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference(imageView);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zae)) {
            return false;
        }
        ImageView imageView = (ImageView) this.zac.get();
        ImageView imageView2 = (ImageView) ((zae) obj).zac.get();
        return (imageView2 == null || imageView == null || !Objects.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.common.images.zag
    public final void zaa(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageView imageView = (ImageView) this.zac.get();
        if (imageView != null) {
            boolean z4 = (z2 || z) ? false : true;
            if (z4) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof cj4) {
                    drawable2 = ((cj4) drawable2).x;
                }
                cj4 cj4Var = new cj4(null);
                if (drawable2 == null) {
                    drawable2 = zi4.a;
                }
                cj4Var.w = drawable2;
                drawable2.setCallback(cj4Var);
                aj4 aj4Var = cj4Var.v;
                aj4Var.b = drawable2.getChangingConfigurations() | aj4Var.b;
                if (drawable == null) {
                    drawable = zi4.a;
                }
                cj4Var.x = drawable;
                drawable.setCallback(cj4Var);
                aj4Var.b = drawable.getChangingConfigurations() | aj4Var.b;
                drawable = cj4Var;
            }
            imageView.setImageDrawable(drawable);
            if (drawable == null || !z4) {
                return;
            }
            cj4 cj4Var2 = (cj4) drawable;
            cj4Var2.p = cj4Var2.q;
            cj4Var2.s = 0;
            cj4Var2.r = 250;
            cj4Var2.n = 1;
            cj4Var2.invalidateSelf();
        }
    }

    public zae(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference(imageView);
    }
}
