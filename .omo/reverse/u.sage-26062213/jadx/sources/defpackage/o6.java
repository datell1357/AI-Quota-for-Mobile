package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o6 extends i6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ p6 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ g6 d;

    public /* synthetic */ o6(p6 p6Var, String str, g6 g6Var, int i) {
        this.a = i;
        this.b = p6Var;
        this.c = str;
        this.d = g6Var;
    }

    @Override // defpackage.i6
    public final void a(Object obj) {
        int i = this.a;
        g6 g6Var = this.d;
        String str = this.c;
        p6 p6Var = this.b;
        switch (i) {
            case 0:
                ArrayList arrayList = p6Var.d;
                Object obj2 = p6Var.b.get(str);
                if (obj2 == null) {
                    p61.u("Attempting to launch an unregistered ActivityResultLauncher with contract ", g6Var, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
                    return;
                }
                int iIntValue = ((Number) obj2).intValue();
                arrayList.add(str);
                try {
                    p6Var.b(iIntValue, g6Var, obj);
                    return;
                } catch (Exception e) {
                    arrayList.remove(str);
                    throw e;
                }
            default:
                ArrayList arrayList2 = p6Var.d;
                Object obj3 = p6Var.b.get(str);
                if (obj3 == null) {
                    p61.u("Attempting to launch an unregistered ActivityResultLauncher with contract ", g6Var, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
                    return;
                }
                int iIntValue2 = ((Number) obj3).intValue();
                arrayList2.add(str);
                try {
                    p6Var.b(iIntValue2, g6Var, obj);
                    return;
                } catch (Exception e2) {
                    arrayList2.remove(str);
                    throw e2;
                }
        }
    }

    public void b() {
        this.b.f(this.c);
    }
}
