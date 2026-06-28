package defpackage;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uv3 implements zo2, f31 {
    public static final String w = t72.i("SystemFgDispatcher");
    public final eg4 n;
    public final qd1 o;
    public final Object p = new Object();
    public bg4 q;
    public final LinkedHashMap r;
    public final HashMap s;
    public final HashMap t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ct2 f364u;
    public SystemForegroundService v;

    public uv3(Context context) {
        eg4 eg4VarC = eg4.c(context);
        this.n = eg4VarC;
        this.o = eg4VarC.d;
        this.q = null;
        this.r = new LinkedHashMap();
        this.t = new HashMap();
        this.s = new HashMap();
        this.f364u = new ct2(eg4VarC.j);
        eg4VarC.f.a(this);
    }

    public static Intent a(Context context, bg4 bg4Var, vb1 vb1Var) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", bg4Var.a);
        intent.putExtra("KEY_GENERATION", bg4Var.b);
        intent.putExtra("KEY_NOTIFICATION_ID", vb1Var.a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", vb1Var.b);
        intent.putExtra("KEY_NOTIFICATION", vb1Var.c);
        return intent;
    }

    @Override // defpackage.zo2
    public final void b(og4 og4Var, sf0 sf0Var) {
        if (sf0Var instanceof rf0) {
            String str = og4Var.a;
            t72.g().c(w, "Constraints unmet for WorkSpec " + str);
            bg4 bg4VarA = rg4.a(og4Var);
            int i = ((rf0) sf0Var).a;
            eg4 eg4Var = this.n;
            ((ji3) eg4Var.d.o).execute(new ns3(eg4Var.f, new nr3(bg4VarA), true, i));
        }
    }

    public final void c(Intent intent) {
        if (this.v == null) {
            k21.n("handleNotify was called on the destroyed dispatcher");
            return;
        }
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        bg4 bg4Var = new bg4(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        t72.g().c(w, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null) {
            k21.f("Notification passed in the intent was null.");
            return;
        }
        vb1 vb1Var = new vb1(intExtra, notification, intExtra2);
        LinkedHashMap linkedHashMap = this.r;
        linkedHashMap.put(bg4Var, vb1Var);
        vb1 vb1Var2 = (vb1) linkedHashMap.get(this.q);
        if (vb1Var2 == null) {
            this.q = bg4Var;
        } else {
            this.v.q.notify(intExtra, notification);
            if (Build.VERSION.SDK_INT >= 29) {
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    i |= ((vb1) ((Map.Entry) it.next()).getValue()).b;
                }
                vb1Var = new vb1(vb1Var2.a, vb1Var2.c, i);
            } else {
                vb1Var = vb1Var2;
            }
        }
        SystemForegroundService systemForegroundService = this.v;
        int i2 = vb1Var.a;
        int i3 = vb1Var.b;
        Notification notification2 = vb1Var.c;
        systemForegroundService.getClass();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 31) {
            vf.p(systemForegroundService, i2, notification2, i3);
        } else if (i4 >= 29) {
            vf.o(systemForegroundService, i2, notification2, i3);
        } else {
            systemForegroundService.startForeground(i2, notification2);
        }
    }

    @Override // defpackage.f31
    public final void d(bg4 bg4Var, boolean z) {
        Map.Entry entry;
        synchronized (this.p) {
            try {
                tu1 tu1Var = ((og4) this.s.remove(bg4Var)) != null ? (tu1) this.t.remove(bg4Var) : null;
                if (tu1Var != null) {
                    tu1Var.j(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        vb1 vb1Var = (vb1) this.r.remove(bg4Var);
        if (bg4Var.equals(this.q)) {
            if (this.r.size() > 0) {
                Iterator it = this.r.entrySet().iterator();
                Object next = it.next();
                while (true) {
                    entry = (Map.Entry) next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.q = (bg4) entry.getKey();
                if (this.v != null) {
                    vb1 vb1Var2 = (vb1) entry.getValue();
                    SystemForegroundService systemForegroundService = this.v;
                    int i = vb1Var2.a;
                    int i2 = vb1Var2.b;
                    Notification notification = vb1Var2.c;
                    systemForegroundService.getClass();
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 31) {
                        vf.p(systemForegroundService, i, notification, i2);
                    } else if (i3 >= 29) {
                        vf.o(systemForegroundService, i, notification, i2);
                    } else {
                        systemForegroundService.startForeground(i, notification);
                    }
                    this.v.q.cancel(vb1Var2.a);
                }
            } else {
                this.q = null;
            }
        }
        SystemForegroundService systemForegroundService2 = this.v;
        if (vb1Var == null || systemForegroundService2 == null) {
            return;
        }
        t72.g().c(w, "Removing Notification (id: " + vb1Var.a + ", workSpecId: " + bg4Var + ", notificationType: " + vb1Var.b);
        systemForegroundService2.q.cancel(vb1Var.a);
    }

    public final void e() {
        this.v = null;
        synchronized (this.p) {
            try {
                Iterator it = this.t.values().iterator();
                while (it.hasNext()) {
                    ((tu1) it.next()).j(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ez2 ez2Var = this.n.f;
        synchronized (ez2Var.k) {
            ez2Var.j.remove(this);
        }
    }

    public final void f(int i, int i2) {
        t72.g().h(w, "Foreground service timed out, FGS type: " + i2);
        for (Map.Entry entry : this.r.entrySet()) {
            if (((vb1) entry.getValue()).b == i2) {
                bg4 bg4Var = (bg4) entry.getKey();
                eg4 eg4Var = this.n;
                ((ji3) eg4Var.d.o).execute(new ns3(eg4Var.f, new nr3(bg4Var), true, -128));
            }
        }
        SystemForegroundService systemForegroundService = this.v;
        if (systemForegroundService != null) {
            systemForegroundService.o = true;
            t72.g().c(SystemForegroundService.r, "Shutting down.");
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf(i);
        }
    }
}
