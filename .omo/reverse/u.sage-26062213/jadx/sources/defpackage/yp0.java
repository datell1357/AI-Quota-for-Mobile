package defpackage;

import android.util.Log;
import androidx.work.impl.WorkDatabase;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yp0 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public /* synthetic */ yp0(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String string;
        BufferedWriter bufferedWriter;
        int i = this.n;
        BufferedWriter bufferedWriter2 = null;
        Object obj = this.r;
        Object obj2 = this.q;
        Object obj3 = this.p;
        Object obj4 = this.o;
        switch (i) {
            case 0:
                aq0 aq0Var = (aq0) obj4;
                hp hpVar = (hp) obj3;
                String str = hpVar.a;
                z14 z14Var = (z14) obj2;
                co coVar = (co) obj;
                aq0Var.getClass();
                Logger logger = aq0.f;
                try {
                    v14 v14VarA = aq0Var.c.a(str);
                    if (v14VarA == null) {
                        String str2 = "Transport backend '" + str + "' is not registered";
                        logger.warning(str2);
                        z14Var.a(new IllegalArgumentException(str2));
                    } else {
                        aq0Var.e.B(new gd0(aq0Var, hpVar, ((i30) v14VarA).a(coVar), 2));
                        z14Var.a(null);
                    }
                    return;
                } catch (Exception e) {
                    logger.warning("Error scheduling event " + e.getMessage());
                    z14Var.a(e);
                    return;
                }
            case 1:
                List list = (List) obj4;
                bg4 bg4Var = (bg4) obj3;
                md0 md0Var = (md0) obj2;
                WorkDatabase workDatabase = (WorkDatabase) obj;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((wd3) it.next()).a(bg4Var.a);
                }
                zd3.b(md0Var, workDatabase, list);
                return;
            default:
                q51 q51Var = (q51) obj4;
                String str3 = (String) obj3;
                Map map = (Map) obj2;
                List list2 = (List) obj;
                uc2 uc2Var = (uc2) q51Var.b;
                AtomicMarkableReference atomicMarkableReference = (AtomicMarkableReference) q51Var.g;
                if (((String) atomicMarkableReference.getReference()) != null) {
                    String str4 = (String) atomicMarkableReference.getReference();
                    File fileB = uc2Var.a.b(str3, "user-data");
                    try {
                        try {
                            tc2 tc2Var = new tc2();
                            tc2Var.put("userId", str4);
                            string = tc2Var.toString();
                            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileB), uc2.b));
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        bufferedWriter.write(string);
                        bufferedWriter.flush();
                        w80.n(bufferedWriter, "Failed to close user metadata file.");
                    } catch (Exception e3) {
                        e = e3;
                        bufferedWriter2 = bufferedWriter;
                        Log.w("FirebaseCrashlytics", "Error serializing user metadata.", e);
                        w80.n(bufferedWriter2, "Failed to close user metadata file.");
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedWriter2 = bufferedWriter;
                        w80.n(bufferedWriter2, "Failed to close user metadata file.");
                        throw th;
                    }
                    break;
                }
                if (!map.isEmpty()) {
                    uc2Var.h(str3, map, false);
                }
                if (list2.isEmpty()) {
                    return;
                }
                uc2Var.i(str3, list2);
                return;
        }
    }
}
