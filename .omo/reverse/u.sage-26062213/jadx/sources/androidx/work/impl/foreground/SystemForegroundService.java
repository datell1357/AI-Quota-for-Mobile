package androidx.work.impl.foreground;

import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import defpackage.eg4;
import defpackage.f22;
import defpackage.h22;
import defpackage.h4;
import defpackage.ji3;
import defpackage.mt1;
import defpackage.p22;
import defpackage.qv3;
import defpackage.r22;
import defpackage.rf1;
import defpackage.t72;
import defpackage.ui3;
import defpackage.uv3;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class SystemForegroundService extends Service implements p22 {
    public static final String r = t72.i("SystemFgService");
    public final ui3 n = new ui3(this);
    public boolean o;
    public uv3 p;
    public NotificationManager q;

    public final void a() {
        this.q = (NotificationManager) getApplicationContext().getSystemService("notification");
        uv3 uv3Var = new uv3(getApplicationContext());
        this.p = uv3Var;
        if (uv3Var.v != null) {
            t72.g().e(uv3.w, "A callback already exists.");
        } else {
            uv3Var.v = this;
        }
    }

    public final void b() {
        ui3 ui3Var = this.n;
        ui3Var.getClass();
        ui3Var.i(f22.ON_CREATE);
        super.onCreate();
    }

    public final void c() {
        ui3 ui3Var = this.n;
        ui3Var.getClass();
        ui3Var.i(f22.ON_STOP);
        ui3Var.i(f22.ON_DESTROY);
        super.onDestroy();
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        return (r22) this.n.o;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        ui3 ui3Var = this.n;
        ui3Var.getClass();
        ui3Var.i(f22.ON_START);
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        b();
        a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        c();
        this.p.e();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        ui3 ui3Var = this.n;
        ui3Var.getClass();
        ui3Var.i(f22.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        boolean z = this.o;
        boolean z2 = false;
        String str = r;
        if (z) {
            t72.g().h(str, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.p.e();
            a();
            this.o = false;
        }
        if (intent == null) {
            return 3;
        }
        uv3 uv3Var = this.p;
        uv3Var.getClass();
        String str2 = uv3.w;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            t72.g().h(str2, "Started foreground service " + intent);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            ((ji3) uv3Var.o.o).execute(new rf1(14, uv3Var, stringExtra, z2));
            uv3Var.c(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            uv3Var.c(intent);
            return 3;
        }
        if (!"ACTION_CANCEL_WORK".equals(action)) {
            if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            }
            t72.g().h(str2, "Stopping foreground service");
            SystemForegroundService systemForegroundService = uv3Var.v;
            if (systemForegroundService == null) {
                return 3;
            }
            systemForegroundService.o = true;
            t72.g().c(str, "Shutting down.");
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf(i2);
            return 3;
        }
        t72.g().h(str2, "Stopping foreground work for " + intent);
        String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
            return 3;
        }
        eg4 eg4Var = uv3Var.n;
        UUID uuidFromString = UUID.fromString(stringExtra2);
        eg4Var.getClass();
        uuidFromString.getClass();
        qv3 qv3Var = eg4Var.b.m;
        ji3 ji3Var = (ji3) eg4Var.d.o;
        ji3Var.getClass();
        mt1.N(qv3Var, "CancelWorkById", ji3Var, new h4(5, eg4Var, uuidFromString));
        return 3;
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.p.f(i, 2048);
    }

    public final void onTimeout(int i, int i2) {
        this.p.f(i, i2);
    }
}
