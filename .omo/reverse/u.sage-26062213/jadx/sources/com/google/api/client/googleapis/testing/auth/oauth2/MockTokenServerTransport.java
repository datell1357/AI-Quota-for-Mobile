package com.google.api.client.googleapis.testing.auth.oauth2;

import com.google.api.client.googleapis.auth.oauth2.GoogleOAuthConstants;
import com.google.api.client.googleapis.testing.TestUtils;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.Json;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpRequest;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import defpackage.p61;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class MockTokenServerTransport extends MockHttpTransport {
    static final String EXPECTED_GRANT_TYPE = "urn:ietf:params:oauth:grant-type:jwt-bearer";
    private static final String LEGACY_TOKEN_SERVER_URL = "https://accounts.google.com/o/oauth2/token";
    Map<String, String> clients;
    Map<String, String> refreshTokens;
    Map<String, String> serviceAccounts;
    final String tokenServerUrl;
    private static final Logger LOGGER = Logger.getLogger(MockTokenServerTransport.class.getName());
    static final JsonFactory JSON_FACTORY = new GsonFactory();

    public MockTokenServerTransport(String str) {
        this.serviceAccounts = new HashMap();
        this.clients = new HashMap();
        this.refreshTokens = new HashMap();
        this.tokenServerUrl = str;
    }

    private MockLowLevelHttpRequest buildTokenRequest(String str) {
        return new MockLowLevelHttpRequest(str) { // from class: com.google.api.client.googleapis.testing.auth.oauth2.MockTokenServerTransport.1
            @Override // com.google.api.client.testing.http.MockLowLevelHttpRequest, com.google.api.client.http.LowLevelHttpRequest
            public LowLevelHttpResponse execute() throws IOException {
                String str2;
                Map<String, String> query = TestUtils.parseQuery(getContentAsString());
                String str3 = query.get("client_id");
                if (str3 != null) {
                    if (!MockTokenServerTransport.this.clients.containsKey(str3)) {
                        p61.k("Client ID not found.");
                        return null;
                    }
                    String str4 = query.get("client_secret");
                    String str5 = MockTokenServerTransport.this.clients.get(str3);
                    if (str4 == null || !str4.equals(str5)) {
                        p61.k("Client secret not found.");
                        return null;
                    }
                    String str6 = query.get("refresh_token");
                    if (!MockTokenServerTransport.this.refreshTokens.containsKey(str6)) {
                        p61.k("Refresh Token not found.");
                        return null;
                    }
                    str2 = MockTokenServerTransport.this.refreshTokens.get(str6);
                } else {
                    if (!query.containsKey("grant_type")) {
                        p61.k("Unknown token type.");
                        return null;
                    }
                    if (!MockTokenServerTransport.EXPECTED_GRANT_TYPE.equals(query.get("grant_type"))) {
                        p61.k("Unexpected Grant Type.");
                        return null;
                    }
                    JsonWebSignature jsonWebSignature = JsonWebSignature.parse(MockTokenServerTransport.JSON_FACTORY, query.get("assertion"));
                    String issuer = jsonWebSignature.getPayload().getIssuer();
                    if (!MockTokenServerTransport.this.serviceAccounts.containsKey(issuer)) {
                        p61.k("Service Account Email not found as issuer.");
                        return null;
                    }
                    str2 = MockTokenServerTransport.this.serviceAccounts.get(issuer);
                    String str7 = (String) jsonWebSignature.getPayload().get("scope");
                    if (str7 == null || str7.length() == 0) {
                        p61.k("Scopes not found.");
                        return null;
                    }
                }
                GenericJson genericJson = new GenericJson();
                genericJson.setFactory(MockTokenServerTransport.JSON_FACTORY);
                genericJson.put("access_token", (Object) str2);
                genericJson.put("expires_in", (Object) 3600);
                genericJson.put("token_type", (Object) "Bearer");
                return new MockLowLevelHttpResponse().setContentType(Json.MEDIA_TYPE).setContent(genericJson.toPrettyString());
            }
        };
    }

    public void addClient(String str, String str2) {
        this.clients.put(str, str2);
    }

    public void addRefreshToken(String str, String str2) {
        this.refreshTokens.put(str, str2);
    }

    public void addServiceAccount(String str, String str2) {
        this.serviceAccounts.put(str, str2);
    }

    @Override // com.google.api.client.testing.http.MockHttpTransport, com.google.api.client.http.HttpTransport
    public LowLevelHttpRequest buildRequest(String str, String str2) {
        if (str2.equals(this.tokenServerUrl)) {
            return buildTokenRequest(str2);
        }
        if (!str2.equals(LEGACY_TOKEN_SERVER_URL)) {
            return super.buildRequest(str, str2);
        }
        LOGGER.warning("Your configured token_uri is using a legacy endpoint. You may want to redownload your credentials.");
        return buildTokenRequest(str2);
    }

    public MockTokenServerTransport() {
        this(GoogleOAuthConstants.TOKEN_SERVER_URL);
    }
}
