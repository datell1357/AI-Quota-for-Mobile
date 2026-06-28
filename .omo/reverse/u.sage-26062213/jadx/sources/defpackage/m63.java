package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m63 implements rm1 {
    public final /* synthetic */ int n;
    public final String o;

    public m63() {
        this.n = 0;
        this.o = "gzip,deflate";
    }

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        int i = this.n;
        String str = this.o;
        switch (i) {
            case 0:
                rl1.c(ul1Var).d();
                if (!om1Var.containsHeader("Accept-Encoding")) {
                    om1Var.addHeader("Accept-Encoding", str);
                }
                break;
            default:
                if (!om1Var.containsHeader("User-Agent")) {
                    km1 params = om1Var.getParams();
                    String str2 = params != null ? (String) params.c("http.useragent") : null;
                    if (str2 != null) {
                        str = str2;
                    }
                    if (str != null) {
                        om1Var.addHeader("User-Agent", str);
                    }
                }
                break;
        }
    }

    public m63(String str) {
        this.n = 1;
        this.o = str;
    }
}
