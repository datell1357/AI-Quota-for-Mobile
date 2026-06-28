package defpackage;

import android.net.Uri;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ge5 implements qi {
    public final /* synthetic */ int a;
    public final /* synthetic */ bo b;

    public /* synthetic */ ge5(bo boVar, int i) {
        this.a = i;
        this.b = boVar;
    }

    @Override // defpackage.qi
    public final ListenableFuture apply(Object obj) throws IOException {
        ListenableFuture listenableFuture;
        int i = this.a;
        bo boVar = this.b;
        switch (i) {
            case 0:
                synchronized (boVar.i) {
                    listenableFuture = (ListenableFuture) boVar.k;
                    break;
                }
                return listenableFuture;
            case 1:
                return tf1.c(boVar.l((Uri) tf1.b((ListenableFuture) boVar.c)));
            case 2:
                boVar.m((Uri) tf1.b((ListenableFuture) boVar.c), obj);
                return ap1.o;
            default:
                Uri uri = (Uri) obj;
                Uri uriBuild = uri.buildUpon().path(String.valueOf(uri.getPath()).concat(".bak")).build();
                try {
                    gd5 gd5Var = (gd5) boVar.f;
                    ed5 ed5VarB = gd5Var.b(uriBuild);
                    if (ed5VarB.a.b(ed5VarB.d)) {
                        ed5 ed5VarB2 = gd5Var.b(uriBuild);
                        ed5 ed5VarB3 = gd5Var.b(uri);
                        wd5 wd5Var = ed5VarB2.a;
                        if (wd5Var != ed5VarB3.a) {
                            throw new c70("Cannot rename file across backends");
                        }
                        wd5Var.e(ed5VarB2.d, ed5VarB3.d);
                    }
                    return ap1.o;
                } catch (IOException e) {
                    zo1 zo1Var = new zo1();
                    zo1Var.n(e);
                    return zo1Var;
                }
        }
    }
}
