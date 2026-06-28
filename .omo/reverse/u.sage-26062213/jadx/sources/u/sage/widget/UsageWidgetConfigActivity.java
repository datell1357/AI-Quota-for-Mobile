package u.sage.widget;

import android.content.Intent;
import android.os.Bundle;
import defpackage.ka0;
import defpackage.sy0;
import defpackage.u90;
import defpackage.v90;
import defpackage.z84;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class UsageWidgetConfigActivity extends u90 {
    public static final /* synthetic */ int o = 0;
    public int n;

    public final void g() {
        Intent intent = getIntent();
        if ((intent != null ? intent.getAction() : null) == null) {
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addCategory("android.intent.category.HOME");
            intent2.setFlags(268435456);
            startActivity(intent2);
        }
        finish();
    }

    @Override // defpackage.u90, defpackage.t90, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Bundle extras;
        super.onCreate(bundle);
        sy0.a(this);
        setResult(0);
        Intent intent = getIntent();
        int i = (intent == null || (extras = intent.getExtras()) == null) ? 0 : extras.getInt("appWidgetId", 0);
        this.n = i;
        if (i == 0) {
            finish();
        } else {
            v90.a(this, new ka0(1057659417, true, new z84(this, 0)));
        }
    }
}
