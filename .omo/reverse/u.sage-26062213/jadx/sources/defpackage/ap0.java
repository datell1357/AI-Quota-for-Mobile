package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ap0 extends c1 {
    public static void setDefaultHttpParams(km1 km1Var) {
        dn1 dn1Var = dn1.s;
        w80.L(km1Var, "HTTP parameters");
        km1Var.a(dn1Var, "http.protocol.version");
        km1Var.a(vi1.a.name(), "http.protocol.content-charset");
        f1 f1Var = (f1) km1Var;
        f1Var.a(Boolean.TRUE, "http.tcp.nodelay");
        f1Var.a(8192, "http.socket.buffer-size");
        km1Var.a(rp.j(ap0.class), "http.useragent");
    }

    @Override // defpackage.c1
    public km1 createHttpParams() {
        kv3 kv3Var = new kv3();
        setDefaultHttpParams(kv3Var);
        return kv3Var;
    }

    @Override // defpackage.c1
    public yu createHttpProcessor() {
        yu yuVar = new yu();
        yuVar.c(new w63(1));
        yuVar.c(new w63(0));
        yuVar.c(new w63(4));
        yuVar.c(new t63());
        yuVar.c(new m63(null));
        yuVar.c(new w63(2));
        yuVar.c(new n63());
        yuVar.o.add(new b83());
        yuVar.c(new o63());
        yuVar.c(new f73());
        yuVar.c(new e73());
        return yuVar;
    }
}
