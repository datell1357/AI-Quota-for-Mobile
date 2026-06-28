package defpackage;

import android.os.Bundle;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mc1 implements tc3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ mc1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.tc3
    public final Bundle a() {
        js2[] js2VarArr;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                SignInHubActivity signInHubActivity = (SignInHubActivity) obj;
                signInHubActivity.markFragmentsCreated();
                signInHubActivity.mFragmentLifecycleRegistry.e(f22.ON_STOP);
                return new Bundle();
            case 1:
                return u90.b((u90) obj);
            case 2:
                Map mapC = ((jc3) obj).c();
                Bundle bundle = new Bundle();
                for (Map.Entry entry : mapC.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    bundle.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
                }
                return bundle;
            case 3:
                return ((hd1) obj).S();
            default:
                rp rpVar = (rp) obj;
                for (Map.Entry entry2 : oa2.e0((LinkedHashMap) rpVar.e).entrySet()) {
                    rpVar.o(((wr3) entry2.getValue()).getValue(), (String) entry2.getKey());
                }
                for (Map.Entry entry3 : oa2.e0((LinkedHashMap) rpVar.c).entrySet()) {
                    rpVar.o(((tc3) entry3.getValue()).a(), (String) entry3.getKey());
                }
                LinkedHashMap linkedHashMap = (LinkedHashMap) rpVar.b;
                if (linkedHashMap.isEmpty()) {
                    js2VarArr = new js2[0];
                } else {
                    ArrayList arrayList = new ArrayList(linkedHashMap.size());
                    for (Map.Entry entry4 : linkedHashMap.entrySet()) {
                        arrayList.add(new js2((String) entry4.getKey(), entry4.getValue()));
                    }
                    js2VarArr = (js2[]) arrayList.toArray(new js2[0]);
                }
                return qj0.x((js2[]) Arrays.copyOf(js2VarArr, js2VarArr.length));
        }
    }
}
