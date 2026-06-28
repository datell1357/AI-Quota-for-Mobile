package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lj2 extends pj2 {
    public final Class l;

    public lj2(Class cls) {
        super(cls, 0);
        if (cls.isEnum()) {
            this.l = cls;
        } else {
            p61.g(cls, " is not an Enum type.");
            throw null;
        }
    }

    @Override // defpackage.pj2, defpackage.qj2
    public final String b() {
        return this.l.getName();
    }

    @Override // defpackage.pj2
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final Enum d(String str) {
        Object obj;
        Class cls = this.l;
        Object[] enumConstants = cls.getEnumConstants();
        enumConstants.getClass();
        int length = enumConstants.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                obj = null;
                break;
            }
            obj = enumConstants[i];
            if (gt3.s0(((Enum) obj).name(), str, true)) {
                break;
            }
            i++;
        }
        Enum r3 = (Enum) obj;
        if (r3 != null) {
            return r3;
        }
        StringBuilder sbA = di0.A("Enum value ", str, " not found for type ");
        sbA.append(cls.getName());
        sbA.append('.');
        throw new IllegalArgumentException(sbA.toString());
    }
}
