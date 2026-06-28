package defpackage;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class l13 extends oj implements Serializable {
    public final HashMap o = new HashMap();
    public final transient Charset p;

    public l13(Charset charset) {
        this.p = charset == null ? uf0.b : charset;
    }

    @Override // defpackage.oj
    public final String c() {
        return j("realm");
    }

    @Override // defpackage.oj
    public final void h(b40 b40Var, int i, int i2) {
        uu uuVar = uu.a;
        ru[] ruVarArrA = uu.a(b40Var, new ky0(i, b40Var.o));
        HashMap map = this.o;
        map.clear();
        for (ru ruVar : ruVarArrA) {
            map.put(ruVar.n.toLowerCase(Locale.ROOT), ruVar.o);
        }
    }

    public final String j(String str) {
        return (String) this.o.get(str.toLowerCase(Locale.ROOT));
    }
}
