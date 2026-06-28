package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u9 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ v9 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u9(v9 v9Var, int i) {
        super(1);
        this.o = i;
        this.p = v9Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        v9 v9Var = this.p;
        switch (i) {
            case 0:
                View view = v9Var.q;
                return Boolean.valueOf(view.getParent().requestSendAccessibilityEvent(view, (AccessibilityEvent) obj));
            default:
                if3 if3Var = (if3) obj;
                if (if3Var.o.contains(if3Var)) {
                    ur2 snapshotObserver = v9Var.q.getSnapshotObserver();
                    snapshotObserver.a.c(if3Var, v9Var.b0, new j9(1, if3Var, v9Var));
                }
                return t64.a;
        }
    }
}
