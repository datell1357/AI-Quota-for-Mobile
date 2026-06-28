package com.google.api.client.auth.oauth2;

import com.google.api.client.util.Preconditions;
import com.google.api.client.util.store.DataStore;
import com.google.api.client.util.store.DataStoreFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class DataStoreCredentialRefreshListener implements CredentialRefreshListener {
    private final DataStore<StoredCredential> credentialDataStore;
    private final String userId;

    public DataStoreCredentialRefreshListener(String str, DataStore<StoredCredential> dataStore) {
        this.userId = (String) Preconditions.checkNotNull(str);
        this.credentialDataStore = (DataStore) Preconditions.checkNotNull(dataStore);
    }

    public DataStore<StoredCredential> getCredentialDataStore() {
        return this.credentialDataStore;
    }

    public void makePersistent(Credential credential) {
        this.credentialDataStore.set(this.userId, new StoredCredential(credential));
    }

    @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
    public void onTokenErrorResponse(Credential credential, TokenErrorResponse tokenErrorResponse) {
        makePersistent(credential);
    }

    @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
    public void onTokenResponse(Credential credential, TokenResponse tokenResponse) {
        makePersistent(credential);
    }

    public DataStoreCredentialRefreshListener(String str, DataStoreFactory dataStoreFactory) {
        this(str, StoredCredential.getDefaultDataStore(dataStoreFactory));
    }
}
