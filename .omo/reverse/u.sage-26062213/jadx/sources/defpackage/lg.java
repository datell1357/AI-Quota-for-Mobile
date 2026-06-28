package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class lg extends ImageView {
    public final gg n;
    public final hb o;
    public boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lg(Context context, int i) {
        super(context, null, i);
        qz3.a(context);
        this.p = false;
        hy3.a(this, getContext());
        gg ggVar = new gg(this);
        this.n = ggVar;
        ggVar.b(null, i);
        hb hbVar = new hb(this);
        this.o = hbVar;
        hbVar.g(i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.a();
        }
        hb hbVar = this.o;
        if (hbVar != null) {
            hbVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        me0 me0Var;
        gg ggVar = this.n;
        if (ggVar == null || (me0Var = (me0) ggVar.e) == null) {
            return null;
        }
        return (ColorStateList) me0Var.c;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        me0 me0Var;
        gg ggVar = this.n;
        if (ggVar == null || (me0Var = (me0) ggVar.e) == null) {
            return null;
        }
        return (PorterDuff.Mode) me0Var.d;
    }

    public ColorStateList getSupportImageTintList() {
        me0 me0Var;
        hb hbVar = this.o;
        if (hbVar == null || (me0Var = (me0) hbVar.d) == null) {
            return null;
        }
        return (ColorStateList) me0Var.c;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        me0 me0Var;
        hb hbVar = this.o;
        if (hbVar == null || (me0Var = (me0) hbVar.d) == null) {
            return null;
        }
        return (PorterDuff.Mode) me0Var.d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.o.c).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.a = -1;
            ggVar.f(null);
            ggVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.d(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        hb hbVar = this.o;
        if (hbVar != null) {
            hbVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        hb hbVar = this.o;
        if (hbVar != null && drawable != null && !this.p) {
            hbVar.b = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (hbVar != null) {
            hbVar.a();
            if (this.p) {
                return;
            }
            ImageView imageView = (ImageView) hbVar.c;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(hbVar.b);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.p = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        hb hbVar = this.o;
        if (hbVar != null) {
            ImageView imageView = (ImageView) hbVar.c;
            if (i != 0) {
                Drawable drawableH = zf5.H(imageView.getContext(), i);
                if (drawableH != null) {
                    sx0.a(drawableH);
                }
                imageView.setImageDrawable(drawableH);
            } else {
                imageView.setImageDrawable(null);
            }
            hbVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        hb hbVar = this.o;
        if (hbVar != null) {
            hbVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        gg ggVar = this.n;
        if (ggVar != null) {
            ggVar.h(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        hb hbVar = this.o;
        if (hbVar != null) {
            if (((me0) hbVar.d) == null) {
                hbVar.d = new me0();
            }
            me0 me0Var = (me0) hbVar.d;
            me0Var.c = colorStateList;
            me0Var.b = true;
            hbVar.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        hb hbVar = this.o;
        if (hbVar != null) {
            if (((me0) hbVar.d) == null) {
                hbVar.d = new me0();
            }
            me0 me0Var = (me0) hbVar.d;
            me0Var.d = mode;
            me0Var.a = true;
            hbVar.a();
        }
    }
}
