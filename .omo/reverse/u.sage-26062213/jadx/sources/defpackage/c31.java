package defpackage;

import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c31 implements h34, Cloneable {
    public static final c31 p = new c31();
    public final List n;
    public final List o;

    public c31() {
        List list = Collections.EMPTY_LIST;
        this.n = list;
        this.o = list;
    }

    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        Class cls = q44Var.a;
        boolean zB = b(cls, true);
        boolean zB2 = b(cls, false);
        if (zB || zB2) {
            return new b31(this, zB2, zB, pi1Var, q44Var);
        }
        return null;
    }

    public final boolean b(Class cls, boolean z) {
        if (!z && !Enum.class.isAssignableFrom(cls)) {
            nt1 nt1Var = c43.a;
            if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        Iterator it = (z ? this.n : this.o).iterator();
        if (!it.hasNext()) {
            return false;
        }
        it.next().getClass();
        mk0.b();
        return false;
    }

    public final Object clone() {
        try {
            return (c31) super.clone();
        } catch (CloneNotSupportedException e) {
            k21.c(e);
            return null;
        }
    }
}
