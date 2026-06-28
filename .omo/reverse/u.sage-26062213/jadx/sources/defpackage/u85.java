package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u85 implements qi {
    public static final /* synthetic */ u85 b = new u85(0);
    public static final /* synthetic */ u85 c = new u85(2);
    public final /* synthetic */ int a;

    public /* synthetic */ u85(int i) {
        this.a = i;
    }

    @Override // defpackage.qi
    public final /* synthetic */ ListenableFuture apply(Object obj) {
        switch (this.a) {
            case 0:
                ApiException apiException = (ApiException) obj;
                throw new t85(apiException.getStatusCode(), apiException.getMessage(), apiException);
            case 1:
                throw null;
            default:
                return tf1.c("");
        }
    }
}
