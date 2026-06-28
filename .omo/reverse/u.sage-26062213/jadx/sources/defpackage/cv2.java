package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cv2 implements as0 {
    public boolean n;

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(cv2 cv2Var, dv2 dv2Var) {
        cv2Var.getClass();
        if (dv2Var instanceof de2) {
            ((de2) dv2Var).m(cv2Var.n);
        }
    }

    public static void h(cv2 cv2Var, dv2 dv2Var, int i, int i2) {
        cv2Var.getClass();
        a(cv2Var, dv2Var);
        dv2Var.d0(js1.c((((long) i2) & 4294967295L) | (((long) i) << 32), dv2Var.r), 0.0f, null);
    }

    public static void i(cv2 cv2Var, dv2 dv2Var, long j) {
        cv2Var.getClass();
        a(cv2Var, dv2Var);
        dv2Var.d0(js1.c(j, dv2Var.r), 0.0f, null);
    }

    public static void j(cv2 cv2Var, dv2 dv2Var, int i, int i2) {
        long j = (((long) i) << 32) | (((long) i2) & 4294967295L);
        if (cv2Var.e() == hy1.n || cv2Var.g() == 0) {
            a(cv2Var, dv2Var);
            dv2Var.d0(js1.c(j, dv2Var.r), 0.0f, null);
        } else {
            int iG = (cv2Var.g() - dv2Var.n) - ((int) (j >> 32));
            a(cv2Var, dv2Var);
            dv2Var.d0(js1.c((((long) iG) << 32) | (((long) ((int) (j & 4294967295L))) & 4294967295L), dv2Var.r), 0.0f, null);
        }
    }

    public static void l(cv2 cv2Var, dv2 dv2Var, int i, int i2) {
        int i3 = ev2.b;
        do2 do2Var = do2.x;
        long j = (((long) i) << 32) | (((long) i2) & 4294967295L);
        if (cv2Var.e() == hy1.n || cv2Var.g() == 0) {
            a(cv2Var, dv2Var);
            dv2Var.d0(js1.c(j, dv2Var.r), 0.0f, do2Var);
        } else {
            int iG = (cv2Var.g() - dv2Var.n) - ((int) (j >> 32));
            a(cv2Var, dv2Var);
            dv2Var.d0(js1.c((((long) iG) << 32) | (((long) ((int) (j & 4294967295L))) & 4294967295L), dv2Var.r), 0.0f, do2Var);
        }
    }

    public static void m(cv2 cv2Var, dv2 dv2Var, pe1 pe1Var) {
        cv2Var.getClass();
        a(cv2Var, dv2Var);
        dv2Var.d0(js1.c(0L, dv2Var.r), 0.0f, pe1Var);
    }

    public float c(ek1 ek1Var) {
        return Float.NaN;
    }

    public abstract hy1 e();

    public abstract int g();
}
