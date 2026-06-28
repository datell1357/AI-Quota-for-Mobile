package defpackage;

import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cr3 extends g34 {
    public static final br3 b = new br3();
    public final g34 a;

    public cr3(g34 g34Var) {
        this.a = g34Var;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        Date date = (Date) this.a.b(ww1Var);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) {
        this.a.c(bx1Var, (Timestamp) obj);
    }
}
