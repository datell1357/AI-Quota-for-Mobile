package defpackage;

import android.os.Parcel;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r05 extends gu4 implements v05 {
    @Override // defpackage.v05
    public final void z(List list) {
        Parcel parcelF = F();
        parcelF.writeTypedList(list);
        H(parcelF);
    }
}
