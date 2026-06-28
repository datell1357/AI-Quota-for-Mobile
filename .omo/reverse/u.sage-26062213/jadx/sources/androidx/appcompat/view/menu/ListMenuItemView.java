package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import defpackage.i13;
import defpackage.kc2;
import defpackage.ub2;
import defpackage.ui3;
import defpackage.zb2;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements kc2, AbsListView.SelectionBoundsAdjuster {
    public final Drawable A;
    public final boolean B;
    public LayoutInflater C;
    public boolean D;
    public zb2 n;
    public ImageView o;
    public RadioButton p;
    public TextView q;
    public CheckBox r;
    public TextView s;
    public ImageView t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ImageView f12u;
    public LinearLayout v;
    public final Drawable w;
    public final int x;
    public final Context y;
    public boolean z;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ui3 ui3VarH = ui3.h(getContext(), attributeSet, i13.n, R.attr.listMenuViewStyle);
        this.w = ui3VarH.e(5);
        TypedArray typedArray = (TypedArray) ui3VarH.p;
        this.x = typedArray.getResourceId(1, -1);
        this.z = typedArray.getBoolean(7, false);
        this.y = context;
        this.A = ui3VarH.e(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.B = typedArrayObtainStyledAttributes.hasValue(0);
        ui3VarH.j();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.C == null) {
            this.C = LayoutInflater.from(getContext());
        }
        return this.C;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.t;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    @Override // defpackage.kc2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(defpackage.zb2 r11) {
        /*
            Method dump skipped, instruction units count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.a(zb2):void");
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f12u;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f12u.getLayoutParams();
        rect.top = this.f12u.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    @Override // defpackage.kc2
    public zb2 getItemData() {
        return this.n;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.w);
        TextView textView = (TextView) findViewById(R.id.title);
        this.q = textView;
        int i = this.x;
        if (i != -1) {
            textView.setTextAppearance(this.y, i);
        }
        this.s = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.t = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.A);
        }
        this.f12u = (ImageView) findViewById(R.id.group_divider);
        this.v = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.o != null && this.z) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.o.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.p == null && this.r == null) {
            return;
        }
        if ((this.n.x & 4) != 0) {
            if (this.p == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.p = radioButton;
                LinearLayout linearLayout = this.v;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.p;
            view = this.r;
        } else {
            if (this.r == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.r = checkBox;
                LinearLayout linearLayout2 = this.v;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.r;
            view = this.p;
        }
        if (z) {
            compoundButton.setChecked(this.n.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.r;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.p;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.n.x & 4) != 0) {
            if (this.p == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.p = radioButton;
                LinearLayout linearLayout = this.v;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.p;
        } else {
            if (this.r == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.r = checkBox;
                LinearLayout linearLayout2 = this.v;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.r;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.D = z;
        this.z = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f12u;
        if (imageView != null) {
            imageView.setVisibility((this.B || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        ub2 ub2Var = this.n.n;
        boolean z = this.D;
        if (z || this.z) {
            ImageView imageView = this.o;
            if (imageView == null && drawable == null && !this.z) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.o = imageView2;
                LinearLayout linearLayout = this.v;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.z) {
                this.o.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.o;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.o.getVisibility() != 0) {
                this.o.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        TextView textView = this.q;
        if (charSequence == null) {
            if (textView.getVisibility() != 8) {
                this.q.setVisibility(8);
            }
        } else {
            textView.setText(charSequence);
            if (this.q.getVisibility() != 0) {
                this.q.setVisibility(0);
            }
        }
    }
}
