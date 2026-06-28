package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fa0 implements n03 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fa0(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.n03
    public final Object get() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        int i = this.a;
        boolean z = true;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ga0 ga0Var = (ga0) obj2;
                i90 i90Var = (i90) obj;
                aa0 aa0Var = i90Var.f;
                hg hgVar = new hg();
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                HashSet hashSet4 = new HashSet();
                HashSet hashSet5 = new HashSet();
                Set<fs0> set = i90Var.c;
                Set set2 = i90Var.g;
                for (fs0 fs0Var : set) {
                    int i2 = fs0Var.c;
                    int i3 = fs0Var.b;
                    boolean z2 = i2 == 0 ? z : false;
                    z03 z03Var = fs0Var.a;
                    if (z2) {
                        if (i3 == 2) {
                            hashSet4.add(z03Var);
                        } else {
                            hashSet.add(z03Var);
                        }
                    } else if (i2 == 2) {
                        hashSet3.add(z03Var);
                    } else if (i3 == 2) {
                        hashSet5.add(z03Var);
                    } else {
                        hashSet2.add(z03Var);
                    }
                    z = true;
                }
                if (!set2.isEmpty()) {
                    hashSet.add(z03.a(v03.class));
                }
                hgVar.a = Collections.unmodifiableSet(hashSet);
                hgVar.b = Collections.unmodifiableSet(hashSet2);
                hgVar.c = Collections.unmodifiableSet(hashSet3);
                hgVar.d = Collections.unmodifiableSet(hashSet4);
                hgVar.e = Collections.unmodifiableSet(hashSet5);
                hgVar.f = ga0Var;
                return aa0Var.j(hgVar);
            case 1:
                return new pj1((Context) obj2, (String) obj);
            default:
                e61 e61Var = (e61) obj2;
                String strC = e61Var.c();
                cm0 cm0Var = new cm0();
                Context contextCreateDeviceProtectedStorageContext = ((Context) obj).createDeviceProtectedStorageContext();
                SharedPreferences sharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences("com.google.firebase.common.prefs:".concat(strC), 0);
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager = contextCreateDeviceProtectedStorageContext.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextCreateDeviceProtectedStorageContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                            z = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                        break;
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                cm0Var.a = z;
                return cm0Var;
        }
    }
}
