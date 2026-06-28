package com.google.api.client.auth.oauth2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface CredentialStore {
    void delete(String str, Credential credential);

    boolean load(String str, Credential credential);

    void store(String str, Credential credential);
}
