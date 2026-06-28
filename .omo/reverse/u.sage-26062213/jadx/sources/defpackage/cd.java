package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cd {
    public static final bx3 a = new bx3(11);

    public static final void a(pb4 pb4Var, xy1 xy1Var) {
        long J = ((gr1) xy1Var.S.d).J(0L);
        int iRound = Math.round(Float.intBitsToFloat((int) (J >> 32)));
        int iRound2 = Math.round(Float.intBitsToFloat((int) (J & 4294967295L)));
        pb4Var.layout(iRound, iRound2, pb4Var.getMeasuredWidth() + iRound, pb4Var.getMeasuredHeight() + iRound2);
    }
}
