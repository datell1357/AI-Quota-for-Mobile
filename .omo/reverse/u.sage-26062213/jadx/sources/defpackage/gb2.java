package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface gb2 extends jt1 {
    eb2 L(int i, int i2, Map map, pe1 pe1Var, pe1 pe1Var2);

    default eb2 W(int i, int i2, c8 c8Var, z zVar, Map map, e9 e9Var) {
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            ar1.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new fb2(i, i2, map, c8Var, zVar, this, e9Var);
    }

    default eb2 e0(int i, int i2, Map map, pe1 pe1Var) {
        return L(i, i2, map, null, pe1Var);
    }
}
