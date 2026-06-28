package defpackage;

import android.graphics.Rect;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class yd4 {
    public final ke4 a;
    public nr1[] b;
    public final Rect[][] c;
    public final Rect[][] d;

    public yd4(ke4 ke4Var) {
        this.c = new Rect[10][];
        this.d = new Rect[10][];
        this.a = ke4Var;
        c(ke4Var);
    }

    public final void a() {
        nr1[] nr1VarArr = this.b;
        if (nr1VarArr != null) {
            nr1 nr1VarI = nr1VarArr[0];
            nr1 nr1VarI2 = nr1VarArr[1];
            ke4 ke4Var = this.a;
            if (nr1VarI2 == null) {
                nr1VarI2 = ke4Var.a.i(2);
            }
            if (nr1VarI == null) {
                nr1VarI = ke4Var.a.i(1);
            }
            h(nr1.a(nr1VarI, nr1VarI2));
            nr1 nr1Var = this.b[zf5.L(16)];
            if (nr1Var != null) {
                g(nr1Var);
            }
            nr1 nr1Var2 = this.b[zf5.L(32)];
            if (nr1Var2 != null) {
                e(nr1Var2);
            }
            nr1 nr1Var3 = this.b[zf5.L(64)];
            if (nr1Var3 != null) {
                i(nr1Var3);
            }
        }
    }

    public abstract ke4 b();

    public void c(ke4 ke4Var) {
        for (int i = 1; i <= 512; i <<= 1) {
            List<Rect> listF = ke4Var.a.f(i);
            int iL = zf5.L(i);
            this.c[iL] = (Rect[]) listF.toArray(new Rect[listF.size()]);
            if (i != 8) {
                List<Rect> listG = ke4Var.a.g(i);
                this.d[iL] = (Rect[]) listG.toArray(new Rect[listG.size()]);
            }
        }
    }

    public void d(int i, nr1 nr1Var) {
        if (this.b == null) {
            this.b = new nr1[10];
        }
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                this.b[zf5.L(i2)] = nr1Var;
            }
        }
    }

    public abstract void f(nr1 nr1Var);

    public abstract void h(nr1 nr1Var);

    public yd4() {
        this(new ke4((ke4) null));
    }

    public void e(nr1 nr1Var) {
    }

    public void g(nr1 nr1Var) {
    }

    public void i(nr1 nr1Var) {
    }
}
