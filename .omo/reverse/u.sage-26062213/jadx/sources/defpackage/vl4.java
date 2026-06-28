package defpackage;

import android.os.Parcelable;
import com.google.android.gms.auth.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vl4 extends GoogleApi {
    public static final Api a = new Api("GoogleAuthService.API", new ne5(), new Api.ClientKey());
    public static final Logger b = zzd.zza("GoogleAuthServiceClient");

    public static /* bridge */ /* synthetic */ void a(Status status, Parcelable parcelable, pw3 pw3Var) {
        if (TaskUtil.trySetResultOrApiException(status, parcelable, pw3Var)) {
            return;
        }
        b.w("The task is already complete.", new Object[0]);
    }
}
