package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class iy3 {
    public static final sg0 a = new sg0("NO_THREAD_ELEMENTS", 3);
    public static final ed3 b = new ed3(19);
    public static final ed3 c = new ed3(20);
    public static final ed3 d = new ed3(21);

    public static final void a(hi0 hi0Var, Object obj) {
        if (obj == a) {
            return;
        }
        if (!(obj instanceof sy3)) {
            Object objR = hi0Var.R(c, null);
            objR.getClass();
            ((ly3) objR).a(obj);
            return;
        }
        sy3 sy3Var = (sy3) obj;
        ly3[] ly3VarArr = sy3Var.c;
        int length = ly3VarArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            ly3 ly3Var = ly3VarArr[length];
            ly3Var.getClass();
            ly3Var.a(sy3Var.b[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }

    public static final Object b(hi0 hi0Var) {
        Object objR = hi0Var.R(b, 0);
        objR.getClass();
        return objR;
    }

    public static final Object c(hi0 hi0Var, Object obj) {
        if (obj == null) {
            obj = b(hi0Var);
        }
        if (obj == 0) {
            return a;
        }
        if (!(obj instanceof Integer)) {
            return ((ly3) obj).c();
        }
        return hi0Var.R(d, new sy3(((Number) obj).intValue(), hi0Var));
    }
}
