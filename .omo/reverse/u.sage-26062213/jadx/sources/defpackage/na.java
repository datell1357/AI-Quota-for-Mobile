package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class na extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ ArrayList p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ na(int i, ArrayList arrayList) {
        super(1);
        this.o = i;
        this.p = arrayList;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        t64 t64Var = t64.a;
        ArrayList arrayList = this.p;
        switch (i) {
            case 0:
                cv2 cv2Var = (cv2) obj;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    cv2.j(cv2Var, (dv2) arrayList.get(i2), 0, 0);
                }
                break;
            case 1:
                cv2 cv2Var2 = (cv2) obj;
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    cv2.h(cv2Var2, (dv2) arrayList.get(i3), 0, 0);
                }
                break;
            default:
                cv2 cv2Var3 = (cv2) obj;
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    cv2.l(cv2Var3, (dv2) arrayList.get(i4), 0, 0);
                }
                break;
        }
        return t64Var;
    }
}
