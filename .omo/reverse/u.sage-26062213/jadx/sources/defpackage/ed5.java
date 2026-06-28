package defpackage;

import android.net.Uri;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ed5 {
    public wd5 a;
    public lp1 b;
    public ArrayList c;
    public Uri d;

    public ArrayList a(OutputStream outputStream) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(outputStream);
        ArrayList arrayList2 = this.c;
        if (!arrayList2.isEmpty()) {
            int i = dd5.o;
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                mk0.b();
                return null;
            }
            dd5 dd5Var = !arrayList3.isEmpty() ? new dd5(outputStream, arrayList3) : null;
            if (dd5Var != null) {
                arrayList.add(dd5Var);
            }
        }
        Iterator it2 = this.b.iterator();
        if (!it2.hasNext()) {
            Collections.reverse(arrayList);
            return arrayList;
        }
        if (it2.next() != null) {
            mk0.b();
            return null;
        }
        throw null;
    }
}
