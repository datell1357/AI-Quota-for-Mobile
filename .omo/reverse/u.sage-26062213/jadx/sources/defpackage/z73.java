package defpackage;

import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z73 implements wm1 {
    public final r82 n;
    public final boolean o;

    public z73() {
        HashMap map = new HashMap();
        gr0 gr0Var = gr0.c;
        w80.H("gzip", "ID");
        Locale locale = Locale.ROOT;
        map.put("gzip".toLowerCase(locale), gr0Var);
        w80.H("x-gzip", "ID");
        map.put("x-gzip".toLowerCase(locale), gr0Var);
        gr0 gr0Var2 = gr0.b;
        w80.H("deflate", "ID");
        map.put("deflate".toLowerCase(locale), gr0Var2);
        this.n = new y43(map);
        this.o = true;
    }

    @Override // defpackage.wm1
    public final void b(vm1 vm1Var, ul1 ul1Var) throws cm1 {
        gj1 contentEncoding;
        xl1 entity = vm1Var.getEntity();
        rl1.c(ul1Var).d();
        if (entity == null || entity.getContentLength() == 0 || (contentEncoding = entity.getContentEncoding()) == null) {
            return;
        }
        for (ru ruVar : contentEncoding.a()) {
            String lowerCase = ruVar.n.toLowerCase(Locale.ROOT);
            gr0 gr0Var = (gr0) this.n.a(lowerCase);
            if (gr0Var != null) {
                vm1Var.setEntity(new xn0(vm1Var.getEntity(), gr0Var));
                vm1Var.removeHeaders("Content-Length");
                vm1Var.removeHeaders("Content-Encoding");
                vm1Var.removeHeaders("Content-MD5");
            } else if (!"identity".equals(lowerCase) && !this.o) {
                throw new cm1(cm1.a("Unsupported Content-Encoding: " + ruVar.n));
            }
        }
    }
}
