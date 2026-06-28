package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sb {
    public final Path a;
    public RectF b;
    public float[] c;
    public Matrix d;

    public sb(Path path) {
        this.a = path;
    }

    public static void a(sb sbVar, sb sbVar2) {
        Path path = sbVar.a;
        if (sbVar2 instanceof sb) {
            path.addPath(sbVar2.a, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
        } else {
            p61.s("Unable to obtain android.graphics.Path");
        }
    }

    public static void b(sb sbVar, ka3 ka3Var) {
        if (sbVar.b == null) {
            sbVar.b = new RectF();
        }
        RectF rectF = sbVar.b;
        rectF.getClass();
        float f = ka3Var.a;
        long j = ka3Var.h;
        long j2 = ka3Var.g;
        long j3 = ka3Var.f;
        long j4 = ka3Var.e;
        rectF.set(f, ka3Var.b, ka3Var.c, ka3Var.d);
        if (sbVar.c == null) {
            sbVar.c = new float[8];
        }
        float[] fArr = sbVar.c;
        fArr.getClass();
        fArr[0] = Float.intBitsToFloat((int) (j4 >> 32));
        fArr[1] = Float.intBitsToFloat((int) (j4 & 4294967295L));
        fArr[2] = Float.intBitsToFloat((int) (j3 >> 32));
        fArr[3] = Float.intBitsToFloat((int) (j3 & 4294967295L));
        fArr[4] = Float.intBitsToFloat((int) (j2 >> 32));
        fArr[5] = Float.intBitsToFloat((int) (j2 & 4294967295L));
        fArr[6] = Float.intBitsToFloat((int) (j >> 32));
        fArr[7] = Float.intBitsToFloat((int) (j & 4294967295L));
        Path path = sbVar.a;
        RectF rectF2 = sbVar.b;
        rectF2.getClass();
        float[] fArr2 = sbVar.c;
        fArr2.getClass();
        path.addRoundRect(rectF2, fArr2, Path.Direction.CCW);
    }

    public final l33 c() {
        if (this.b == null) {
            this.b = new RectF();
        }
        RectF rectF = this.b;
        rectF.getClass();
        this.a.computeBounds(rectF, true);
        return new l33(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public final boolean d(sb sbVar, sb sbVar2, int i) {
        Path.Op op = i == 0 ? Path.Op.DIFFERENCE : i == 1 ? Path.Op.INTERSECT : i == 4 ? Path.Op.REVERSE_DIFFERENCE : i == 2 ? Path.Op.UNION : Path.Op.XOR;
        if (!(sbVar instanceof sb)) {
            p61.s("Unable to obtain android.graphics.Path");
            return false;
        }
        Path path = sbVar.a;
        if (sbVar2 instanceof sb) {
            return this.a.op(path, sbVar2.a, op);
        }
        p61.s("Unable to obtain android.graphics.Path");
        return false;
    }

    public final void e() {
        this.a.reset();
    }
}
