package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fo0 extends bx3 {
    public static final fo0 t = new fo0(25);

    @Override // defpackage.bx3, defpackage.ie0
    public final boolean h(vm1 vm1Var, ul1 ul1Var) {
        om1 om1Var = (om1) ul1Var.b("http.request");
        if (om1Var != null) {
            gj1[] headers = om1Var.getHeaders("Connection");
            if (headers.length != 0) {
                ov ovVar = new ov(new tu(headers));
                while (ovVar.hasNext()) {
                    if ("Close".equalsIgnoreCase(ovVar.d())) {
                        return false;
                    }
                }
            }
        }
        return super.h(vm1Var, ul1Var);
    }
}
