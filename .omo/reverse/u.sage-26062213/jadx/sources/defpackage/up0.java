package defpackage;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class up0 extends h {
    public final /* synthetic */ int c;

    @Override // defpackage.xj
    public final HashMap a(vm1 vm1Var) {
        switch (this.c) {
            case 0:
                return h.d(vm1Var.getHeaders("Proxy-Authenticate"));
            default:
                return h.d(vm1Var.getHeaders("WWW-Authenticate"));
        }
    }

    @Override // defpackage.xj
    public final boolean b(vm1 vm1Var) {
        switch (this.c) {
            case 0:
                if (vm1Var.b().o == 407) {
                }
                break;
            default:
                if (vm1Var.b().o == 401) {
                }
                break;
        }
        return true;
    }

    @Override // defpackage.h
    public final List c(vm1 vm1Var) {
        int i = this.c;
        List list = h.b;
        switch (i) {
            case 0:
                List list2 = (List) vm1Var.getParams().c("http.auth.proxy-scheme-pref");
                return list2 != null ? list2 : list;
            default:
                List list3 = (List) vm1Var.getParams().c("http.auth.target-scheme-pref");
                return list3 != null ? list3 : list;
        }
    }
}
