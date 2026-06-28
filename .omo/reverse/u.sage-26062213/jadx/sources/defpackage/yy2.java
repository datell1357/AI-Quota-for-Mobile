package defpackage;

import android.content.Context;
import android.os.Process;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yy2 {
    public final Context a;
    public final nv3 b;
    public final int c;
    public final nv3 d;
    public final nv3 e;
    public boolean f;

    public yy2(Context context, q94 q94Var) {
        context.getClass();
        q94Var.getClass();
        this.a = context;
        final int i = 0;
        this.b = new nv3(new ne1(this) { // from class: xy2
            public final /* synthetic */ yy2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i2 = i;
                yy2 yy2Var = this.o;
                switch (i2) {
                    case 0:
                        return ((zy2) yy2Var.e.getValue()).a;
                    default:
                        return k30.y(yy2Var.a);
                }
            }
        });
        this.c = Process.myPid();
        this.d = new nv3(new cc(25, q94Var));
        final int i2 = 1;
        this.e = new nv3(new ne1(this) { // from class: xy2
            public final /* synthetic */ yy2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i22 = i2;
                yy2 yy2Var = this.o;
                switch (i22) {
                    case 0:
                        return ((zy2) yy2Var.e.getValue()).a;
                    default:
                        return k30.y(yy2Var.a);
                }
            }
        });
    }

    public final String a() {
        return (String) this.b.getValue();
    }

    public final Map b(Map map) {
        nv3 nv3Var = this.d;
        if (map != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put(a(), new wy2(Process.myPid(), (String) nv3Var.getValue()));
            return oa2.e0(linkedHashMap);
        }
        Map mapSingletonMap = Collections.singletonMap(a(), new wy2(Process.myPid(), (String) nv3Var.getValue()));
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }
}
