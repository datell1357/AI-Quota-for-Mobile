package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fk1 implements jl3 {
    public static final fk1 b = new fk1(0);
    public static final fk1 c = new fk1(1);
    public final /* synthetic */ int a;

    public /* synthetic */ fk1(int i) {
        this.a = i;
    }

    @Override // defpackage.jl3
    public final fl4 a(long j, hy1 hy1Var, as0 as0Var) {
        switch (this.a) {
            case 0:
                float fN = as0Var.N(30.0f);
                return new lr2(new l33(0.0f, -fN, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)) + fN));
            case 1:
                float fN2 = as0Var.N(30.0f);
                return new lr2(new l33(-fN2, 0.0f, Float.intBitsToFloat((int) (j >> 32)) + fN2, Float.intBitsToFloat((int) (j & 4294967295L))));
            default:
                return new lr2(qn0.d(0L, j));
        }
    }

    public String toString() {
        switch (this.a) {
            case 2:
                return "RectangleShape";
            default:
                return super.toString();
        }
    }
}
