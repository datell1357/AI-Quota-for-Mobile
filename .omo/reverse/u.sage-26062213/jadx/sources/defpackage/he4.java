package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class he4 {
    public static final ke4 b;
    public final ke4 a;

    static {
        int i = Build.VERSION.SDK_INT;
        b = (i >= 36 ? new xd4() : i >= 35 ? new wd4() : i >= 34 ? new vd4() : i >= 31 ? new ud4() : i >= 30 ? new td4() : i >= 29 ? new sd4() : new rd4()).b().a.a().a.b().a.c();
    }

    public he4(ke4 ke4Var) {
        this.a = ke4Var;
    }

    public ke4 a() {
        return this.a;
    }

    public ke4 b() {
        return this.a;
    }

    public ke4 c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof he4)) {
            return false;
        }
        he4 he4Var = (he4) obj;
        return t() == he4Var.t() && s() == he4Var.s() && Objects.equals(n(), he4Var.n()) && Objects.equals(l(), he4Var.l()) && Objects.equals(h(), he4Var.h());
    }

    public List<Rect> f(int i) {
        return Collections.EMPTY_LIST;
    }

    public List<Rect> g(int i) {
        return Collections.EMPTY_LIST;
    }

    public av0 h() {
        return null;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(t()), Boolean.valueOf(s()), n(), l(), h());
    }

    public nr1 i(int i) {
        return nr1.e;
    }

    public nr1 j(int i) {
        if ((i & 8) == 0) {
            return nr1.e;
        }
        k21.f("Unable to query the maximum insets for IME");
        return null;
    }

    public nr1 k() {
        return n();
    }

    public nr1 l() {
        return nr1.e;
    }

    public nr1 m() {
        return n();
    }

    public nr1 n() {
        return nr1.e;
    }

    public nr1 o() {
        return n();
    }

    public ke4 r(int i, int i2, int i3, int i4) {
        return b;
    }

    public boolean s() {
        return false;
    }

    public boolean t() {
        return false;
    }

    public boolean u(int i) {
        return true;
    }

    public void q() {
    }

    public void A(int i) {
    }

    public void B(Rect[][] rectArr) {
    }

    public void C(Rect[][] rectArr) {
    }

    public void d(View view) {
    }

    public void e(ke4 ke4Var) {
    }

    public void p(View view) {
    }

    public void v(cv0 cv0Var) {
    }

    public void w(nr1[] nr1VarArr) {
    }

    public void x(nr1 nr1Var) {
    }

    public void y(ke4 ke4Var) {
    }

    public void z(nr1 nr1Var) {
    }
}
