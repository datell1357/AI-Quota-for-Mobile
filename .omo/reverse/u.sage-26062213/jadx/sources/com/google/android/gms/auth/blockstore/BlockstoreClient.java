package com.google.android.gms.auth.blockstore;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import defpackage.ow3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface BlockstoreClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    public static final String DEFAULT_BYTES_DATA_KEY = "com.google.android.gms.auth.blockstore.DEFAULT_BYTES_DATA_KEY";
    public static final int MAX_ENTRY_COUNT = 16;
    public static final int MAX_SIZE = 4096;

    ow3 deleteBytes(DeleteBytesRequest deleteBytesRequest);

    ow3 isEndToEndEncryptionAvailable();

    @Deprecated
    ow3 retrieveBytes();

    ow3 retrieveBytes(RetrieveBytesRequest retrieveBytesRequest);

    ow3 storeBytes(StoreBytesData storeBytesData);
}
