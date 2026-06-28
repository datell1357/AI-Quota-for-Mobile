package defpackage;

import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import java.io.IOException;
import java.util.NoSuchElementException;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p61 implements aa0, wt3, sm3, f6, xq0 {
    public final /* synthetic */ int n;

    public /* synthetic */ p61(int i) {
        this.n = i;
    }

    public static /* synthetic */ void b() {
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void d(int i, String str) {
        throw new IllegalStateException(str + i);
    }

    public static /* synthetic */ void e(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void g(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void h(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void k(String str) throws IOException {
        throw new IOException(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void l(String str, Object obj, int i) {
        throw new IllegalArgumentException((str + obj + ((char) i)).toString());
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void n(String str, Object obj, Object obj2, Object obj3, int i) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + ((char) i)).toString());
    }

    public static /* synthetic */ void o(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void p(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void q() {
        throw new v00(6);
    }

    public static /* synthetic */ void r(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void s(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void t(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    public static /* synthetic */ void u(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void v() {
        throw new NoSuchElementException();
    }

    public static /* synthetic */ void w(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void x() {
        throw new v00(7);
    }

    public static /* synthetic */ void y(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    @Override // defpackage.sm3
    public boolean c() {
        return false;
    }

    @Override // defpackage.f6
    public void f(Object obj) {
        e6 e6Var = (e6) obj;
        int i = MainActivity.C;
        e6Var.getClass();
        if (e6Var.n == -1) {
            ez3.a.getClass();
            ra3.l(new Object[0]);
        } else {
            ez3.a.getClass();
            ra3.l(new Object[0]);
        }
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        switch (this.n) {
            case 0:
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(hgVar);
            case 4:
                return FirebaseSessionsRegistrar.getComponents$lambda$0(hgVar);
            default:
                return FirebaseSessionsRegistrar.getComponents$lambda$1(hgVar);
        }
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        switch (this.n) {
            case 1:
                break;
            default:
                break;
        }
        return mt1.t(null);
    }

    @Override // defpackage.xq0
    public void a(n03 n03Var) {
    }
}
