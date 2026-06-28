package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bb5 implements qi {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ bb5(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qi
    public final ListenableFuture apply(Object obj) throws IOException {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                qb5 qb5Var = (qb5) obj2;
                int i2 = ((t85) obj).n;
                if ((i2 == 29501 || i2 == 29537 || i2 == 29538 || i2 == 29539 || i2 == 29540 || i2 == 29541 || i2 == 29542 || i2 == 29543 || i2 == 29544) && !qb5Var.h.p()) {
                    qb5Var.b();
                }
                return ap1.o;
            case 1:
                ui3 ui3Var = (ui3) obj2;
                ui3Var.getClass();
                t45 t45Var = new t45(ui3Var, (rc5) obj);
                wd2 wd2VarA = ((o75) ui3Var.o).a();
                a34 a34Var = new a34(t45Var);
                wd2VarA.execute(a34Var);
                return a34Var;
            case 2:
                return tf1.d((ListenableFuture) ((yc5) obj2).e.get());
            case 3:
                return tf1.c(((gb5) obj2).apply(obj));
            case 4:
                return ((ce5) obj2).e.u();
            default:
                IOException iOException = (IOException) obj2;
                iOException.addSuppressed((IOException) obj);
                throw iOException;
        }
    }
}
