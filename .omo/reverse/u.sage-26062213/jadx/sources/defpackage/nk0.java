package defpackage;

import android.util.Base64;
import android.util.JsonReader;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nk0 {
    public static final dd1 a;

    static {
        tv1 tv1Var = new tv1();
        uk ukVar = uk.a;
        tv1Var.a(kk0.class, ukVar);
        tv1Var.a(om.class, ukVar);
        al alVar = al.a;
        tv1Var.a(jk0.class, alVar);
        tv1Var.a(xm.class, alVar);
        xk xkVar = xk.a;
        tv1Var.a(rj0.class, xkVar);
        tv1Var.a(ym.class, xkVar);
        yk ykVar = yk.a;
        tv1Var.a(qj0.class, ykVar);
        tv1Var.a(zm.class, ykVar);
        ql qlVar = ql.a;
        tv1Var.a(ik0.class, qlVar);
        tv1Var.a(xn.class, qlVar);
        pl plVar = pl.a;
        tv1Var.a(hk0.class, plVar);
        tv1Var.a(wn.class, plVar);
        zk zkVar = zk.a;
        tv1Var.a(sj0.class, zkVar);
        tv1Var.a(bn.class, zkVar);
        kl klVar = kl.a;
        tv1Var.a(gk0.class, klVar);
        tv1Var.a(dn.class, klVar);
        bl blVar = bl.a;
        tv1Var.a(ak0.class, blVar);
        tv1Var.a(en.class, blVar);
        dl dlVar = dl.a;
        tv1Var.a(yj0.class, dlVar);
        tv1Var.a(fn.class, dlVar);
        gl glVar = gl.a;
        tv1Var.a(xj0.class, glVar);
        tv1Var.a(jn.class, glVar);
        hl hlVar = hl.a;
        tv1Var.a(wj0.class, hlVar);
        tv1Var.a(ln.class, hlVar);
        el elVar = el.a;
        tv1Var.a(uj0.class, elVar);
        tv1Var.a(hn.class, elVar);
        sk skVar = sk.a;
        tv1Var.a(mj0.class, skVar);
        tv1Var.a(rm.class, skVar);
        rk rkVar = rk.a;
        tv1Var.a(lj0.class, rkVar);
        tv1Var.a(sm.class, rkVar);
        fl flVar = fl.a;
        tv1Var.a(vj0.class, flVar);
        tv1Var.a(in.class, flVar);
        cl clVar = cl.a;
        tv1Var.a(tj0.class, clVar);
        tv1Var.a(gn.class, clVar);
        tk tkVar = tk.a;
        tv1Var.a(nj0.class, tkVar);
        tv1Var.a(tm.class, tkVar);
        il ilVar = il.a;
        tv1Var.a(zj0.class, ilVar);
        tv1Var.a(nn.class, ilVar);
        jl jlVar = jl.a;
        tv1Var.a(bk0.class, jlVar);
        tv1Var.a(pn.class, jlVar);
        ll llVar = ll.a;
        tv1Var.a(ck0.class, llVar);
        tv1Var.a(qn.class, llVar);
        ol olVar = ol.a;
        tv1Var.a(fk0.class, olVar);
        tv1Var.a(un.class, olVar);
        ml mlVar = ml.a;
        tv1Var.a(ek0.class, mlVar);
        tv1Var.a(sn.class, mlVar);
        nl nlVar = nl.a;
        tv1Var.a(dk0.class, nlVar);
        tv1Var.a(tn.class, nlVar);
        vk vkVar = vk.a;
        tv1Var.a(pj0.class, vkVar);
        tv1Var.a(um.class, vkVar);
        wk wkVar = wk.a;
        tv1Var.a(oj0.class, wkVar);
        tv1Var.a(vm.class, wkVar);
        tv1Var.d = true;
        a = new dd1(3, tv1Var);
    }

    public static ln a(JsonReader jsonReader) throws IOException {
        kn knVar = new kn();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "offset":
                    knVar.d = jsonReader.nextLong();
                    knVar.f = (byte) (knVar.f | 2);
                    break;
                case "symbol":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        q73.r("Null symbol");
                        return null;
                    }
                    knVar.b = strNextString;
                    break;
                    break;
                case "pc":
                    knVar.a = jsonReader.nextLong();
                    knVar.f = (byte) (knVar.f | 1);
                    break;
                case "file":
                    knVar.c = jsonReader.nextString();
                    break;
                case "importance":
                    knVar.e = jsonReader.nextInt();
                    knVar.f = (byte) (knVar.f | 4);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return knVar.a();
    }

    public static tm b(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("key")) {
                strNextString = jsonReader.nextString();
                if (strNextString == null) {
                    q73.r("Null key");
                    return null;
                }
            } else if (strNextName.equals("value")) {
                strNextString2 = jsonReader.nextString();
                if (strNextString2 == null) {
                    q73.r("Null value");
                    return null;
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (strNextString != null && strNextString2 != null) {
            return new tm(strNextString, strNextString2);
        }
        StringBuilder sb = new StringBuilder();
        if (strNextString == null) {
            sb.append(" key");
        }
        if (strNextString2 == null) {
            sb.append(" value");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }

    public static rm c(JsonReader jsonReader) throws IOException {
        qm qmVar = new qm();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "buildIdMappingForArch":
                    qmVar.i = d(jsonReader, new mk0(0));
                    break;
                case "pid":
                    qmVar.a = jsonReader.nextInt();
                    qmVar.j = (byte) (qmVar.j | 1);
                    break;
                case "pss":
                    qmVar.e = jsonReader.nextLong();
                    qmVar.j = (byte) (qmVar.j | 8);
                    break;
                case "rss":
                    qmVar.f = jsonReader.nextLong();
                    qmVar.j = (byte) (qmVar.j | 16);
                    break;
                case "timestamp":
                    qmVar.g = jsonReader.nextLong();
                    qmVar.j = (byte) (qmVar.j | 32);
                    break;
                case "processName":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        q73.r("Null processName");
                        return null;
                    }
                    qmVar.b = strNextString;
                    break;
                    break;
                case "reasonCode":
                    qmVar.c = jsonReader.nextInt();
                    qmVar.j = (byte) (qmVar.j | 2);
                    break;
                case "traceFile":
                    qmVar.h = jsonReader.nextString();
                    break;
                case "importance":
                    qmVar.d = jsonReader.nextInt();
                    qmVar.j = (byte) (qmVar.j | 4);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return qmVar.a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x023d, code lost:
    
        r2 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0242, code lost:
    
        if (r3 != null) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0244, code lost:
    
        r2.append(" rolloutId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0249, code lost:
    
        if (r4 != null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x024b, code lost:
    
        r2.append(" variantId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0250, code lost:
    
        defpackage.k21.n(defpackage.di0.w("Missing required properties:", r2));
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List d(android.util.JsonReader r22, defpackage.mk0 r23) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nk0.d(android.util.JsonReader, mk0):java.util.List");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0282, code lost:
    
        r0 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0287, code lost:
    
        if (r6 != 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0289, code lost:
    
        r0.append(" name");
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x028e, code lost:
    
        if (r7 != 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0290, code lost:
    
        r0.append(" code");
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0297, code lost:
    
        if ((r4 & 1) != 0) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0299, code lost:
    
        r0.append(" address");
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x029e, code lost:
    
        defpackage.k21.n(defpackage.di0.w("Missing required properties:", r0));
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /* JADX WARN: Type inference failed for: r22v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r22v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r23v1, types: [hn] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Type inference failed for: r24v1, types: [mj0] */
    /* JADX WARN: Type inference failed for: r24v2, types: [rm] */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r25v1, types: [in] */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* JADX WARN: Type inference failed for: r26v6 */
    /* JADX WARN: Type inference failed for: r26v7 */
    /* JADX WARN: Type inference failed for: r26v8 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.dn e(android.util.JsonReader r29) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nk0.e(android.util.JsonReader):dn");
    }

    public static hn f(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        byte b = 0;
        int iNextInt = 0;
        String strNextString = null;
        String strNextString2 = null;
        List listD = null;
        hn hnVarF = null;
        while (true) {
            if (!jsonReader.hasNext()) {
                jsonReader.endObject();
                if (b == 1 && strNextString != null && listD != null) {
                    return new hn(strNextString, strNextString2, listD, hnVarF, iNextInt);
                }
                StringBuilder sb = new StringBuilder();
                if (strNextString == null) {
                    sb.append(" type");
                }
                if (listD == null) {
                    sb.append(" frames");
                }
                if ((b & 1) == 0) {
                    sb.append(" overflowCount");
                }
                k21.n(di0.w("Missing required properties:", sb));
                return null;
            }
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "frames":
                    listD = d(jsonReader, new mk0(5));
                    if (listD == null) {
                        q73.r("Null frames");
                        return null;
                    }
                    break;
                    break;
                case "reason":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "type":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        q73.r("Null type");
                        return null;
                    }
                    break;
                    break;
                case "causedBy":
                    hnVarF = f(jsonReader);
                    break;
                case "overflowCount":
                    iNextInt = jsonReader.nextInt();
                    b = (byte) (b | 1);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public static nn g(JsonReader jsonReader) throws IOException {
        mn mnVar = new mn();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "pid":
                    mnVar.b = jsonReader.nextInt();
                    mnVar.e = (byte) (mnVar.e | 1);
                    break;
                case "processName":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        q73.r("Null processName");
                        return null;
                    }
                    mnVar.a = strNextString;
                    break;
                    break;
                case "defaultProcess":
                    mnVar.d = jsonReader.nextBoolean();
                    mnVar.e = (byte) (mnVar.e | 4);
                    break;
                case "importance":
                    mnVar.c = jsonReader.nextInt();
                    mnVar.e = (byte) (mnVar.e | 2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return mnVar.a();
    }

    public static om h(JsonReader jsonReader) throws IOException {
        Charset charset = kk0.a;
        nm nmVar = new nm();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "ndkPayload":
                    jsonReader.beginObject();
                    List listD = null;
                    String strNextString = null;
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        if (strNextName2.equals("files")) {
                            listD = d(jsonReader, new mk0(1));
                            if (listD == null) {
                                q73.r("Null files");
                                return null;
                            }
                        } else if (strNextName2.equals("orgId")) {
                            strNextString = jsonReader.nextString();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (listD == null) {
                        k21.n("Missing required properties: files");
                        return null;
                    }
                    nmVar.k = new um(listD, strNextString);
                    continue;
                    break;
                    break;
                case "sdkVersion":
                    String strNextString2 = jsonReader.nextString();
                    if (strNextString2 == null) {
                        q73.r("Null sdkVersion");
                        return null;
                    }
                    nmVar.a = strNextString2;
                    break;
                    break;
                case "appQualitySessionId":
                    nmVar.g = jsonReader.nextString();
                    break;
                case "appExitInfo":
                    nmVar.l = c(jsonReader);
                    break;
                case "buildVersion":
                    String strNextString3 = jsonReader.nextString();
                    if (strNextString3 == null) {
                        q73.r("Null buildVersion");
                        return null;
                    }
                    nmVar.h = strNextString3;
                    break;
                    break;
                case "firebaseAuthenticationToken":
                    nmVar.f = jsonReader.nextString();
                    break;
                case "gmpAppId":
                    String strNextString4 = jsonReader.nextString();
                    if (strNextString4 == null) {
                        q73.r("Null gmpAppId");
                        return null;
                    }
                    nmVar.b = strNextString4;
                    break;
                    break;
                case "installationUuid":
                    String strNextString5 = jsonReader.nextString();
                    if (strNextString5 == null) {
                        q73.r("Null installationUuid");
                        return null;
                    }
                    nmVar.d = strNextString5;
                    break;
                    break;
                case "firebaseInstallationId":
                    nmVar.e = jsonReader.nextString();
                    break;
                case "platform":
                    nmVar.c = jsonReader.nextInt();
                    nmVar.m = (byte) (nmVar.m | 1);
                    break;
                case "displayVersion":
                    String strNextString6 = jsonReader.nextString();
                    if (strNextString6 == null) {
                        q73.r("Null displayVersion");
                        return null;
                    }
                    nmVar.i = strNextString6;
                    break;
                    break;
                case "session":
                    wm wmVar = new wm();
                    wmVar.f = false;
                    wmVar.m = (byte) (wmVar.m | 2);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        strNextName3.getClass();
                        switch (strNextName3) {
                            case "startedAt":
                                wmVar.d = jsonReader.nextLong();
                                wmVar.m = (byte) (wmVar.m | 1);
                                break;
                            case "appQualitySessionId":
                                wmVar.c = jsonReader.nextString();
                                break;
                            case "identifier":
                                wmVar.b = new String(Base64.decode(jsonReader.nextString(), 2), kk0.a);
                                break;
                            case "endedAt":
                                wmVar.e = Long.valueOf(jsonReader.nextLong());
                                break;
                            case "device":
                                an anVar = new an();
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    String strNextName4 = jsonReader.nextName();
                                    strNextName4.getClass();
                                    switch (strNextName4) {
                                        case "simulator":
                                            anVar.f = jsonReader.nextBoolean();
                                            anVar.j = (byte) (anVar.j | 16);
                                            break;
                                        case "manufacturer":
                                            String strNextString7 = jsonReader.nextString();
                                            if (strNextString7 == null) {
                                                q73.r("Null manufacturer");
                                                break;
                                            } else {
                                                anVar.h = strNextString7;
                                                break;
                                            }
                                            break;
                                        case "ram":
                                            anVar.d = jsonReader.nextLong();
                                            anVar.j = (byte) (anVar.j | 4);
                                            break;
                                        case "arch":
                                            anVar.a = jsonReader.nextInt();
                                            anVar.j = (byte) (anVar.j | 1);
                                            break;
                                        case "diskSpace":
                                            anVar.e = jsonReader.nextLong();
                                            anVar.j = (byte) (anVar.j | 8);
                                            break;
                                        case "cores":
                                            anVar.c = jsonReader.nextInt();
                                            anVar.j = (byte) (anVar.j | 2);
                                            break;
                                        case "model":
                                            String strNextString8 = jsonReader.nextString();
                                            if (strNextString8 == null) {
                                                q73.r("Null model");
                                                break;
                                            } else {
                                                anVar.b = strNextString8;
                                                break;
                                            }
                                            break;
                                        case "state":
                                            anVar.g = jsonReader.nextInt();
                                            anVar.j = (byte) (anVar.j | 32);
                                            break;
                                        case "modelClass":
                                            String strNextString9 = jsonReader.nextString();
                                            if (strNextString9 == null) {
                                                q73.r("Null modelClass");
                                                break;
                                            } else {
                                                anVar.i = strNextString9;
                                                break;
                                            }
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                wmVar.j = anVar.a();
                                break;
                            case "events":
                                ArrayList arrayList = new ArrayList();
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList.add(e(jsonReader));
                                }
                                jsonReader.endArray();
                                wmVar.k = Collections.unmodifiableList(arrayList);
                                break;
                            case "os":
                                vn vnVar = new vn();
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    String strNextName5 = jsonReader.nextName();
                                    strNextName5.getClass();
                                    switch (strNextName5) {
                                        case "buildVersion":
                                            String strNextString10 = jsonReader.nextString();
                                            if (strNextString10 == null) {
                                                q73.r("Null buildVersion");
                                                break;
                                            } else {
                                                vnVar.c = strNextString10;
                                                break;
                                            }
                                            break;
                                        case "jailbroken":
                                            vnVar.d = jsonReader.nextBoolean();
                                            vnVar.e = (byte) (vnVar.e | 2);
                                            break;
                                        case "version":
                                            String strNextString11 = jsonReader.nextString();
                                            if (strNextString11 == null) {
                                                q73.r("Null version");
                                                break;
                                            } else {
                                                vnVar.b = strNextString11;
                                                break;
                                            }
                                            break;
                                        case "platform":
                                            vnVar.a = jsonReader.nextInt();
                                            vnVar.e = (byte) (vnVar.e | 1);
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                wmVar.i = vnVar.a();
                                break;
                            case "app":
                                jsonReader.beginObject();
                                String strNextString12 = null;
                                String strNextString13 = null;
                                String strNextString14 = null;
                                String strNextString15 = null;
                                String strNextString16 = null;
                                String strNextString17 = null;
                                while (jsonReader.hasNext()) {
                                    String strNextName6 = jsonReader.nextName();
                                    strNextName6.getClass();
                                    switch (strNextName6) {
                                        case "identifier":
                                            strNextString17 = jsonReader.nextString();
                                            if (strNextString17 == null) {
                                                q73.r("Null identifier");
                                                break;
                                            } else {
                                                break;
                                            }
                                            break;
                                        case "developmentPlatform":
                                            strNextString15 = jsonReader.nextString();
                                            break;
                                        case "developmentPlatformVersion":
                                            strNextString16 = jsonReader.nextString();
                                            break;
                                        case "version":
                                            strNextString12 = jsonReader.nextString();
                                            if (strNextString12 == null) {
                                                q73.r("Null version");
                                                break;
                                            } else {
                                                break;
                                            }
                                            break;
                                        case "installationUuid":
                                            strNextString14 = jsonReader.nextString();
                                            break;
                                        case "displayVersion":
                                            strNextString13 = jsonReader.nextString();
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                if (strNextString17 != null && strNextString12 != null) {
                                    wmVar.g = new ym(strNextString17, strNextString12, strNextString13, strNextString14, strNextString15, strNextString16);
                                    break;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    if (strNextString17 == null) {
                                        sb.append(" identifier");
                                    }
                                    if (strNextString12 == null) {
                                        sb.append(" version");
                                    }
                                    k21.n(di0.w("Missing required properties:", sb));
                                    break;
                                }
                                break;
                            case "user":
                                jsonReader.beginObject();
                                String strNextString18 = null;
                                while (jsonReader.hasNext()) {
                                    if (jsonReader.nextName().equals("identifier")) {
                                        strNextString18 = jsonReader.nextString();
                                        if (strNextString18 == null) {
                                            q73.r("Null identifier");
                                            break;
                                        }
                                    } else {
                                        jsonReader.skipValue();
                                    }
                                }
                                jsonReader.endObject();
                                if (strNextString18 == null) {
                                    k21.n("Missing required properties: identifier");
                                    break;
                                } else {
                                    wmVar.h = new xn(strNextString18);
                                    break;
                                }
                                break;
                            case "generator":
                                String strNextString19 = jsonReader.nextString();
                                if (strNextString19 == null) {
                                    q73.r("Null generator");
                                    break;
                                } else {
                                    wmVar.a = strNextString19;
                                    break;
                                }
                                break;
                            case "crashed":
                                wmVar.f = jsonReader.nextBoolean();
                                wmVar.m = (byte) (wmVar.m | 2);
                                break;
                            case "generatorType":
                                wmVar.l = jsonReader.nextInt();
                                wmVar.m = (byte) (wmVar.m | 4);
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                        return null;
                    }
                    jsonReader.endObject();
                    nmVar.j = wmVar.a();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return nmVar.a();
    }

    public static om i(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                om omVarH = h(jsonReader);
                jsonReader.close();
                return omVarH;
            } finally {
            }
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }
}
