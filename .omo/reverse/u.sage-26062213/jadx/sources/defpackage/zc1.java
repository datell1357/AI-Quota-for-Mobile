package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zc1 implements f6 {
    public final /* synthetic */ int n;
    public final /* synthetic */ hd1 o;

    public /* synthetic */ zc1(hd1 hd1Var, int i) {
        this.n = i;
        this.o = hd1Var;
    }

    @Override // defpackage.f6
    public final void f(Object obj) {
        int i = this.n;
        hd1 hd1Var = this.o;
        switch (i) {
            case 0:
                Map map = (Map) obj;
                String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    iArr[i2] = ((Boolean) arrayList.get(i2)).booleanValue() ? 0 : -1;
                }
                ed1 ed1Var = (ed1) hd1Var.C.pollFirst();
                if (ed1Var == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                } else {
                    String str = ed1Var.n;
                    int i3 = ed1Var.o;
                    lc1 lc1VarU = hd1Var.c.u(str);
                    if (lc1VarU == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                    } else {
                        lc1VarU.onRequestPermissionsResult(i3, strArr, iArr);
                    }
                }
                break;
            default:
                e6 e6Var = (e6) obj;
                ed1 ed1Var2 = (ed1) hd1Var.C.pollFirst();
                if (ed1Var2 == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                } else {
                    String str2 = ed1Var2.n;
                    int i4 = ed1Var2.o;
                    lc1 lc1VarU2 = hd1Var.c.u(str2);
                    if (lc1VarU2 == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str2);
                    } else {
                        lc1VarU2.onActivityResult(i4, e6Var.n, e6Var.o);
                    }
                }
                break;
        }
    }
}
