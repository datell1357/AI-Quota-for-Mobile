package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class c1 extends s60 {
    private iq backoffManager;
    private g60 connManager;
    private xd0 connectionBackoffStrategy;
    private th0 cookieStore;
    private zk0 credsProvider;
    private km1 defaultParams;
    private be0 keepAliveStrategy;
    private final Log log = LogFactory.getLog(getClass());
    private yu mutableProcessor;
    private fp1 protocolProcessor;
    private yj proxyAuthStrategy;
    private r33 redirectStrategy;
    private qm1 requestExec;
    private sm1 retryHandler;
    private ie0 reuseStrategy;
    private zm1 routePlanner;
    private rj supportedAuthSchemes;
    private sh0 supportedCookieSpecs;
    private yj targetAuthStrategy;
    private d94 userTokenHandler;

    public c1(qy3 qy3Var, km1 km1Var) {
        this.defaultParams = km1Var;
        this.connManager = qy3Var;
    }

    public synchronized void addRequestInterceptor(rm1 rm1Var, int i) {
        yu httpProcessor = getHttpProcessor();
        if (rm1Var == null) {
            httpProcessor.getClass();
        } else {
            httpProcessor.n.add(i, rm1Var);
        }
        this.protocolProcessor = null;
    }

    public synchronized void addResponseInterceptor(wm1 wm1Var) {
        yu httpProcessor = getHttpProcessor();
        if (wm1Var == null) {
            httpProcessor.getClass();
        } else {
            httpProcessor.o.add(wm1Var);
        }
        this.protocolProcessor = null;
    }

    public synchronized void clearRequestInterceptors() {
        getHttpProcessor().n.clear();
        this.protocolProcessor = null;
    }

    public synchronized void clearResponseInterceptors() {
        getHttpProcessor().o.clear();
        this.protocolProcessor = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        getConnectionManager().shutdown();
    }

    public rj createAuthSchemeRegistry() {
        rj rjVar = new rj();
        rjVar.c("Basic", new jv(0));
        rjVar.c("Digest", new jv(1));
        rjVar.c("NTLM", new jv(3));
        rjVar.c("Negotiate", new jv(4));
        rjVar.c("Kerberos", new jv(2));
        return rjVar;
    }

    public g60 createClientConnectionManager() {
        je3 je3Var = new je3();
        je3Var.b(new fe3("http", 80, new qz0(17)));
        je3Var.b(new fe3("https", 443, rb3.getSocketFactory()));
        String str = (String) getParams().c("http.connection-manager.factory-class-name");
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (str != null) {
            try {
                if ((contextClassLoader != null ? Class.forName(str, true, contextClassLoader) : Class.forName(str)).newInstance() != null) {
                    throw new ClassCastException();
                }
            } catch (ClassNotFoundException unused) {
                k21.n("Invalid class name: ".concat(str));
                return null;
            } catch (IllegalAccessException e) {
                throw new IllegalAccessError(e.getMessage());
            } catch (InstantiationException e2) {
                throw new InstantiationError(e2.getMessage());
            }
        }
        return new iu(je3Var);
    }

    public y63 createClientRequestDirector(qm1 qm1Var, g60 g60Var, ie0 ie0Var, be0 be0Var, zm1 zm1Var, nm1 nm1Var, sm1 sm1Var, r33 r33Var, yj yjVar, yj yjVar2, d94 d94Var, km1 km1Var) {
        return new xp0(this.log, qm1Var, g60Var, ie0Var, be0Var, zm1Var, nm1Var, sm1Var, r33Var, yjVar, yjVar2, d94Var, km1Var);
    }

    public be0 createConnectionKeepAliveStrategy() {
        return new mj1(7);
    }

    public ie0 createConnectionReuseStrategy() {
        return new bx3(25);
    }

    public sh0 createCookieSpecRegistry() {
        sh0 sh0Var = new sh0();
        sh0Var.b("default", new yv(0));
        sh0Var.b("best-match", new yv(0));
        sh0Var.b("compatibility", new yv(1));
        sh0Var.b("netscape", new yv(2));
        sh0Var.b("rfc2109", new yv(3));
        sh0Var.b("rfc2965", new yv(4));
        sh0Var.b("ignoreCookies", new xn1());
        return sh0Var;
    }

    public th0 createCookieStore() {
        return new mu();
    }

    public zk0 createCredentialsProvider() {
        return new nu();
    }

    public ul1 createHttpContext() {
        vu vuVar = new vu();
        vuVar.z(getConnectionManager().d(), "http.scheme-registry");
        vuVar.z(getAuthSchemes(), "http.authscheme-registry");
        vuVar.z(getCookieSpecs(), "http.cookiespec-registry");
        vuVar.z(getCookieStore(), "http.cookie-store");
        vuVar.z(getCredentialsProvider(), "http.auth.credentials-provider");
        return vuVar;
    }

    public abstract km1 createHttpParams();

    public abstract yu createHttpProcessor();

    public sm1 createHttpRequestRetryHandler() {
        return new cp0(3);
    }

    public zm1 createHttpRoutePlanner() {
        je3 je3VarD = getConnectionManager().d();
        dh1 dh1Var = new dh1();
        w80.L(je3VarD, "Scheme registry");
        dh1Var.n = je3VarD;
        return dh1Var;
    }

    @Deprecated
    public xj createProxyAuthenticationHandler() {
        return new up0(0);
    }

    public yj createProxyAuthenticationStrategy() {
        return new o03();
    }

    @Deprecated
    public p33 createRedirectHandler() {
        return new vp0();
    }

    public qm1 createRequestExecutor() {
        return new qm1();
    }

    @Deprecated
    public xj createTargetAuthenticationHandler() {
        return new up0(1);
    }

    public yj createTargetAuthenticationStrategy() {
        return new kw3();
    }

    public d94 createUserTokenHandler() {
        return new mj1(9);
    }

    public km1 determineParams(om1 om1Var) {
        return new n60(getParams(), om1Var.getParams());
    }

    @Override // defpackage.s60
    public final t60 doExecute(em1 em1Var, om1 om1Var, ul1 ul1Var) throws o60 {
        ul1 wq0Var;
        y63 y63VarCreateClientRequestDirector;
        w80.L(om1Var, "HTTP request");
        synchronized (this) {
            ul1 ul1VarCreateHttpContext = createHttpContext();
            wq0Var = ul1Var == null ? ul1VarCreateHttpContext : new wq0(ul1Var, ul1VarCreateHttpContext);
            km1 km1VarDetermineParams = determineParams(om1Var);
            wq0Var.z(dm0.x(km1VarDetermineParams, v63.D), "http.request-config");
            y63VarCreateClientRequestDirector = createClientRequestDirector(getRequestExecutor(), getConnectionManager(), getConnectionReuseStrategy(), getConnectionKeepAliveStrategy(), getRoutePlanner(), j(), getHttpRequestRetryHandler(), getRedirectStrategy(), getTargetAuthenticationStrategy(), getProxyAuthenticationStrategy(), getUserTokenHandler(), km1VarDetermineParams);
            getRoutePlanner();
            getConnectionBackoffStrategy();
            getBackoffManager();
        }
        try {
            return u60.a(y63VarCreateClientRequestDirector.execute(em1Var, om1Var, wq0Var));
        } catch (cm1 e) {
            throw new o60(e);
        }
    }

    public final synchronized rj getAuthSchemes() {
        try {
            if (this.supportedAuthSchemes == null) {
                this.supportedAuthSchemes = createAuthSchemeRegistry();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.supportedAuthSchemes;
    }

    public final synchronized iq getBackoffManager() {
        return null;
    }

    public final synchronized xd0 getConnectionBackoffStrategy() {
        return null;
    }

    public final synchronized be0 getConnectionKeepAliveStrategy() {
        try {
            if (this.keepAliveStrategy == null) {
                this.keepAliveStrategy = createConnectionKeepAliveStrategy();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.keepAliveStrategy;
    }

    @Override // defpackage.nl1
    public final synchronized g60 getConnectionManager() {
        try {
            if (this.connManager == null) {
                this.connManager = createClientConnectionManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.connManager;
    }

    public final synchronized ie0 getConnectionReuseStrategy() {
        try {
            if (this.reuseStrategy == null) {
                this.reuseStrategy = createConnectionReuseStrategy();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.reuseStrategy;
    }

    public final synchronized sh0 getCookieSpecs() {
        try {
            if (this.supportedCookieSpecs == null) {
                this.supportedCookieSpecs = createCookieSpecRegistry();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.supportedCookieSpecs;
    }

    public final synchronized th0 getCookieStore() {
        try {
            if (this.cookieStore == null) {
                this.cookieStore = createCookieStore();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.cookieStore;
    }

    public final synchronized zk0 getCredentialsProvider() {
        try {
            if (this.credsProvider == null) {
                this.credsProvider = createCredentialsProvider();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.credsProvider;
    }

    public final synchronized yu getHttpProcessor() {
        try {
            if (this.mutableProcessor == null) {
                this.mutableProcessor = createHttpProcessor();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mutableProcessor;
    }

    public final synchronized sm1 getHttpRequestRetryHandler() {
        try {
            if (this.retryHandler == null) {
                this.retryHandler = createHttpRequestRetryHandler();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.retryHandler;
    }

    @Override // defpackage.nl1
    public final synchronized km1 getParams() {
        try {
            if (this.defaultParams == null) {
                this.defaultParams = createHttpParams();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.defaultParams;
    }

    @Deprecated
    public final synchronized xj getProxyAuthenticationHandler() {
        return createProxyAuthenticationHandler();
    }

    public final synchronized yj getProxyAuthenticationStrategy() {
        try {
            if (this.proxyAuthStrategy == null) {
                this.proxyAuthStrategy = createProxyAuthenticationStrategy();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.proxyAuthStrategy;
    }

    @Deprecated
    public final synchronized p33 getRedirectHandler() {
        return createRedirectHandler();
    }

    public final synchronized r33 getRedirectStrategy() {
        try {
            if (this.redirectStrategy == null) {
                this.redirectStrategy = new wp0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.redirectStrategy;
    }

    public final synchronized qm1 getRequestExecutor() {
        try {
            if (this.requestExec == null) {
                this.requestExec = createRequestExecutor();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.requestExec;
    }

    public synchronized rm1 getRequestInterceptor(int i) {
        ArrayList arrayList;
        arrayList = getHttpProcessor().n;
        return (i < 0 || i >= arrayList.size()) ? null : (rm1) arrayList.get(i);
    }

    public synchronized int getRequestInterceptorCount() {
        return getHttpProcessor().n.size();
    }

    public synchronized wm1 getResponseInterceptor(int i) {
        ArrayList arrayList;
        arrayList = getHttpProcessor().o;
        return (i < 0 || i >= arrayList.size()) ? null : (wm1) arrayList.get(i);
    }

    public synchronized int getResponseInterceptorCount() {
        return getHttpProcessor().o.size();
    }

    public final synchronized zm1 getRoutePlanner() {
        try {
            if (this.routePlanner == null) {
                this.routePlanner = createHttpRoutePlanner();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.routePlanner;
    }

    @Deprecated
    public final synchronized xj getTargetAuthenticationHandler() {
        return createTargetAuthenticationHandler();
    }

    public final synchronized yj getTargetAuthenticationStrategy() {
        try {
            if (this.targetAuthStrategy == null) {
                this.targetAuthStrategy = createTargetAuthenticationStrategy();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.targetAuthStrategy;
    }

    public final synchronized d94 getUserTokenHandler() {
        try {
            if (this.userTokenHandler == null) {
                this.userTokenHandler = createUserTokenHandler();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.userTokenHandler;
    }

    public final synchronized fp1 j() {
        try {
            if (this.protocolProcessor == null) {
                yu httpProcessor = getHttpProcessor();
                int size = httpProcessor.n.size();
                rm1[] rm1VarArr = new rm1[size];
                int i = 0;
                int i2 = 0;
                while (true) {
                    rm1 rm1Var = null;
                    if (i2 >= size) {
                        break;
                    }
                    ArrayList arrayList = httpProcessor.n;
                    if (i2 >= 0 && i2 < arrayList.size()) {
                        rm1Var = (rm1) arrayList.get(i2);
                    }
                    rm1VarArr[i2] = rm1Var;
                    i2++;
                }
                int size2 = httpProcessor.o.size();
                wm1[] wm1VarArr = new wm1[size2];
                while (i < size2) {
                    ArrayList arrayList2 = httpProcessor.o;
                    wm1VarArr[i] = (i < 0 || i >= arrayList2.size()) ? null : (wm1) arrayList2.get(i);
                    i++;
                }
                this.protocolProcessor = new fp1(rm1VarArr, wm1VarArr);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.protocolProcessor;
    }

    public synchronized void removeRequestInterceptorByClass(Class<? extends rm1> cls) {
        Iterator it = getHttpProcessor().n.iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                it.remove();
            }
        }
        this.protocolProcessor = null;
    }

    public synchronized void removeResponseInterceptorByClass(Class<? extends wm1> cls) {
        Iterator it = getHttpProcessor().o.iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                it.remove();
            }
        }
        this.protocolProcessor = null;
    }

    public synchronized void setAuthSchemes(rj rjVar) {
        this.supportedAuthSchemes = rjVar;
    }

    public synchronized void setBackoffManager(iq iqVar) {
    }

    public synchronized void setConnectionBackoffStrategy(xd0 xd0Var) {
    }

    public synchronized void setCookieSpecs(sh0 sh0Var) {
        this.supportedCookieSpecs = sh0Var;
    }

    public synchronized void setCookieStore(th0 th0Var) {
        this.cookieStore = th0Var;
    }

    public synchronized void setCredentialsProvider(zk0 zk0Var) {
        this.credsProvider = zk0Var;
    }

    public synchronized void setHttpRequestRetryHandler(sm1 sm1Var) {
        this.retryHandler = sm1Var;
    }

    public synchronized void setKeepAliveStrategy(be0 be0Var) {
        this.keepAliveStrategy = be0Var;
    }

    public synchronized void setParams(km1 km1Var) {
        this.defaultParams = km1Var;
    }

    @Deprecated
    public synchronized void setProxyAuthenticationHandler(xj xjVar) {
        this.proxyAuthStrategy = new zj(xjVar);
    }

    public synchronized void setProxyAuthenticationStrategy(yj yjVar) {
        this.proxyAuthStrategy = yjVar;
    }

    @Deprecated
    public synchronized void setRedirectHandler(p33 p33Var) {
        this.redirectStrategy = new dh1(p33Var);
    }

    public synchronized void setRedirectStrategy(r33 r33Var) {
        this.redirectStrategy = r33Var;
    }

    public synchronized void setReuseStrategy(ie0 ie0Var) {
        this.reuseStrategy = ie0Var;
    }

    public synchronized void setRoutePlanner(zm1 zm1Var) {
        this.routePlanner = zm1Var;
    }

    @Deprecated
    public synchronized void setTargetAuthenticationHandler(xj xjVar) {
        this.targetAuthStrategy = new zj(xjVar);
    }

    public synchronized void setTargetAuthenticationStrategy(yj yjVar) {
        this.targetAuthStrategy = yjVar;
    }

    public synchronized void setUserTokenHandler(d94 d94Var) {
        this.userTokenHandler = d94Var;
    }

    public synchronized void addRequestInterceptor(rm1 rm1Var) {
        getHttpProcessor().c(rm1Var);
        this.protocolProcessor = null;
    }

    public synchronized void addResponseInterceptor(wm1 wm1Var, int i) {
        yu httpProcessor = getHttpProcessor();
        if (wm1Var == null) {
            httpProcessor.getClass();
        } else {
            httpProcessor.o.add(i, wm1Var);
        }
        this.protocolProcessor = null;
    }

    @Deprecated
    public y63 createClientRequestDirector(qm1 qm1Var, g60 g60Var, ie0 ie0Var, be0 be0Var, zm1 zm1Var, nm1 nm1Var, sm1 sm1Var, r33 r33Var, xj xjVar, xj xjVar2, d94 d94Var, km1 km1Var) {
        return new xp0(qm1Var, g60Var, ie0Var, be0Var, zm1Var, nm1Var, sm1Var, r33Var, xjVar, xjVar2, d94Var, km1Var);
    }
}
