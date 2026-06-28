package defpackage;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sv3 extends bx3 {
    public final ProxySelector t;

    public sv3(mj1 mj1Var, ProxySelector proxySelector) {
        super(mj1Var);
        this.t = proxySelector;
    }

    @Override // defpackage.bx3
    public final em1 n(em1 em1Var) throws cm1 {
        try {
            URI uri = new URI(em1Var.b());
            ProxySelector proxySelector = this.t;
            if (proxySelector == null) {
                proxySelector = ProxySelector.getDefault();
            }
            if (proxySelector != null) {
                List<Proxy> listSelect = proxySelector.select(uri);
                Proxy proxy = null;
                for (int i = 0; proxy == null && i < listSelect.size(); i++) {
                    Proxy proxy2 = listSelect.get(i);
                    int i2 = rv3.a[proxy2.type().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        proxy = proxy2;
                    }
                }
                if (proxy == null) {
                    proxy = Proxy.NO_PROXY;
                }
                if (proxy.type() == Proxy.Type.HTTP) {
                    if (proxy.address() instanceof InetSocketAddress) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                        return new em1(inetSocketAddress.isUnresolved() ? inetSocketAddress.getHostName() : inetSocketAddress.getAddress().getHostAddress(), inetSocketAddress.getPort(), null);
                    }
                    throw new cm1(cm1.a("Unable to handle non-Inet proxy address: " + proxy.address()));
                }
            }
            return null;
        } catch (URISyntaxException e) {
            throw new cm1("Cannot convert host to URI: " + em1Var, e);
        }
    }
}
