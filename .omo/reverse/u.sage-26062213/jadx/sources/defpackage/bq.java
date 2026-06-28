package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bq extends vb4 {
    public final String b = "SaveableStateHolder_BackStackEntryKey";
    public final String c;
    public ra3 d;

    public bq(mc3 mc3Var) {
        Object value;
        mc3Var.getClass();
        rp rpVar = mc3Var.b;
        LinkedHashMap linkedHashMap = (LinkedHashMap) rpVar.b;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) rpVar.e;
        try {
            wr3 wr3Var = (wr3) linkedHashMap2.get("SaveableStateHolder_BackStackEntryKey");
            if (wr3Var == null || (value = wr3Var.getValue()) == null) {
                value = linkedHashMap.get("SaveableStateHolder_BackStackEntryKey");
            }
        } catch (ClassCastException unused) {
            linkedHashMap.remove("SaveableStateHolder_BackStackEntryKey");
            ((LinkedHashMap) rpVar.d).remove("SaveableStateHolder_BackStackEntryKey");
            linkedHashMap2.remove("SaveableStateHolder_BackStackEntryKey");
            value = null;
        }
        String string = (String) value;
        if (string == null) {
            string = UUID.randomUUID().toString();
            String str = this.b;
            str.getClass();
            if (string != null) {
                ArrayList arrayList = oc3.a;
                if (arrayList == null || !arrayList.isEmpty()) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        if (((Class) obj).isInstance(string)) {
                        }
                    }
                }
                p61.h(string.getClass(), " into saved state", "Can't put value with type ");
                throw null;
            }
            ArrayList arrayList2 = oc3.a;
            Object obj2 = mc3Var.a.get(str);
            wf2 wf2Var = obj2 instanceof wf2 ? (wf2) obj2 : null;
            if (wf2Var != null) {
                wf2Var.h(string);
            }
            rpVar.o(string, str);
        }
        this.c = string;
    }

    @Override // defpackage.vb4
    public final void b() {
        ra3 ra3Var = this.d;
        if (ra3Var == null) {
            nt1.X("saveableStateHolderRef");
            throw null;
        }
        fc3 fc3Var = (fc3) ((WeakReference) ra3Var.o).get();
        if (fc3Var != null) {
            fc3Var.f(this.c);
        }
        ra3 ra3Var2 = this.d;
        if (ra3Var2 != null) {
            ((WeakReference) ra3Var2.o).clear();
        } else {
            nt1.X("saveableStateHolderRef");
            throw null;
        }
    }
}
