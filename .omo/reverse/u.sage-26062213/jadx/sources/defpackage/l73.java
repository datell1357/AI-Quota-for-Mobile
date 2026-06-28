package defpackage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l73 extends r51 {
    public static final bt2 s;
    public final ClassLoader p;
    public final r51 q;
    public final nv3 r;

    static {
        String str = bt2.o;
        s = qz0.k("/");
    }

    public l73(ClassLoader classLoader) {
        dx1 dx1Var = r51.n;
        dx1Var.getClass();
        this.p = classLoader;
        this.q = dx1Var;
        this.r = new nv3(new cc(26, this));
    }

    @Override // defpackage.r51
    public final List F(bt2 bt2Var) throws FileNotFoundException {
        bt2 bt2Var2 = s;
        bt2Var2.getClass();
        String strQ = c.b(bt2Var2, bt2Var, true).d(bt2Var2).n.q();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (js2 js2Var : (List) this.r.getValue()) {
            r51 r51Var = (r51) js2Var.n;
            bt2 bt2Var3 = (bt2) js2Var.o;
            try {
                List listF = r51Var.F(bt2Var3.e(strQ));
                ArrayList arrayList = new ArrayList();
                for (Object obj : listF) {
                    if (qz0.a((bt2) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(p70.a0(arrayList, 10));
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    bt2 bt2Var4 = (bt2) obj2;
                    bt2Var4.getClass();
                    String strReplace = zs3.O0(bt2Var4.n.q(), bt2Var3.n.q()).replace('\\', '/');
                    strReplace.getClass();
                    arrayList2.add(bt2Var2.e(strReplace));
                }
                o70.d0(arrayList2, linkedHashSet);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return o70.C0(linkedHashSet);
        }
        mk0.l(bt2Var, "file not found: ");
        return null;
    }

    @Override // defpackage.r51
    public final i51 L(bt2 bt2Var) {
        bt2Var.getClass();
        if (!qz0.a(bt2Var)) {
            return null;
        }
        bt2 bt2Var2 = s;
        bt2Var2.getClass();
        String strQ = c.b(bt2Var2, bt2Var, true).d(bt2Var2).n.q();
        for (js2 js2Var : (List) this.r.getValue()) {
            i51 i51VarL = ((r51) js2Var.n).L(((bt2) js2Var.o).e(strQ));
            if (i51VarL != null) {
                return i51VarL;
            }
        }
        return null;
    }

    @Override // defpackage.r51
    public final cx1 N(bt2 bt2Var) throws FileNotFoundException {
        if (!qz0.a(bt2Var)) {
            mk0.l(bt2Var, "file not found: ");
            return null;
        }
        bt2 bt2Var2 = s;
        bt2Var2.getClass();
        String strQ = c.b(bt2Var2, bt2Var, true).d(bt2Var2).n.q();
        Iterator it = ((List) this.r.getValue()).iterator();
        while (it.hasNext()) {
            js2 js2Var = (js2) it.next();
            try {
                return ((r51) js2Var.n).N(((bt2) js2Var.o).e(strQ));
            } catch (FileNotFoundException unused) {
            }
        }
        mk0.l(bt2Var, "file not found: ");
        return null;
    }

    @Override // defpackage.r51
    public final kn3 R(bt2 bt2Var, boolean z) throws IOException {
        bt2Var.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.r51
    public final yp3 V(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        if (!qz0.a(bt2Var)) {
            mk0.l(bt2Var, "file not found: ");
            return null;
        }
        bt2 bt2Var2 = s;
        bt2Var2.getClass();
        URL resource = this.p.getResource(c.b(bt2Var2, bt2Var, false).d(bt2Var2).n.q());
        if (resource == null) {
            mk0.l(bt2Var, "file not found: ");
            return null;
        }
        URLConnection uRLConnectionOpenConnection = resource.openConnection();
        if (uRLConnectionOpenConnection instanceof JarURLConnection) {
            ((JarURLConnection) uRLConnectionOpenConnection).setUseCaches(false);
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        inputStream.getClass();
        return se0.E(inputStream);
    }

    @Override // defpackage.r51
    public final kn3 b(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.r51
    public final void j(bt2 bt2Var, bt2 bt2Var2) throws IOException {
        bt2Var.getClass();
        bt2Var2.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.r51
    public final void r(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.r51
    public final void z(bt2 bt2Var) throws IOException {
        bt2Var.getClass();
        throw new IOException(this + " is read-only");
    }
}
