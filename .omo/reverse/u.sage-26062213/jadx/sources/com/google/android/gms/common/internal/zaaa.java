package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.common.util.DeviceProperties;
import defpackage.di0;
import defpackage.k21;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static final int zab(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        k21.n(di0.q(i, "Unknown color scheme: "));
        return 0;
    }

    public final void zaa(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int iZab = zab(i2, u.sage.R.drawable.common_google_signin_btn_icon_dark, u.sage.R.drawable.common_google_signin_btn_icon_light, u.sage.R.drawable.common_google_signin_btn_icon_light);
        int iZab2 = zab(i2, u.sage.R.drawable.common_google_signin_btn_text_dark, u.sage.R.drawable.common_google_signin_btn_text_light, u.sage.R.drawable.common_google_signin_btn_text_light);
        if (i == 0 || i == 1) {
            iZab = iZab2;
        } else if (i != 2) {
            k21.n(di0.q(i, "Unknown button size: "));
            return;
        }
        Drawable drawable = resources.getDrawable(iZab);
        drawable.setTintList(resources.getColorStateList(u.sage.R.color.common_google_signin_btn_tint));
        drawable.setTintMode(PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(drawable);
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zab(i2, u.sage.R.color.common_google_signin_btn_text_dark, u.sage.R.color.common_google_signin_btn_text_light, u.sage.R.color.common_google_signin_btn_text_light))));
        if (i == 0) {
            setText(resources.getString(u.sage.R.string.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(u.sage.R.string.common_signin_button_text_long));
        } else {
            if (i != 2) {
                k21.n(di0.q(i, "Unknown button size: "));
                return;
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
