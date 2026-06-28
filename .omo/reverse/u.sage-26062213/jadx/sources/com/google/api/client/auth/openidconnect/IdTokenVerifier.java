package com.google.api.client.auth.openidconnect;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.util.Base64;
import com.google.api.client.util.Clock;
import com.google.api.client.util.ExponentialBackOff;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import defpackage.di0;
import defpackage.e53;
import defpackage.g62;
import defpackage.hb;
import defpackage.k64;
import defpackage.n44;
import defpackage.n52;
import defpackage.np1;
import defpackage.o00;
import defpackage.p61;
import defpackage.x00;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class IdTokenVerifier {
    public static final long DEFAULT_TIME_SKEW_SECONDS = 300;
    private static final String FEDERATED_SIGNON_CERT_URL = "https://www.googleapis.com/oauth2/v3/certs";
    private static final String IAP_CERT_URL = "https://www.gstatic.com/iap/verify/public_key-jwk";
    private static final String NOT_SUPPORTED_ALGORITHM = "Unexpected signing algorithm %s: expected either RS256 or ES256";
    static final String SKIP_SIGNATURE_ENV_VAR = "OAUTH_CLIENT_SKIP_SIGNATURE";
    private final long acceptableTimeSkewSeconds;
    private final Collection<String> audience;
    private final String certificatesLocation;
    private final Clock clock;
    private final Environment environment;
    private final Collection<String> issuers;
    private final n52 publicKeyCache;
    private static final Logger LOGGER = Logger.getLogger(IdTokenVerifier.class.getName());
    private static final Set<String> SUPPORTED_ALGORITHMS = np1.k(2, "RS256", "ES256");
    static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class Builder {
        Collection<String> audience;
        String certificatesLocation;
        Environment environment;
        HttpTransportFactory httpTransportFactory;
        Collection<String> issuers;
        Clock clock = Clock.SYSTEM;
        long acceptableTimeSkewSeconds = 300;

        public IdTokenVerifier build() {
            return new IdTokenVerifier(this);
        }

        public final long getAcceptableTimeSkewSeconds() {
            return this.acceptableTimeSkewSeconds;
        }

        public final Collection<String> getAudience() {
            return this.audience;
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final Environment getEnvironment() {
            return this.environment;
        }

        public final String getIssuer() {
            Collection<String> collection = this.issuers;
            if (collection == null) {
                return null;
            }
            return collection.iterator().next();
        }

        public final Collection<String> getIssuers() {
            return this.issuers;
        }

        public Builder setAcceptableTimeSkewSeconds(long j) {
            Preconditions.checkArgument(j >= 0);
            this.acceptableTimeSkewSeconds = j;
            return this;
        }

        public Builder setAudience(Collection<String> collection) {
            this.audience = collection;
            return this;
        }

        public Builder setCertificatesLocation(String str) {
            this.certificatesLocation = str;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setEnvironment(Environment environment) {
            this.environment = environment;
            return this;
        }

        public Builder setHttpTransportFactory(HttpTransportFactory httpTransportFactory) {
            this.httpTransportFactory = httpTransportFactory;
            return this;
        }

        public Builder setIssuer(String str) {
            return str == null ? setIssuers(null) : setIssuers(Collections.singleton(str));
        }

        public Builder setIssuers(Collection<String> collection) {
            Preconditions.checkArgument(collection == null || !collection.isEmpty(), "Issuers must not be empty");
            this.issuers = collection;
            return this;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class DefaultHttpTransportFactory implements HttpTransportFactory {
        @Override // com.google.api.client.auth.openidconnect.HttpTransportFactory
        public HttpTransport create() {
            return IdTokenVerifier.HTTP_TRANSPORT;
        }
    }

    public IdTokenVerifier(Builder builder) {
        this.certificatesLocation = builder.certificatesLocation;
        this.clock = builder.clock;
        this.acceptableTimeSkewSeconds = builder.acceptableTimeSkewSeconds;
        Collection<String> collection = builder.issuers;
        this.issuers = collection == null ? null : Collections.unmodifiableCollection(collection);
        Collection<String> collection2 = builder.audience;
        this.audience = collection2 != null ? Collections.unmodifiableCollection(collection2) : null;
        HttpTransportFactory defaultHttpTransportFactory = builder.httpTransportFactory;
        defaultHttpTransportFactory = defaultHttpTransportFactory == null ? new DefaultHttpTransportFactory() : defaultHttpTransportFactory;
        o00 o00Var = new o00(0);
        o00Var.b = 3600000000000L;
        this.publicKeyCache = new g62(o00Var, new PublicKeyLoader(defaultHttpTransportFactory));
        Environment environment = builder.environment;
        this.environment = environment == null ? new Environment() : environment;
    }

    private String getCertificateLocation(JsonWebSignature.Header header) throws VerificationException {
        String str = this.certificatesLocation;
        if (str != null) {
            return str;
        }
        String algorithm = header.getAlgorithm();
        algorithm.getClass();
        if (algorithm.equals("ES256")) {
            return IAP_CERT_URL;
        }
        if (algorithm.equals("RS256")) {
            return FEDERATED_SIGNON_CERT_URL;
        }
        throw new VerificationException(di0.v("Unexpected signing algorithm ", header.getAlgorithm(), ": expected either RS256 or ES256"));
    }

    public final long getAcceptableTimeSkewSeconds() {
        return this.acceptableTimeSkewSeconds;
    }

    public final Collection<String> getAudience() {
        return this.audience;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final String getIssuer() {
        Collection<String> collection = this.issuers;
        if (collection == null) {
            return null;
        }
        return collection.iterator().next();
    }

    public final Collection<String> getIssuers() {
        return this.issuers;
    }

    @Deprecated
    public boolean verify(IdToken idToken) {
        try {
            return verifyOrThrow(idToken);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, e.getMessage(), (Throwable) e);
            return false;
        }
    }

    public boolean verifyOrThrow(IdToken idToken) {
        if (!verifyPayload(idToken)) {
            return false;
        }
        try {
            return verifySignature(idToken);
        } catch (VerificationException e) {
            LOGGER.log(Level.INFO, "Id token signature verification failed. ", (Throwable) e);
            return false;
        }
    }

    public boolean verifyPayload(IdToken idToken) {
        Collection<String> collection = this.issuers;
        if (collection != null && !idToken.verifyIssuer(collection)) {
            return false;
        }
        Collection<String> collection2 = this.audience;
        return (collection2 == null || idToken.verifyAudience(collection2)) && idToken.verifyTime(this.clock.currentTimeMillis(), this.acceptableTimeSkewSeconds);
    }

    public boolean verifySignature(IdToken idToken) throws IOException, VerificationException {
        if (Boolean.parseBoolean(this.environment.getVariable(SKIP_SIGNATURE_ENV_VAR))) {
            return true;
        }
        if (!SUPPORTED_ALGORITHMS.contains(idToken.getHeader().getAlgorithm())) {
            throw new VerificationException(di0.v("Unexpected signing algorithm ", idToken.getHeader().getAlgorithm(), ": expected either RS256 or ES256"));
        }
        try {
            PublicKey publicKey = (PublicKey) ((Map) ((g62) this.publicKeyCache).a(getCertificateLocation(idToken.getHeader()))).get(idToken.getHeader().getKeyId());
            if (publicKey == null) {
                p61.r(idToken.getHeader().getKeyId(), "Could not find public key for provided keyId: ");
                return false;
            }
            try {
                if (idToken.verifySignature(publicKey)) {
                    return true;
                }
                throw new VerificationException("Invalid signature");
            } catch (GeneralSecurityException e) {
                throw new VerificationException("Error validating token", e);
            }
        } catch (ExecutionException | k64 e2) {
            throw new IOException("Error fetching public key from certificate location " + this.certificatesLocation, e2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class VerificationException extends Exception {
        public VerificationException(String str) {
            super(str);
        }

        public VerificationException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class PublicKeyLoader extends x00 {
        private static final int DEFAULT_NUMBER_OF_RETRIES = 2;
        private static final int INITIAL_RETRY_INTERVAL_MILLIS = 1000;
        private static final double RETRY_MULTIPLIER = 2.0d;
        private static final double RETRY_RANDOMIZATION_FACTOR = 0.1d;
        private final HttpTransportFactory httpTransportFactory;

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public static class JsonWebKey {

            @Key
            public String alg;

            @Key
            public String crv;

            @Key
            public String e;

            @Key
            public String kid;

            @Key
            public String kty;

            @Key
            public String n;

            @Key
            public String use;

            @Key
            public String x;

            @Key
            public String y;
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public static class JsonWebKeySet extends GenericJson {

            @Key
            public List<JsonWebKey> keys;
        }

        public PublicKeyLoader(HttpTransportFactory httpTransportFactory) {
            this.httpTransportFactory = httpTransportFactory;
        }

        private PublicKey buildEs256PublicKey(JsonWebKey jsonWebKey) throws NoSuchAlgorithmException, InvalidParameterSpecException {
            n44.U("EC".equals(jsonWebKey.kty));
            n44.U("P-256".equals(jsonWebKey.crv));
            ECPoint eCPoint = new ECPoint(new BigInteger(1, Base64.decodeBase64(jsonWebKey.x)), new BigInteger(1, Base64.decodeBase64(jsonWebKey.y)));
            AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("EC");
            algorithmParameters.init(new ECGenParameterSpec("secp256r1"));
            return KeyFactory.getInstance("EC").generatePublic(new ECPublicKeySpec(eCPoint, (ECParameterSpec) algorithmParameters.getParameterSpec(ECParameterSpec.class)));
        }

        private PublicKey buildPublicKey(JsonWebKey jsonWebKey) {
            if ("ES256".equals(jsonWebKey.alg)) {
                return buildEs256PublicKey(jsonWebKey);
            }
            if ("RS256".equals(jsonWebKey.alg)) {
                return buildRs256PublicKey(jsonWebKey);
            }
            return null;
        }

        private PublicKey buildRs256PublicKey(JsonWebKey jsonWebKey) {
            n44.U("RSA".equals(jsonWebKey.kty));
            jsonWebKey.e.getClass();
            jsonWebKey.n.getClass();
            return KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(1, Base64.decodeBase64(jsonWebKey.n)), new BigInteger(1, Base64.decodeBase64(jsonWebKey.e))));
        }

        @Override // defpackage.x00
        public Map<String, PublicKey> load(String str) throws IOException, VerificationException {
            try {
                HttpRequest parser = this.httpTransportFactory.create().createRequestFactory().buildGetRequest(new GenericUrl(str)).setParser(GsonFactory.getDefaultInstance().createJsonObjectParser());
                parser.setNumberOfRetries(2);
                parser.setUnsuccessfulResponseHandler(new HttpBackOffUnsuccessfulResponseHandler(new ExponentialBackOff.Builder().setInitialIntervalMillis(INITIAL_RETRY_INTERVAL_MILLIS).setRandomizationFactor(RETRY_RANDOMIZATION_FACTOR).setMultiplier(RETRY_MULTIPLIER).build()).setBackOffRequired(HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.ALWAYS));
                JsonWebKeySet jsonWebKeySet = (JsonWebKeySet) parser.execute().parseAs(JsonWebKeySet.class);
                hb hbVar = new hb(4);
                List<JsonWebKey> list = jsonWebKeySet.keys;
                if (list == null) {
                    for (String str2 : jsonWebKeySet.keySet()) {
                        hbVar.h(str2, buildPublicKey((String) jsonWebKeySet.get(str2)));
                    }
                } else {
                    for (JsonWebKey jsonWebKey : list) {
                        try {
                            hbVar.h(jsonWebKey.kid, buildPublicKey(jsonWebKey));
                        } catch (NoSuchAlgorithmException | InvalidKeySpecException | InvalidParameterSpecException e) {
                            IdTokenVerifier.LOGGER.log(Level.WARNING, "Failed to put a key into the cache", e);
                        }
                    }
                }
                e53 e53VarB = hbVar.b(true);
                if (e53VarB.isEmpty()) {
                    throw new VerificationException(di0.u("No valid public key returned by the keystore: ", str));
                }
                return e53VarB;
            } catch (IOException e2) {
                IdTokenVerifier.LOGGER.log(Level.WARNING, "Failed to get a certificate from certificate location " + str, (Throwable) e2);
                throw e2;
            }
        }

        private PublicKey buildPublicKey(String str) {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(str.getBytes("UTF-8"))).getPublicKey();
        }
    }

    public IdTokenVerifier() {
        this(new Builder());
    }
}
