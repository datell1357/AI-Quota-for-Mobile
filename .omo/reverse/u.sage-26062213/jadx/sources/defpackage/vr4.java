package defpackage;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vr4 implements Result {
    public final /* synthetic */ int n;
    public final Status o;

    public /* synthetic */ vr4(Status status, int i) {
        this.n = i;
        this.o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        switch (this.n) {
        }
        return this.o;
    }
}
