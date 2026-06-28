package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aa3 {
    public final ArrayList a;
    public int b;

    public aa3() {
        this.a = new ArrayList();
        this.b = 128;
    }

    public synchronized List a() {
        return Collections.unmodifiableList(new ArrayList(this.a));
    }

    public synchronized boolean b(List list) {
        this.a.clear();
        if (list.size() <= this.b) {
            return this.a.addAll(list);
        }
        Log.w("FirebaseCrashlytics", "Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.b, null);
        return this.a.addAll(list.subList(0, this.b));
    }

    public aa3(ArrayList arrayList) {
        this.a = arrayList;
    }
}
