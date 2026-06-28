package defpackage;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class r51 implements Closeable {
    public static final dx1 n;
    public static final bt2 o;

    static {
        dx1 dx1Var;
        try {
            Class.forName("java.nio.file.Files");
            dx1Var = new dm2();
        } catch (ClassNotFoundException unused) {
            dx1Var = new dx1();
        }
        n = dx1Var;
        String str = bt2.o;
        String property = System.getProperty("java.io.tmpdir");
        property.getClass();
        o = qz0.k(property);
        ClassLoader classLoader = l73.class.getClassLoader();
        classLoader.getClass();
        new l73(classLoader);
    }

    public final void A(bt2 bt2Var) {
        bt2Var.getClass();
        z(bt2Var);
    }

    public final boolean B(bt2 bt2Var) {
        bt2Var.getClass();
        return L(bt2Var) != null;
    }

    public abstract List F(bt2 bt2Var);

    public final i51 K(bt2 bt2Var) throws FileNotFoundException {
        bt2Var.getClass();
        i51 i51VarL = L(bt2Var);
        if (i51VarL != null) {
            return i51VarL;
        }
        mk0.l(bt2Var, "no such file: ");
        return null;
    }

    public abstract i51 L(bt2 bt2Var);

    public abstract cx1 N(bt2 bt2Var);

    public abstract kn3 R(bt2 bt2Var, boolean z);

    public abstract yp3 V(bt2 bt2Var);

    public abstract kn3 b(bt2 bt2Var);

    public abstract void j(bt2 bt2Var, bt2 bt2Var2);

    public abstract void r(bt2 bt2Var);

    public abstract void z(bt2 bt2Var);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
