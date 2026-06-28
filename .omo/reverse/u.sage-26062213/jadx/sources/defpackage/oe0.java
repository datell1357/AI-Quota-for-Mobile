package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oe0 implements jb3, fh2 {
    public final jb3 n;
    public final fh2 o;
    public hi0 p;
    public Throwable q;

    public oe0(jb3 jb3Var) {
        hh2 hh2Var = new hh2();
        jb3Var.getClass();
        this.n = jb3Var;
        this.o = hh2Var;
    }

    @Override // defpackage.fh2
    public final void b(Object obj) {
        this.o.b(null);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        this.n.close();
    }

    @Override // defpackage.fh2
    public final Object j(fh0 fh0Var) {
        return this.o.j(fh0Var);
    }

    @Override // defpackage.jb3
    public final pb3 k0(String str) {
        str.getClass();
        return this.n.k0(str);
    }

    public final void r(StringBuilder sb) {
        if (this.p == null && this.q == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
            return;
        }
        sb.append("\t\tStatus: Acquired connection");
        sb.append('\n');
        hi0 hi0Var = this.p;
        if (hi0Var != null) {
            sb.append("\t\tCoroutine: " + hi0Var);
            sb.append('\n');
        }
        Throwable th = this.q;
        if (th != null) {
            sb.append("\t\tAcquired:");
            sb.append('\n');
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            printWriter.flush();
            String string = stringWriter.toString();
            string.getClass();
            Iterator it = o70.f0(zs3.L0(string)).iterator();
            while (it.hasNext()) {
                sb.append("\t\t" + ((String) it.next()));
                sb.append('\n');
            }
        }
    }

    public final String toString() {
        return this.n.toString();
    }
}
