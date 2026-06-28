package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o00 {
    public static final fu3 c = new fu3(new m00());
    public static final n00 d = new n00(0);
    public final /* synthetic */ int a;
    public long b;

    public o00(int i) {
        this.a = i;
        switch (i) {
            case 1:
                this.b = 43200L;
                break;
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                eh ehVar = new eh(o00.class.getSimpleName());
                if (this.b != -1) {
                    String strX = di0.x(new StringBuilder(), this.b, "ns");
                    eh ehVar2 = new eh(22, false);
                    ((eh) ehVar.q).q = ehVar2;
                    ehVar.q = ehVar2;
                    ehVar2.p = strX;
                    ehVar2.o = "expireAfterWrite";
                }
                return ehVar.toString();
            default:
                return super.toString();
        }
    }

    public o00(o00 o00Var) {
        this.a = 2;
        this.b = o00Var.b;
    }
}
