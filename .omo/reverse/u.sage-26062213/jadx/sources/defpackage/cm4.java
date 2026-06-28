package defpackage;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cm4 extends b70 {
    public static final Map q;
    public final yg5 p;

    static {
        EnumMap enumMap = new EnumMap(yg5.class);
        for (yg5 yg5Var : yg5.values()) {
            cm4[] cm4VarArr = new cm4[10];
            for (int i = 0; i < 10; i++) {
                cm4VarArr[i] = new cm4(i, yg5Var, zg5.e);
            }
            enumMap.put(yg5Var, cm4VarArr);
        }
        q = Collections.unmodifiableMap(enumMap);
    }

    public cm4(int i, yg5 yg5Var, zg5 zg5Var) {
        super(zg5Var, i);
        hm4.a(yg5Var, "format char");
        this.p = yg5Var;
        if (zg5Var.a()) {
            return;
        }
        int i2 = yg5Var.n;
        i2 = zg5Var.c() ? i2 & 65503 : i2;
        StringBuilder sb = new StringBuilder("%");
        zg5Var.d(sb);
        sb.append((char) i2);
    }

    @Override // defpackage.b70
    public final void L(tz0 tz0Var, Object obj) {
        tz0Var.e(obj, this.p, (zg5) this.o);
    }
}
