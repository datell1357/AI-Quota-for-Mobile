package defpackage;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class be4 extends ae4 {
    public be4(ke4 ke4Var, WindowInsets windowInsets) {
        super(ke4Var, windowInsets);
    }

    @Override // defpackage.he4
    public ke4 a() {
        return ke4.c(null, this.c.consumeDisplayCutout());
    }

    @Override // defpackage.zd4, defpackage.he4
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof be4)) {
            return false;
        }
        be4 be4Var = (be4) obj;
        return Objects.equals(this.c, be4Var.c) && Objects.equals(this.g, be4Var.g) && zd4.M(this.h, be4Var.h);
    }

    @Override // defpackage.he4
    public av0 h() {
        DisplayCutout displayCutout = this.c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new av0(displayCutout);
    }

    @Override // defpackage.he4
    public int hashCode() {
        return this.c.hashCode();
    }

    public be4(ke4 ke4Var, be4 be4Var) {
        super(ke4Var, be4Var);
    }
}
