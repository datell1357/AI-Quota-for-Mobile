package defpackage;

import android.view.MotionEvent;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ce2 {
    public static final ce2 a = new ce2();

    public final boolean a(MotionEvent motionEvent, int i) {
        return (Float.floatToRawIntBits(motionEvent.getRawX(i)) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040 && (Float.floatToRawIntBits(motionEvent.getRawY(i)) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040;
    }
}
