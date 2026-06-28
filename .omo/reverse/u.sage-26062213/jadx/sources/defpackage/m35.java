package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m35 extends s82 {
    public final /* synthetic */ w35 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m35(w35 w35Var) {
        super(20);
        this.g = w35Var;
    }

    @Override // defpackage.s82
    public final Object a(Object obj) throws Throwable {
        LinkedHashMap linkedHashMap;
        String str = (String) obj;
        Preconditions.checkNotEmpty(str);
        w35 w35Var = this.g;
        w35Var.w();
        Preconditions.checkNotEmpty(str);
        at4 at4Var = w35Var.b.c;
        pb5.T(at4Var);
        ui3 ui3VarD0 = at4Var.D0(str);
        if (ui3VarD0 == null) {
            return null;
        }
        a25 a25Var = ((r45) w35Var.a).f;
        r45.l(a25Var);
        a25Var.n.b(str, "Populate EES config from database on cache miss. appId");
        w35Var.D(str, w35Var.E(str, (byte[]) ui3VarD0.o));
        m35 m35Var = w35Var.k;
        synchronized (m35Var.c) {
            Set setEntrySet = m35Var.b.a.entrySet();
            setEntrySet.getClass();
            linkedHashMap = new LinkedHashMap(setEntrySet.size());
            Set<Map.Entry> setEntrySet2 = m35Var.b.a.entrySet();
            setEntrySet2.getClass();
            for (Map.Entry entry : setEntrySet2) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return (mv4) linkedHashMap.get(str);
    }
}
