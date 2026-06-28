package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qv1 implements pn2 {
    public final /* synthetic */ int a;

    public /* synthetic */ qv1(int i) {
        this.a = i;
    }

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                throw new p01("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                qn2 qn2Var = (qn2) obj2;
                qn2Var.a(b03.g, entry.getKey());
                qn2Var.a(b03.h, entry.getValue());
                return;
            default:
                throw new p01("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
