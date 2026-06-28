package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.auth.blockstore.DeleteBytesRequest;
import com.google.android.gms.auth.blockstore.RetrieveBytesRequest;
import com.google.android.gms.auth.blockstore.StoreBytesData;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wk4 extends GoogleApi implements BlockstoreClient {
    public static final Api a = new Api("Blockstore.API", new fe5(), new Api.ClientKey());

    @Override // com.google.android.gms.auth.blockstore.BlockstoreClient
    public final ow3 deleteBytes(DeleteBytesRequest deleteBytesRequest) {
        Preconditions.checkNotNull(deleteBytesRequest, "DeleteBytesRequest cannot be null");
        return doWrite(TaskApiCall.builder().setFeatures(tl4.e).run(new ra3(this, deleteBytesRequest, 24)).setAutoResolveMissingFeatures(false).setMethodKey(1669).build());
    }

    @Override // com.google.android.gms.auth.blockstore.BlockstoreClient
    public final ow3 isEndToEndEncryptionAvailable() {
        return doRead(TaskApiCall.builder().setFeatures(tl4.c).run(new ny4(this, 24)).setAutoResolveMissingFeatures(false).setMethodKey(1651).build());
    }

    @Override // com.google.android.gms.auth.blockstore.BlockstoreClient
    public final ow3 retrieveBytes(RetrieveBytesRequest retrieveBytesRequest) {
        Preconditions.checkNotNull(retrieveBytesRequest, "RetrieveBytesRequest cannot be null");
        return doRead(TaskApiCall.builder().setFeatures(tl4.f).run(new gt4(this, retrieveBytesRequest, 13)).setAutoResolveMissingFeatures(false).setMethodKey(1668).build());
    }

    @Override // com.google.android.gms.auth.blockstore.BlockstoreClient
    public final ow3 storeBytes(StoreBytesData storeBytesData) {
        return doWrite(TaskApiCall.builder().setFeatures(tl4.b, tl4.d).run(new ra3(this, storeBytesData, 25)).setMethodKey(1645).setAutoResolveMissingFeatures(false).build());
    }

    @Override // com.google.android.gms.auth.blockstore.BlockstoreClient
    public final ow3 retrieveBytes() {
        return doRead(TaskApiCall.builder().setFeatures(tl4.a).run(new ny4(this, 26)).setAutoResolveMissingFeatures(false).setMethodKey(1570).build());
    }
}
