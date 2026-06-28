package defpackage;

import android.util.Pair;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w65 extends GoogleApi {
    public static final /* synthetic */ int a = 0;

    static {
        Pair.create(new ky4(21), mt1.t(null));
    }

    public final ow3 a(String str) {
        return doRead(TaskApiCall.builder().run(new sg0(str, 4)).build());
    }
}
