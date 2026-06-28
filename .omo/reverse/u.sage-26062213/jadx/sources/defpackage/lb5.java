package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lb5 implements yb5, d25 {
    public final /* synthetic */ pb5 n;

    public /* synthetic */ lb5(pb5 pb5Var) {
        this.n = pb5Var;
    }

    @Override // defpackage.d25
    public /* synthetic */ void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.n.B(str, i, th, bArr, map);
    }

    @Override // defpackage.yb5
    public void e(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        pb5 pb5Var = this.n;
        if (!zIsEmpty) {
            pb5Var.d().E(new e30(this, str, str2, bundle, 12));
            return;
        }
        r45 r45Var = pb5Var.l;
        if (r45Var != null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.b(str2, "AppId not known when logging event");
        }
    }
}
