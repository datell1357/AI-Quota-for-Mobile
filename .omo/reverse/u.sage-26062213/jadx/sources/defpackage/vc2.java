package defpackage;

import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vc2 {
    public final xh1 a;
    public final eh b;
    public final HashMap c;

    public vc2(Context context, eh ehVar) {
        xh1 xh1Var = new xh1(context, 4);
        this.c = new HashMap();
        this.a = xh1Var;
        this.b = ehVar;
    }

    public final synchronized v14 a(String str) {
        if (this.c.containsKey(str)) {
            return (v14) this.c.get(str);
        }
        CctBackendFactory cctBackendFactoryN = this.a.n(str);
        if (cctBackendFactoryN == null) {
            return null;
        }
        eh ehVar = this.b;
        v14 v14VarCreate = cctBackendFactoryN.create(new yn((Context) ehVar.q, (pr3) ehVar.o, (pr3) ehVar.p, str));
        this.c.put(str, v14VarCreate);
        return v14VarCreate;
    }
}
