package com.google.api.client.util;

import com.google.api.client.util.PemReader;
import defpackage.k21;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class SecurityUtils {
    private SecurityUtils() {
    }

    public static KeyStore createMtlsKeyStore(InputStream inputStream) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        KeyStore keyStore = KeyStore.getInstance("JKS");
        keyStore.load(null);
        PemReader pemReader = new PemReader(new InputStreamReader(inputStream));
        PemReader.Section section = null;
        PemReader.Section section2 = null;
        while (true) {
            if (section != null && section2 != null) {
                break;
            }
            PemReader.Section nextSection = pemReader.readNextSection();
            if (nextSection == null) {
                break;
            }
            if (section == null && "CERTIFICATE".equals(nextSection.getTitle())) {
                section = nextSection;
            } else if ("PRIVATE KEY".equals(nextSection.getTitle())) {
                section2 = nextSection;
            }
        }
        if (section == null) {
            k21.f("certificate is missing from certAndKey string");
            return null;
        }
        if (section2 == null) {
            k21.f("private key is missing from certAndKey string");
            return null;
        }
        X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(section.getBase64DecodedBytes()));
        keyStore.setKeyEntry("alias", KeyFactory.getInstance(x509Certificate.getPublicKey().getAlgorithm()).generatePrivate(new PKCS8EncodedKeySpec(section2.getBase64DecodedBytes())), new char[0], new X509Certificate[]{x509Certificate});
        return keyStore;
    }

    public static KeyStore getDefaultKeyStore() {
        return KeyStore.getInstance(KeyStore.getDefaultType());
    }

    public static Signature getEs256SignatureAlgorithm() {
        return Signature.getInstance("SHA256withECDSA");
    }

    public static KeyStore getJavaKeyStore() {
        return KeyStore.getInstance("JKS");
    }

    public static KeyStore getPkcs12KeyStore() {
        return KeyStore.getInstance("PKCS12");
    }

    public static PrivateKey getPrivateKey(KeyStore keyStore, String str, String str2) {
        return (PrivateKey) keyStore.getKey(str, str2.toCharArray());
    }

    public static KeyFactory getRsaKeyFactory() {
        return KeyFactory.getInstance("RSA");
    }

    public static Signature getSha1WithRsaSignatureAlgorithm() {
        return Signature.getInstance("SHA1withRSA");
    }

    public static Signature getSha256WithRsaSignatureAlgorithm() {
        return Signature.getInstance("SHA256withRSA");
    }

    public static CertificateFactory getX509CertificateFactory() {
        return CertificateFactory.getInstance("X.509");
    }

    public static void loadKeyStore(KeyStore keyStore, InputStream inputStream, String str) throws IOException {
        try {
            keyStore.load(inputStream, str.toCharArray());
        } finally {
            inputStream.close();
        }
    }

    public static void loadKeyStoreFromCertificates(KeyStore keyStore, CertificateFactory certificateFactory, InputStream inputStream) throws KeyStoreException {
        Iterator<? extends Certificate> it = certificateFactory.generateCertificates(inputStream).iterator();
        int i = 0;
        while (it.hasNext()) {
            keyStore.setCertificateEntry(String.valueOf(i), it.next());
            i++;
        }
    }

    public static PrivateKey loadPrivateKeyFromKeyStore(KeyStore keyStore, InputStream inputStream, String str, String str2, String str3) throws IOException {
        loadKeyStore(keyStore, inputStream, str);
        return getPrivateKey(keyStore, str2, str3);
    }

    public static byte[] sign(Signature signature, PrivateKey privateKey, byte[] bArr) throws SignatureException, InvalidKeyException {
        signature.initSign(privateKey);
        signature.update(bArr);
        return signature.sign();
    }

    public static X509Certificate verify(Signature signature, X509TrustManager x509TrustManager, List<String> list, byte[] bArr, byte[] bArr2) {
        try {
            CertificateFactory x509CertificateFactory = getX509CertificateFactory();
            X509Certificate[] x509CertificateArr = new X509Certificate[list.size()];
            Iterator<String> it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                try {
                    Certificate certificateGenerateCertificate = x509CertificateFactory.generateCertificate(new ByteArrayInputStream(Base64.decodeBase64(it.next())));
                    if (!(certificateGenerateCertificate instanceof X509Certificate)) {
                        return null;
                    }
                    int i2 = i + 1;
                    x509CertificateArr[i] = (X509Certificate) certificateGenerateCertificate;
                    i = i2;
                } catch (CertificateException unused) {
                    return null;
                }
            }
            x509TrustManager.checkServerTrusted(x509CertificateArr, "RSA");
            if (verify(signature, x509CertificateArr[0].getPublicKey(), bArr, bArr2)) {
                return x509CertificateArr[0];
            }
        } catch (CertificateException unused2) {
        }
        return null;
    }

    public static boolean verify(Signature signature, PublicKey publicKey, byte[] bArr, byte[] bArr2) throws SignatureException, InvalidKeyException {
        signature.initVerify(publicKey);
        signature.update(bArr2);
        try {
            return signature.verify(bArr);
        } catch (SignatureException unused) {
            return false;
        }
    }
}
