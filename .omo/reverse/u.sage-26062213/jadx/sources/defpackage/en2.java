package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class en2 {
    public final Context a;
    public CharSequence e;
    public CharSequence f;
    public PendingIntent g;
    public int h;
    public xh1 j;
    public boolean k;
    public String l;
    public Bundle n;
    public String o;
    public final boolean p;
    public final Notification q;
    public boolean r;
    public final ArrayList s;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final boolean i = true;
    public boolean m = false;

    public en2(Context context, String str) {
        Notification notification = new Notification();
        this.q = notification;
        this.a = context;
        this.o = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.h = 0;
        this.s = new ArrayList();
        this.p = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification a() {
        Notification notificationBuild;
        Bundle bundle;
        lb lbVar = new lb(this);
        Notification.Builder builder = (Notification.Builder) lbVar.o;
        en2 en2Var = (en2) lbVar.p;
        xh1 xh1Var = en2Var.j;
        if (xh1Var != null) {
            new Notification.BigTextStyle(builder).setBigContentTitle(null).bigText((CharSequence) xh1Var.o);
        }
        int i = lbVar.n;
        if (Build.VERSION.SDK_INT >= 26) {
            notificationBuild = builder.build();
        } else {
            notificationBuild = builder.build();
            if (i != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && i == 2) {
                    notificationBuild.sound = null;
                    notificationBuild.vibrate = null;
                    notificationBuild.defaults &= -4;
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) == 0 && i == 1) {
                    notificationBuild.sound = null;
                    notificationBuild.vibrate = null;
                    notificationBuild.defaults &= -4;
                }
            }
        }
        if (xh1Var != null) {
            en2Var.j.getClass();
        }
        if (xh1Var != null && (bundle = notificationBuild.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", "androidx.core.app.NotificationCompat$BigTextStyle");
        }
        return notificationBuild;
    }

    public final void c(int i, boolean z) {
        Notification notification = this.q;
        if (z) {
            notification.flags = i | notification.flags;
        } else {
            notification.flags = (~i) & notification.flags;
        }
    }

    public final void d(xh1 xh1Var) {
        if (this.j != xh1Var) {
            this.j = xh1Var;
            if (((en2) xh1Var.n) != this) {
                xh1Var.n = this;
                d(xh1Var);
            }
        }
    }
}
