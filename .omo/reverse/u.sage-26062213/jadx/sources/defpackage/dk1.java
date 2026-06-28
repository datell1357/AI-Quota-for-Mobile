package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dk1 extends xx1 implements df1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ ek1[] p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dk1(ek1[] ek1VarArr, int i) {
        super(2);
        this.o = i;
        this.p = ek1VarArr;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        ek1[] ek1VarArr = this.p;
        switch (i) {
            case 0:
                return Float.valueOf(w80.f((cv2) obj, true, ek1VarArr, ((Number) obj2).floatValue()));
            default:
                return Float.valueOf(w80.f((cv2) obj, false, ek1VarArr, ((Number) obj2).floatValue()));
        }
    }
}
