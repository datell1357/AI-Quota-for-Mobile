package defpackage;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class pn4 implements Cloneable {
    public final rn4 n;
    public rn4 o;

    public pn4(rn4 rn4Var) {
        this.n = rn4Var;
        if (rn4Var.g()) {
            k21.f("Default instance must be immutable.");
            throw null;
        }
        this.o = rn4Var.i();
    }

    public static void a(int i, List list) {
        int size = list.size() - i;
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 26);
        sb.append("Element at index ");
        sb.append(size);
        sb.append(" is null.");
        String string = sb.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 < i) {
                throw new NullPointerException(string);
            }
            list.remove(size2);
        }
    }

    public final void b() {
        if (this.o.g()) {
            return;
        }
        rn4 rn4VarI = this.n.i();
        zo4.c.a(rn4VarI.getClass()).b(rn4VarI, this.o);
        this.o = rn4VarI;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final pn4 clone() {
        pn4 pn4Var = (pn4) this.n.s(5);
        boolean zG = this.o.g();
        rn4 rn4Var = this.o;
        if (zG) {
            rn4Var.getClass();
            zo4.c.a(rn4Var.getClass()).h(rn4Var);
            rn4Var.h();
            rn4Var = this.o;
        }
        pn4Var.o = rn4Var;
        return pn4Var;
    }

    public final rn4 d() {
        boolean zG = this.o.g();
        rn4 rn4Var = this.o;
        if (zG) {
            rn4Var.getClass();
            zo4.c.a(rn4Var.getClass()).h(rn4Var);
            rn4Var.h();
            rn4Var = this.o;
        }
        rn4Var.getClass();
        if (rn4.q(rn4Var, true)) {
            return rn4Var;
        }
        throw new hp4();
    }

    public final void e(rn4 rn4Var) {
        rn4 rn4Var2 = this.n;
        if (rn4Var2.equals(rn4Var)) {
            return;
        }
        if (!this.o.g()) {
            rn4 rn4VarI = rn4Var2.i();
            zo4.c.a(rn4VarI.getClass()).b(rn4VarI, this.o);
            this.o = rn4VarI;
        }
        rn4 rn4Var3 = this.o;
        zo4.c.a(rn4Var3.getClass()).b(rn4Var3, rn4Var);
    }

    public final void f(byte[] bArr, int i, kn4 kn4Var) throws fo4 {
        if (!this.o.g()) {
            rn4 rn4VarI = this.n.i();
            zo4.c.a(rn4VarI.getClass()).b(rn4VarI, this.o);
            this.o = rn4VarI;
        }
        try {
            zo4.c.a(this.o.getClass()).e(this.o, bArr, 0, i, new e91(kn4Var));
        } catch (fo4 e) {
            throw e;
        } catch (IOException e2) {
            k21.i("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }
}
