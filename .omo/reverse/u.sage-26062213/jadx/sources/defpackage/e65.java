package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e65 {
    public final r45 a;

    public e65(r45 r45Var) {
        this.a = r45Var;
    }

    public boolean a() {
        a25 a25Var = this.a.f;
        r45.l(a25Var);
        return Log.isLoggable(a25Var.F(), 3);
    }

    public void b(String str, Bundle bundle) {
        String string;
        r45 r45Var = this.a;
        j45 j45Var = r45Var.g;
        f35 f35Var = r45Var.e;
        r45.l(j45Var);
        j45Var.v();
        if (r45Var.a()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        r45.j(f35Var);
        f35Var.w.i(string);
        f35Var.x.b(r45Var.k.currentTimeMillis());
    }

    public boolean c() {
        if (!d()) {
            return false;
        }
        r45 r45Var = this.a;
        long jCurrentTimeMillis = r45Var.k.currentTimeMillis();
        f35 f35Var = r45Var.e;
        r45.j(f35Var);
        return jCurrentTimeMillis - f35Var.x.a() > r45Var.d.D(null, e05.i0);
    }

    public boolean d() {
        f35 f35Var = this.a.e;
        r45.j(f35Var);
        return f35Var.x.a() > 0;
    }

    public e65(f65 f65Var, r45 r45Var) {
        this.a = r45Var;
    }
}
