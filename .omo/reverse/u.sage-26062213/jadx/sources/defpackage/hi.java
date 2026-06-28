package defpackage;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hi extends g34 {
    public static final gi c = new gi();
    public final Class a;
    public final ou1 b;

    public hi(pi1 pi1Var, g34 g34Var, Class cls) {
        this.b = new ou1(pi1Var, g34Var, cls, 2);
        this.a = cls;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ww1Var.b();
        while (ww1Var.L()) {
            arrayList.add(this.b.c.b(ww1Var));
        }
        ww1Var.A();
        int size = arrayList.size();
        Class cls = this.a;
        if (!cls.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
        }
        Object objNewInstance = Array.newInstance((Class<?>) cls, size);
        for (int i = 0; i < size; i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        if (obj == null) {
            bx1Var.L();
            return;
        }
        bx1Var.j();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.c(bx1Var, Array.get(obj, i));
        }
        bx1Var.A();
    }
}
