package defpackage;

import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ea5 extends et4 {
    public final /* synthetic */ int e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ea5(Object obj, s55 s55Var, int i) {
        super(s55Var);
        this.e = i;
        this.f = obj;
    }

    @Override // defpackage.et4
    public final void a() {
        int i = this.e;
        Object obj = this.f;
        switch (i) {
            case 0:
                x23 x23Var = (x23) obj;
                ia5 ia5Var = (ia5) x23Var.q;
                ia5Var.v();
                r45 r45Var = (r45) ia5Var.a;
                x23Var.i(false, false, r45Var.k.elapsedRealtime());
                bx4 bx4Var = r45Var.n;
                r45.i(bx4Var);
                bx4Var.y(r45Var.k.elapsedRealtime());
                break;
            case 1:
                qa5 qa5Var = (qa5) obj;
                qa5Var.A();
                a25 a25Var = ((r45) qa5Var.a).f;
                r45.l(a25Var);
                a25Var.n.a("Starting upload from DelayedRunnable");
                qa5Var.b.q();
                break;
            default:
                pb5 pb5Var = (pb5) obj;
                pb5Var.d().v();
                String str = (String) pb5Var.q.pollFirst();
                if (str != null) {
                    pb5Var.I = pb5Var.f().elapsedRealtime();
                    pb5Var.c().n.b(str, "Sending trigger URI notification to app");
                    Intent intent = new Intent();
                    intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    intent.setPackage(str);
                    Context context = pb5Var.l.a;
                    if (Build.VERSION.SDK_INT < 34) {
                        context.sendBroadcast(intent);
                    } else {
                        context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                    }
                }
                pb5Var.H();
                break;
        }
    }
}
