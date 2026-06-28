package defpackage;

import java.io.IOException;
import java.util.LinkedList;
import java.util.ListIterator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xa3 {
    public final ym1 b;
    public final int c;
    public final qd0 d;
    public final Log a = LogFactory.getLog(xa3.class);
    public final LinkedList e = new LinkedList();
    public final LinkedList f = new LinkedList();
    public int g = 0;

    public xa3(ym1 ym1Var, qd0 qd0Var) {
        this.b = ym1Var;
        this.d = qd0Var;
        this.c = qd0Var.a(ym1Var);
    }

    public final fv a(Object obj) {
        if (!this.e.isEmpty()) {
            LinkedList linkedList = this.e;
            ListIterator listIterator = linkedList.listIterator(linkedList.size());
            while (listIterator.hasPrevious()) {
                fv fvVar = (fv) listIterator.previous();
                if (fvVar.d == null || c75.A(obj, fvVar.d)) {
                    listIterator.remove();
                    return fvVar;
                }
            }
        }
        if (this.d.a(this.b) - this.g != 0 || this.e.isEmpty()) {
            return null;
        }
        fv fvVar2 = (fv) this.e.remove();
        fvVar2.e = null;
        fvVar2.d = null;
        try {
            fvVar2.b.close();
            return fvVar2;
        } catch (IOException e) {
            this.a.debug("I/O error closing connection", e);
            return fvVar2;
        }
    }
}
