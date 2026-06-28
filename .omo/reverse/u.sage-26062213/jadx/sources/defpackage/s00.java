package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s00 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ s00(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return ((x00) obj3).reload(obj2, obj).get();
            case 1:
                return ((qr0) obj3).n.submit(new h7(12, (Callable) obj2, (wu4) obj));
            default:
                String str = (String) obj;
                WorkDatabase workDatabase = ((ez2) obj3).e;
                tg4 tg4VarX = workDatabase.x();
                tg4VarX.getClass();
                str.getClass();
                ((ArrayList) obj2).addAll((List) gg4.N(tg4VarX.a, true, false, new ao0(str, 24)));
                return workDatabase.w().c(str);
        }
    }
}
