package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t5 extends lg implements v5 {
    public final /* synthetic */ u5 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t5(u5 u5Var, Context context) {
        super(context, R.attr.actionOverflowButtonStyle);
        this.q = u5Var;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        ca.L(this, getContentDescription());
        setOnTouchListener(new p5(this, this));
    }

    @Override // defpackage.v5
    public final boolean b() {
        return false;
    }

    @Override // defpackage.v5
    public final boolean c() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.q.k();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
